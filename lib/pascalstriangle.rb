def pascalsTriangle(n)
  triangle = []
  arr = []
  for i in 0..n-1
    triangle[i] = [1]*(i+1)
  end

  for i in 1...n
    triangle[i].map!.with_index{|x, ind|
      if ind == 0 || (ind == triangle[i].length - 1)
        x = 1
      else
        x = (triangle[i-1][ind]) + (triangle[i-1][ind-1])
      end
    }
  end
  triangle.each{ |x| x.each { |y| arr << y } }
arr
end

print pascalsTriangle(9)
