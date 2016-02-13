lam1 = lambda { |x| x % 4 == 0 }
lam2 = lambda { |x| x % 3 == 0 }
lam3 = lambda { |x| x % 2 == 0}


def detect_int(*lams)
i = 1
i += 1 until lams.map{|x| x.call(i)}.all?
i
end


print detect_int(lam1,lam2,lam3)
