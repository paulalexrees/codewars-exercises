def snail(array)
  return [] if array == [[]]
  master = []

until array.size == 0
side = array[0].size # get side length of square
inner = []
4.times{|t|          # take the (side-1) numbers from each side
  if side == 1
    array[0][0..(side - 1)].map{|x| master << x}
    break            # if last array to handle is just 1 number
  elsif t == 0
    array[0][0...(side - 1)].map{|x| master << x}
  else
    array = array.transpose.reverse
    array[0][0...(side - 1)].map{|x| master << x}
  end
}
  # array back to normal
  array = array.transpose.reverse

  for i in 1..(side - 2)
    inner << array[i][1..(side - 2)] # extract the next square inside
  end
  array = inner                      # make array the new smaller square to run through again
end

master

end

print snail([[1,2,3],[4,5,6],[7,8,9]]), "\n"
puts
print snail([[1,2,3,4],[5,6,7,8],[1,2,3,4],[5,6,7,8]]), "\n"
puts
print snail([[1,2,3,4,5],[5,6,7,8,9],[1,2,3,4,5],[5,6,7,8,9],[1,2,3,4,5]]), "\n"
