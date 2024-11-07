my class NQPTerminal {
    our module Color {
        my %color-lookups := nqp::hash(
            "black", "0",
            "red", "1",
            "green", "2",
            "yellow", "3",
            "blue", "4",
            "magenta", "5",
            "cyan", "6",
            "white", "7",
            "default", "9",
            "bright_black", "8",
            "bright_red", "9",
            "bright_green", "10",
            "bright_yellow", "11",
            "bright_blue", "12",
            "bright_magenta", "13",
            "bright_cyan", "14",
            "bright_white", "15");

        sub invert-color-lookup() {
            my $iterator := nqp::iterator(%color-lookups);
            my %temp;
            while $iterator {
                my $pair := nqp::shift($iterator);
                nqp::bindkey(%temp, nqp::iterval($pair), nqp::iterkey_s($pair))
            }
            %temp
        }
        my %color-names-lookup := invert-color-lookup();

        our sub color-code($color) {
            nqp::atkey(%color-lookups, $color);
        }

        our sub color-name($sequence) {
            my $color-name := "";
            my $length := nqp::chars($sequence);
            if nqp::iseq_i($length,9) || nqp::iseq_i($length,10) && nqp::iseq_s(nqp::substr($sequence,5,1),"5") {
                my $span := $length - 8; # 7 for prefix, 1 for suffix
                if !nqp::isnull(my $name := nqp::atkey(%color-names-lookup, nqp::substr($sequence,7,$span))) {
                    $color-name := $name
                }
            }
            if !nqp::chars($color-name) {
                $color-name := "UNKNOWN"
            }
            $color-name
        }

        my @color-names;
        #| To provide a means for an HLL to place useful guards on user input
        our sub available-colors() {
            if nqp::elems(@color-names) {
                return @color-names
            }

            my $iterator := nqp::iterator(%color-lookups);
            while $iterator {
                nqp::push(@color-names, nqp::iterkey_s(nqp::shift($iterator)))
            }
            @color-names
        }
    }

    has $!printing;
    method new() {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, NQPTerminal, '$!printing', NQPLock.new);
        $obj
    }

    # Singleton features
    my $CSI := "\e[";
    #| In case a user needs to specify an alternate sequence prefix (but... maybe YAGNI?)
    our sub set-sequence-prefix($new-csi) {
        $!printing.protect({ $CSI := $new-csi })
    }
    sub nums(*@n) {
        # trim trailing nils?
        my $str := "";
        for @n {
            $str := $str ~ ($_ // '') ~ ';';
        }
        $str
    }
    # End singleton features

    method print-or-buffer($str) {
        $!printing.protect({ print($str) })
    }

    method csi($str) {
        self.print-or-buffer(nqp::concat($CSI, $str))
    }
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

    method set-color(:$fg, :$bg) {
        if $fg {
            self.set-fg-color(Color::color-code($fg))
        }
        if $bg {
            if nqp::iseq_s($bg, "default") || nqp::iseq_s($bg, "off") {
                self.set-bg-default()
            } else {
                self.set-bg-color(Color::color-code($bg))
            }
        }
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

    our module Input {
        my %inputs := nqp::hash(
            "\e[A", "Up",
            "\e[B", "Down",
            "\e[C", "Right",
            "\e[D", "Left",
            "\e[H", "Home",
            "\e[1~", "Home",
            "\e[4~", "End",
            "\t", "Tab",
            "\e[Z", "Untab",
            "\e[F", "End",
            "\e[G", "Keypad 5",
            "\e[1P", "F1",
            "\e[1Q", "F2",
            "\e[1R", "F3",
            "\e[1S", "F4",

            "\e[10~", "F0",
            "\e[11~", "F1",
            "\eOP"  , "F1",
            "\eOQ"  , "F2",
            "\eOR"  , "F3",
            "\eOS"  , "F4",
            "\e[12~", "F2",
            "\e[13~", "F3",
            "\e[14~", "F4",
            "\e[15~", "F5",

            "\e[17~", "F6",
            "\e[18~", "F7",
            "\e[19~", "F8",
            "\e[20~", "F9",
            "\e[21~", "F10",

            "\e[23~", "F11",
            "\e[24~", "F12",
            "\e[25~", "F13",
            "\e[26~", "F14",

            "\e[28~", "F15",
            "\e[29~", "F16",

            "\e[31~", "F17",
            "\e[32~", "F18",
            "\e[33~", "F19",
            "\e[34~", "F20",
            "\e[2~" , "Insert",
            "\e[3~" , "Delete",
            "\e[5~" , "PageUp",
            "\e[1;2P", "PrtSc",
            "\e[6~" , "PageDown",
            "\e"    , "Esc",
            "\r"    , "Enter",
            "\x[7F]", "Delete");

        our sub parse-input($str) {
            my $input := "";
            if !nqp::isnull(my $key := nqp::atkey(%inputs, $str)) {
                $input := $key
            }
            elsif nqp::iseq_i(nqp::chars($str), 2) && nqp::iseq_s(nqp::substr($str,0,1), "\e") {
                 $input := "ALT + " ~ nqp::substr($str, 1, 1)
            }
            elsif nqp::iseq_s(nqp::substr($str,1,4), "\e[1;") && nqp::isgt_i(nqp::chars($str), 5) {
                my $modifier := nqp::substr($str,4,1) - 1;
                my @mods := nqp::list();
                if $modifier +& 8 {
                    nqp::push(@mods, "META")
                }
                if $modifier +& 2 {
                    nqp::push(@mods, "ALT")
                }
                if $modifier +& 4 {
                    nqp::push(@mods, "CTRL")
                }
                if $modifier +& 1 {
                    nqp::push(@mods, "SHIFT")
                }

                if !nqp::isnull(my $key := nqp::atkey(%inputs, "\e[" ~ nqp::substr($str,5,1))) {
                    $input := nqp::join(@mods, " + ") ~ $key
                }
            }
            $input
        }
    }
}
