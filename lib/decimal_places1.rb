#Cut a number off after 2 decimal points (not by rounding)


def two_decimal_places(number)
(number * 100).to_i / 100.0
end


puts two_decimal_places(12.3456)
puts two_decimal_places(3422.9879843)
