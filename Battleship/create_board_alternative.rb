class Board   # Creates the Playing Board
  def initialize(width, height)
    @width = width
    @height = height
  end

  def print_board
    for width_integer in 0..width
      for height_integer in 0..height
        if width_integer == 0 && height_integer == 0
          print "   "
          next
        end

        if width_integer == 0
          print height_integer.to_s + "  "
        elsif height_integer == 0
          print (width_integer + 64).chr + "  "
        else
          print "*" + "  "
        end
      end

      print "\n"
    end
  end

  def logic_board # This will be a board of zeros that turn to ones when user chooses location of their pieces
    user_board = Matrix.build(@height,@width) { |row, col| 0 }
    computer_board = Matrix.build(@height,@width) { |row,col| 0 }
    @user_board = user_board
    @computer_board = computer_board
  end


  attr_reader :width, :height
end

class BeginningAnimation   # Does the annimation of showing the board
  MESSAGE = '................Creating Board................'

  def initialize(sleep_time)
    @sleep_time = sleep_time
  end

  def display_countdown
    system "clear"

    while sleep_time > 0.1
      sleep sleep_time
      print MESSAGE
      sleep sleep_time
      system "clear"

      @sleep_time = sleep_time / 2
    end

    puts "Fuck you"
    @sleep_time = sleep_time * 10
    sleep sleep_time
    system "clear"
  end

  attr_reader :sleep_time
end

BeginningAnimation.new(2.0).display_countdown
Board.new(1, 10).print_board
