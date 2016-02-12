# Determine if a triangle is Equilateral, Isosceles, Scalene or invalid

def type_of_triangle(a,b,c)
  arr = []
  arr.push(a,b,c).each{|x| return "invalid" unless x.is_a? Integer}
  arr.sort!
# invalid check
return "invalid" if arr[0]+arr[1] <= arr[2]

# returns index of first array provided by number of similar values in arr
["Equilateral","Isosceles","Scalene"][arr.uniq.count - 1]


end

#puts type_of_triangle(1,3,3)
