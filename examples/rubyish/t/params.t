puts "1..5"
def foo(offset:0,desc:,test=1)
   puts "ok #{test+offset} - #{desc}"
end

foo(desc:"postional default")
foo(2, desc:"positional - named last")
foo(desc:"positional - named first", 3)
foo(2, desc:"positional + two named params",offset:2)
foo(offset:3, 2, desc:"named + positional (middle)")
