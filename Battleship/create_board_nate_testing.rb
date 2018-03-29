class Board
  def initialize(width, height)
    @width = width
    @height = height
  end

  def print_board
    (0..width).each do |width_integer|#for width_integer in 0..width
      (0..height).each do |height_integer|#for height_integer in 0..height
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
    @sleep_time = sleep_time * 10
    sleep sleep_time
    system "clear"
  end

  attr_reader :sleep_time
end


class UserPicksLocations
  def initialize
    letters = ("a".."z").to_a
    #Columns to choose from
    rows = ("a"..letters[9]).to_a
    puts rows
    columns = (1..10).to_a

    # Arrays to house user input for choices
    @row_choice = []
    @column_choice = []

    statement = <<END
    \n\nNow you must pick where to place your ships!
    \nPlease choose letter - number pairs according to the board above
    \n\t - You have two: 2x1 ships and two: 3x1 ships to place on the board"
    \nWhen prompted, please provide a row and then a column1
    \nWe will start with the 2x1 and then finish with the 3x1
END
    puts statement

    #Logic to allow user to pick rows and columns for ships
    puts "#{height} #{width}"
    #
  end
end



#BeginningAnimation.new(2.0).display_countdown
Board.new(10, 10).print_board
UserPicksLocations.new
