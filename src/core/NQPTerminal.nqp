my class NQPTerminal {
    has $!printing;

    method new() {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, NQPTerminal, '$!printing', NQPLock.new);
        $obj
    }

    sub nums(*@n) {
        # trim trailing nils?
        my $str := "";
        for @n {
            $str := $str ~ ($_ // '') ~ ';';
        }
        $str
    }

    method print-or-buffer($str) {
        $!printing.protect({ print($str) })
    }

    method csi($str) { self.print-or-buffer(nqp::concat("\e[", $str)) }
    #| Clear the screen.
    method clear-screen() { self.csi("H\e[J") }
    #| Move the cursor to line, column.
    method move-to($l,$c = 1) { self.csi(nums($l,$c) ~ "H") }
    #| Move to home (0,0).
    method home() { self.csi('H') }
    #| Hide the cursor.
    method hide-cursor() { self.csi('?25l') }
    #| Show the cursor.
    method show-cursor() { self.csi("?25h") }
    #| Save screen state (smcup).
    method save-screen() { self.csi('?1049h') }
    #| Restore screen (rmcup).
    method restore-screen() { self.csi('?1049l') }
    #| Turn off cursor (civis).
    method cursor-off() { self.csi('?25l') }
    #| Turn on cursor (cnorm).
    method cursor-on() { self.csi('?25h') }
    #| Move cursor up.
    method cursor-up($amt = 1) { self.csi($amt ~ 'A') }
    #| Move cursor down.
    method cursor-down($amt = 1) { self.csi($amt ~ 'B') }
    #| Move cursor right.
    method cursor-right($amt = 1) { self.csi($amt ~ 'C') }
    #| Move cursor left.
    method cursor-left($amt = 1) { self.csi($amt ~ 'D') }
    #| Move cursor to the beginning of the next line, n lines down.
    method cursor-next-line($n = 1) { self.csi($n ~ 'E') }
    #| Move cursor to the beginning of the previous line, n lines up.
    method cursor-prev-line($n = 1) { self.csi($n ~ 'F') }

    #| Atomic move + print.
    method print-at($r,$c,$str)  {
        self.csi(nums($r,$c) ~ "H" ~ $str)
    }

    #| set fg color to $n.
    method set-fg-color($n) { self.csi("38;5;" ~ $n ~ "m") }
    #| set fg color to $n.
    method set-fg-rgb-color($r,$g,$b) { self.csi("38;2;$r;$g;$b" ~ "m") }
    #| Set bg color to $n.
    method set-bg-color($n) { self.csi("48;5;" ~ $n ~ "m") }
    #| set bg color to $n.
    method set-bg-rgb-color($r,$g,$b) { self.csi("48;2;$r;$g;$b" ~ "m") }
    #| Set bg color to default
    method set-bg-default() { self.csi("49;m") }
    #| Save the cursor position.
    method save-cursor() { self.csi() ~ 's' }
    #| restore the cursor position.
    method restore-cursor() { self.csi() ~ 'u' }
    #| Move to start of line.
    method start-of-line() { print-or-buffer("\r") }
    #| Erase to end of line.
    method erase-to-end-of-line() { self.csi('2J') }
    #| Normal video: same as text-reaset
    method normal-video() { self.csi('0m') }
    #| Text reset (same as normal-video)
    method text-reset() { self.csi('0m') }
    #| Bold (increased intensity)
    method bold() { self.csi('1m') }
    #| Faint (lower intensity)
    method faint() { self.csi('2m') }
    #| italic
    method italic() { self.csi('3m') }
    #| Underline
    method underline() { self.csi('4m') }
    #| Blink
    method blink() { self.csi('5m') }
    #| Reverse video
    method reverse-video() { self.csi('7m') }
    #| Crossed out (striked)
    method strike() { self.csi('9m') }
    #| Alternate font n (between 11 and 19)
    method alt-font($n)  {
        if 11 <= $n || $n <= 19 {
            return
        }
        self.csi($n ~ 'm');
    }

    #| Combine a series of outputs into one.
    method atomically(&callable) { $!printing.protect({ callable() }) }

    my %inputs =
        "\e[A" => "Up",
        "\e[B" => "Down",
        "\e[C" => "Right",
        "\e[D" => "Left",
        "\e[H" => "Home",
        "\e[1~" => "Home",
        "\e[4~" => "End",
        "\t" => "Tab",
        "\e[Z" => "Untab",
        "\e[F" => "End",
        "\e[G" => "Keypad 5",
        "\e[1P" => "F1",
        "\e[1Q" => "F2",
        "\e[1R" => "F3",
        "\e[1S" => "F4",

        "\e[10~" => "F0",
        "\e[11~" => "F1",
        "\eOP"   => "F1",
        "\eOQ"   => "F2",
        "\eOR"   => "F3",
        "\eOS"   => "F4",
        "\e[12~" => "F2",
        "\e[13~" => "F3",
        "\e[14~" => "F4",
        "\e[15~" => "F5",

        "\e[17~" => "F6",
        "\e[18~" => "F7",
        "\e[19~" => "F8",
        "\e[20~" => "F9",
        "\e[21~" => "F10",

        "\e[23~" => "F11",
        "\e[24~" => "F12",
        "\e[25~" => "F13",
        "\e[26~" => "F14",

        "\e[28~" => "F15",
        "\e[29~" => "F16",

        "\e[31~" => "F17",
        "\e[32~" => "F18",
        "\e[33~" => "F19",
        "\e[34~" => "F20",
        "\e[2~"  => "Insert",
        "\e[3~"  => "Delete",
        "\e[5~"  => "PageUp",
        "\e[1;2P" => "PrtSc",
        "\e[6~"  => "PageDown",
        "\e"     => "Esc",
        "\r"     => "Enter",
        "\x[7F]" => "Delete";

    #| Return a description of the given input sequence
    method parse-input($str)  {
        if !nqp::isnull(my $key := nqp::atkey(%inputs, $str)) {
            return $key
        }

        if $str.chars == 2 && $str.starts-with("\e") {
            return "ALT + " ~ $str.methodstr(1,1);
        }

        if $str.starts-with("\e[1;") && $str.chars > 5 {
            my $modifier = $str.methodstr(4,1) - 1;
            my @mods;
            @mods.push: "META" if $modifier +& 8;
            @mods.push: "ALT" if $modifier +& 2;
            @mods.push: "CTRL" if $modifier +& 4;
            @mods.push: "SHIFT" if $modifier +& 1;
            with %inputs{ "\e[" ~ $str.methodstr(5) } -> $key {
                return @mods.join(" + ") ~ " + $key";
            }
        }
        Nil
    }
}
