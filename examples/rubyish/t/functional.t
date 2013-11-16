# implement and test functional primitives: map, grep and sort.
puts '1..7'

test_counter = 0

def is(result, expected, description)
    test_num = (test_counter += 1)
    passed = result eq expected
    puts "#{passed ? 'ok' : 'nok'} #{test_num} - #{description} (#{result})"
    puts "# expected:'#{expected}' got:'#{result}'" unless passed
end

def dump(arr) ; nqp::join(',', arr); end

# ------------
def grep(array_inp, &filter)
    array_out = []
    n = -1

    for elem in array_inp ;
        keep = (filter.nil?
                ? (!elem.nil? && elem)
                : filter.call(elem))

        array_out[ n+=1 ] = elem \
            if keep
    end

    array_out
end

arr = [0, 2, 10, 1, 13, 27, 5, 4, 18]
is dump(arr), '0,2,10,1,13,27,5,4,18', 'array dump sanity'
even = grep(arr) {|n| n % 2 == 0}
is dump(even), '0,2,10,4,18', 'grep [even]'

# ------------
def map(array_in, &mapper)
    array_out = []
    n = -1

    for elem in array_in do

       mapping = mapper.call(elem)

       if nqp::islist(mapping) then
           # flatten sublists
           for sub_elem in mapping ;
               array_out[ n+=1 ] = sub_elem
           end
       else
           array_out[ n+=1 ] = mapping
       end
    end

    array_out
end

squares = map(arr) {|n| n * n}
is dump(squares), '0,4,100,1,169,729,25,16,324', 'map [squares]'

# ------------
def sort(list, &func) ;
    list = nqp::clone list # take a copy
    _quicksort(list, 0, nqp::elems(list)-1, &func);
end

def _quicksort(list, p, r, &func)
    if p < r then
        q = _partition(list, p, r, &func)
        _quicksort(list, p, q-1, &func)
        _quicksort(list, q+1, r, &func)
    end
    list
end

def _partition(list, p, r, &func)
    pivot = list[r]
    i = p - 1
    j = p - 1
    while (j += 1) < r

        swap = 0 <= (func.nil?
                     ? (pivot cmp list[j]) # default sort
                     : func.call(pivot, list[j]))

        if swap
            i = i+1
            tmp = list[i]
            list[i] = list[j]
            list[j] = tmp
        end   
    end
    tmp = list[r]
    list[r] = list[i+1]
    list[i+1] = tmp
    i + 1
end

str_sort = sort(arr)
is dump(str_sort), '0,1,10,13,18,2,27,4,5', 'sort [default]'
num_sort = sort(arr) {|a,b| a <=> b}
is dump(num_sort), '0,1,2,4,5,10,13,18,27', 'sort [numeric]'

# ------------
# put it all together
odd = lambda {|n| n % 2 == 1}
combined = map(sort grep(arr,&odd)) {|str| nqp::flip(str)}
is dump(combined), '1,31,72,5', 'combined map sort grep'
is dump(arr), '0,2,10,1,13,27,5,4,18', 'array unscathed'

