class Board
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

  attr_reader :width, :height
end

class BeginningAnimation
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
  end

  attr_reader :sleep_time
end

BeginningAnimation.new(4.0).display_countdown
Board.new(10, 10).print_board
