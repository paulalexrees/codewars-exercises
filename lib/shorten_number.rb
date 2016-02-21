def shorten_number(suffixes, base)
   Proc.new do |x|
     next x.to_s if (x.to_s =~ (/\D|^$/)) != nil
     basey = x.to_i / base
     ind = 0
     while basey > 0 && ind < suffixes.length - 1
       basey = basey / base
       ind += 1
     end
     puts ind
    "#{x.to_i / base**ind}#{suffixes[ind]}"
  end

end

f = shorten_number(['','k','m'],1000)

puts f.call("234324")
puts f.call("98234324")
puts f.call("23")
puts f.call("32424234223")

filter2 = shorten_number(['','KB','MB','GB'],1024)
puts filter2.call('1073741823')
