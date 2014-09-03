# implement and test functional primitives: map, grep and sort.
puts '1..9'

test_counter = 0

def is(result, expected, description)
    test_num = (test_counter += 1)
    passed = result eq expected
    puts "#{passed ? 'ok' : 'nok'} #{test_num} - #{description}"
    puts "# expected:'#{expected}' got:'#{result}'" \
       unless passed

    passed
end

def dump(arr, idx = 1)
    arr[idx-1] ~ (idx < arr ? ',' ~ dump(arr, idx+1) : '')
end

# ------------
def grep(array_inp, &selector)
    array_out = []
    n = -1
    selector = lambda {|elem| !elem.nil? && elem} \
       if selector.nil?

    for elem in array_inp ;
        array_out[ n+=1 ] = elem \
            if selector.call(elem)
    end

    array_out
end

arr = [0, 2, 10, 1, 13, 27, 5, 4, 18]
is dump(arr), '0,2,10,1,13,27,5,4,18', 'array dump sanity'
even = grep(arr) {|n| n % 2 == 0}
is dump(even), '0,2,10,4,18', 'grep [even]'

arr1 = nqp::clone(arr)
nqp::push(arr1, nil)
is dump( grep(arr1) ), '2,10,1,13,27,5,4,18', 'grep [default]'

# ------------
def map(array_inp, &mapper)
    array_out = []
    n = -1

    for elem in array_inp do

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
    func = lambda {|a,b| a cmp b} \
       if func.nil?

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
    i = j = p - 1

    while (j += 1) < r
       _swap(list, i += 1, j) \
           if 0 <= func.call(pivot, list[j])
    end

    _swap(list, i += 1, r)
    i
end

def _swap(list, i, j)
    tmp = list[i]
    list[i] = list[j]
    list[j] = tmp
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

splitter = lambda {|n| nqp::split('',n)}
is dump( map(combined, &splitter) ), '1,3,1,7,2,5', 'map [flattening]'

is dump(arr), '0,2,10,1,13,27,5,4,18', 'array readonly'

