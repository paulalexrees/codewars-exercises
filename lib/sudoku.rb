def done_or_not(board)

  # master will hold all 27 chunks of 9 rows/columns/squares
  master = []
  correct = 0
  # check rows
  board.each{|x|
    master.concat(x)
  }

  # check columns
  for i in 0..8
    temp = []
    board.each.with_index{|chr,ind|
    master.push(chr[i])
  }
  end
  # check 3x3s
  for i in 0..8                     #left
    master.concat(board[i][0..2])
  end
  for i in 0..8                     #centre
    master.concat(board[i][3..5])
  end
  for i in 0..8                     #right
    master.concat(board[i][6..8])
  end

  # check if all are correct
master.each_slice(9){|x| correct += 1 if x.sort == [1,2,3,4,5,6,7,8,9]}

  return "Finished!" if correct == 27
  "Try again!"

end

print done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2],
                         [6, 7, 2, 1, 9, 5, 3, 4, 8],
                         [1, 9, 8, 3, 4, 2, 5, 6, 7],
                         [8, 5, 9, 7, 6, 1, 4, 2, 3],
                         [4, 2, 6, 8, 5, 3, 7, 9, 1],
                         [7, 1, 3, 9, 2, 4, 8, 5, 6],
                         [9, 6, 1, 5, 3, 7, 2, 8, 4],
                         [2, 8, 7, 4, 1, 9, 6, 3, 5],
                         [3, 4, 5, 2, 8, 6, 1, 7, 9]])
