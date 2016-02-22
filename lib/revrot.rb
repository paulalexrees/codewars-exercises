# split a string of numbers into chunks of size sz
# ignore chunks if they're smaller than sz
# if sum of the cubes of each number is divisible by 2, reverse them
# if not, rotate them

def revrot(str, sz)
  return "" if sz <= 0 || str == "" || sz > str.length
  arr = []
  str.split(//).map{|z| z.to_i}.each_slice(sz){|x|
    if x.length == sz
      x.map{|y| y**3}.inject(:+) % 2 == 0 ? arr << x.reverse : arr << x.rotate
    end
  }
  arr.join
end

p revrot("66443875",8)
