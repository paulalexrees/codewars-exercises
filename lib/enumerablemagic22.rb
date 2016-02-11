def first(list, n=nil)
n==nil ? list.first : list[0..n]
end

#if optional value n is nil, return first element of array
#otherwise return first n elements of array
print first(["1", "2", "3"],2), "\n"
print first([1,2,3])
