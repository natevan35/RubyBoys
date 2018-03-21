def create_board()

  # This code will create a game board of 5x5 playing space which the user will
  # then be able to choose their spaces.

  # Board will have numbered columns and lettered rows

  msg = '................Creating Board................' # What to print
  slp_time = 0.6 # Time to start out for flashing interval

  6.times do # Try and make this 10x the slp_time value
    print "\r#{ msg }" # print the message
    sleep slp_time
    print "\r#{ ' ' * msg.size }" # Clear message
    sleep slp_time
    slp_time = slp_time - 0.1
    if slp_time < 0.1 # If it's the last iteration, give the user a few words of encouragement
      sleep slp_time
      encouragement = "Fuck You"
      print "\r\t\t\t#{ encouragement }"
      slp_time = 0.4
      sleep slp_time
      print "\r\t\t\t#{ ' ' * encouragement.size }" # Clear message
      print "\rBoard Complete!"
      print "\r\n"
    end
  end

  # Okay so that is over, now print out the playing board
  # Create the board below
  board = <<BOARD
  \r\n  1  2  3  4  5
  \r\nA *  *  *  *  *
  \r\nB *  *  *  *  *
  \r\nC *  *  *  *  *
  \r\nD *  *  *  *  *
  \r\nE *  *  *  *  *
BOARD
  # Print out the board
  puts "\nHere is the playing board\n\n"

  puts "----------------"
  puts board
  puts "----------------"



end

create_board()
