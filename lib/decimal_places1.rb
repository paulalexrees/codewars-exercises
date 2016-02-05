#Cut a number off after 2 decimal points (not by rounding)


def two_decimal_places(number)
numstr = number.to_s
for i in 0..numstr.length-1
    break if numstr[i] == "."
end
numstr.slice!(0..i+2).to_f
end


puts two_decimal_places(12.3456)
puts two_decimal_places(3422.9879843)
