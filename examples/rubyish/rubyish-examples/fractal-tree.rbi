<?rbi?>
<%# Fractal tree example                                              %>
<%# % nqp rubyish.nqp rubyish-examples/fractal-tree.rbi > fractal.svg %>
<?xml version='1.0' encoding='utf-8' standalone='no'?>
<!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN'
'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'>
<svg width='100%' height='100%' version='1.1'
xmlns='http://www.w3.org/2000/svg'>

    <%#----------
    @scale = 6/10
    @PI = 3.1415926535

    def tree(x, y, len, angle)
       if len >= 1.0 then
	    x2 = x + len * nqp::cos_n(angle)
	    y2 = y + len * nqp::sin_n(angle)
	    puts "<line x1='#{x}' y1='#{y}' x2='#{x2}' y2='#{y2}' style='stroke:rgb(0,0,0);stroke-width:1'/>";
	    tree(x2, y2, len*@scale, angle + @PI/5);
	    tree(x2, y2, len*@scale, angle - @PI/5);
       end
    end

    width = 1000
    height = 1000
    length = 400

    tree(width/2, height, length, 3*@PI/2)
    #-----------%>

</svg>
