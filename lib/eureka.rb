#Check if a number is the same as its digits raised to consecutive powers
#e.g 89 = 8^1 + 9^2

def sum_dig_pow(a,b)
range = [a..b]
arr = []
# For loop iterates over the a..b range, splits the numbers and uses the index+1
# as the consecutive power (^1, ^2, ^3 etc)
# Keeps a total in "total" of the sum and adds to the array if == i
for i in a..b
    total = 0
    i.to_s.each_char.with_index{|x,y| arr << total if i == total += x.to_i**(y+1)}i
end
arr
end

print sum_dig_pow(1,100)
print sum_dig_pow(1,1000)
