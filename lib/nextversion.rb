def nextVersion(version)
  master = []
  arr = version.split(/[.]/).map!{|x| x.to_i}

  (arr.length-1).downto(0){|i|
    arr[i] += 1
    if arr[i] == 10 && i != 0
      arr[i] = 0
      if arr[i-1] == 9
        next
      else
        arr[i-1] += 1
        break
      end
    else
      break
    end
  }
  arr.join(".")

end


p nextVersion("10.9.9.9")
