# return an alphabetically sorted array containing words from array1
# that are substrings of words in array2


def in_array(array1, array2)
  arr = []
  array2.each{|x|
    array1.each{|y| arr << y if x.include? y}
  }
arr.uniq.sort

end



print in_array(["a3rp","pood","johsn"],["harp", "demijohn"])
