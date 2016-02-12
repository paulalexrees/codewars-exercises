# return the number of cycles required to complete the task at index
# kata: http://www.codewars.com/kata/550cb646b9e7b565d600048a

def roundRobin(jobs, slice, index)
cycles = 0
while jobs[index] != 0
  for i in 0...jobs.size
      unless jobs[i] == 0 then slice.times{
          cycles += 1
          jobs[i] -= 1
          break if jobs[i]==0
          }
      return cycles if jobs[index]==0
      end
  end
end
end

#puts roundRobin([10,20,1],5,0)
