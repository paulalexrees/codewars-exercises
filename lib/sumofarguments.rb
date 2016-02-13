def find_sum(*args)
  # Return sum of all args, but -1 if an arg is negative.
  # reduce(0,:+) keeps the result 0 instead of nil if no args
  args.any?{|x|x < 0} ? -1 : args.reduce(0,:+)
end

puts find_sum(1,2,3,4)
puts find_sum(1,-2,3)
puts find_sum()
