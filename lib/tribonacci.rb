def tribonacci(signature,n)
return signature[0...n] if n < signature.length
  until signature.length == 10
    signature << signature.last(3).inject(:+)
  end
  signature
end

puts tribonacci([0.5,0.5,0.5],10)
