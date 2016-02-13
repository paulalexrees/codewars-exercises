# Take a number and return number of special steps needed to obtain a palindrome.
# Special step: reverse digits, add to original number
# If not a palindrome, repeat

def palindrome_chain_length(n)
  return 0 if n.to_s.reverse == n.to_s
  counter = 0
  until n.to_s.reverse == n.to_s
    counter += 1
    n += n.to_s.reverse.to_i
  end
counter
end
