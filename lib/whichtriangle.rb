# Determine if a triangle is Equilateral, Isosceles, Scalene or invalid

def type_of_triangle(a,b,c)
  arr = []
  arr.push(a,b,c).each{|x| return "invalid" unless x.is_a? Integer}
  arr.sort!
# invalid check
return "invalid" if arr[0]+arr[1] <= arr[2]

# Equ check
#return "Equilateral" if arr <=> arr
# Isos check
arr.each_cons(3){|a,b,c|
  return "Equilateral" if a==b && a==c
  return "Isosceles" if (a==b && a!=c) || (b==c) && (b!=a)
  return "Scalene" if a!=b && a!=c && b!=c
}
end

puts type_of_triangle(1,3,3)
