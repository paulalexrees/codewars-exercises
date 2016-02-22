def meters(x)
  hash = {
    24=>"Ym",
    21=>"Zm",
    18=>"Em",
    15=>"Pm",
    12=> "Tm",
    9 => "Gm",
    6 => "Mm",
    3 => "km",
    1 => "m"
  }
  x = x.to_i if x == x.to_i
  result = 0
  hash.each_key{|k|
    if x / 10**k >= 1
      if x % 10**k > 0                # decimal
        result = x / 10.0**k
        result = result.to_i if result == result.to_i
        return "#{result}#{hash[k]}"
        break
      else                            # not decimal
        return "#{x / 10**k}#{hash[k]}"
        result = x / 10**k
        break
      end
    elsif x < 1000
      return "#{x}m"
      break
    end
  }
end

puts meters(90000000000)
