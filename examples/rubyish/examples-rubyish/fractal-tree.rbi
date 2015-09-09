<?rbi?>
<%#
  # Fractal tree rubyish example. Usage:
  # % nqp-p rubyish.nqp examples-rubyish/fractal-tree.rbi > fractal.svg
  #
%>
<?xml version='1.0' encoding='utf-8' standalone='no'?>
<!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN'
'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'>
<svg width='100%' height='100%' version='1.1' xmlns='http://www.w3.org/2000/svg'>
    <%#----------
    def cos(a); nqp::cos_n(a); end
    def sin(a); nqp::sin_n(a); end

    @scale = 0.66
    @PI = 3.1415926535
    @eps = 2.0

    def tree(x1, y1, len, angle = 1.5 * @PI)
        x2 = x1 + len * cos(angle)
        y2 = y1 + len * sin(angle)
        sw = len > 20? len / 10 : 2;
        g = len < @eps*2? 210: 20;
        puts "    <line x1='#{x1}' y1='#{y1}' x2='#{x2}' y2='#{y2}' style='stroke:rgb(130,#{g},80); stroke-width:#{sw}'/>"

        if (len *= @scale) >= @eps then
            tree(x2, y2, len, angle + 0.2*@PI);
            tree(x2, y2, len, angle - 0.2*@PI);
        end
    end

    width  = 1000
    height = 850
    tree(x1=width/2, y1=height, length=300)
    #-----------%>
</svg>
