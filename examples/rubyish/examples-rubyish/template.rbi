# eRubyish templating - see http://en.wikipedia.org/wiki/ERuby
# There are only three directives:
# <?rbi?>    - Header; remainder of the source file is the template body
# <% ... %> - rubyish statements
# #{ ... }  - inserted content

# Any arbritrary code can appear before the template. Output to stdout
# is appended to the template, both before and within the template body

puts %q{<?xml version='1.0' encoding='utf-8'?>}

<?rbi?>
<html>
    <body>
        <h1>Green Bottles...</h1>
        <%n = 10      %>
        <%while n > 0 %>
            <blockquote>
                <em>#{n}</em> green bottles standing on the wall,
                <em>#{n}</em> green bottles standing on the wall
                <br/>
                <%# -- gratuitous use of puts ------------------------------ %>
                <%puts %q{and if one green bottle should accidently fall...} %>
                <br/>
                <%n -= 1 %>
                there'd be <em> #{if n then n else 'no' end} </em> green bottles standing on the wall
            </blockquote>
        <%end%>
    </body>
</html>

