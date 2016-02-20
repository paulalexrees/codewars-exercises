def combine(one,*more)
  three = one.dup
    more.each{|x|
      x.each{|a,b|
    three[a] ||= 0
    three[a] += b
  }
}
  three
end

objA = { 'a'=>10, 'b'=>20, 'c'=>30 }
objB = { 'a'=>3, 'c'=>6, 'd'=>3 }
objC = { 'a'=>5, 'd'=>11, 'e'=>8 }

puts combine(objA,objB, objC)
