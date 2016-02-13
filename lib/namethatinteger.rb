lam1 = lambda { |x| x % 4 == 0 }
lam2 = lambda { |x| x % 3 == 0 }
lam3 = lambda { |x| x % 2 == 0}


def detect_int(*lams)
  return 1 if lams == []
  counter = 1
  lowarray = []
    lams.all?{|x|
      counter = 1
      counter += 1 while x.call(counter) == false
      lowarray << counter
    }
#print lowarray.sort

while lams.all?{|x| x.call(lowarray.sort.last)} == false
      counter = lowarray.sort.last
lams.all?{|x|
      lowarray =[]
      puts counter
      counter += 1 while x.call(counter) == false
      lowarray << counter
}
end
lowarray.last
end


print detect_int(lam1,lam2,lam3)
