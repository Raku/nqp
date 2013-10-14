# eRubyish style templates

puts '1..10'
puts "ok 1 - statements before template"

<%rbi>
ok 2 - initial template text
  <%n = 2 %>
  <%while n < 4 %>
    <% n += 1%>
ok #{n} - while loop test
  <%end%>
ok 5 - text between statements
  <%if n == 4 %>
ok 6 - if block (true)
  <%else%>
nok 6 - if block (true)
  <%end%>
  <%if n == 1234 %>
nok 7 - if block (false)
  <%elsif n == 20 %>
nok 7 - if block (false)
  <%else %>
ok 7 - if block (false)
  <% end %>
  <%for test in [8, 9]  do %>
ok #{test} - for loop test
  <%end%>
<%#puts "nok 10 - commented out directive" %>
ok 10 - final template text
