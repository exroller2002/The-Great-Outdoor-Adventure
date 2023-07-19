# The Great Outdoor Adventure in Ruby
class Adventure
  def initialize
    @player_position = [0, 0]
  end

  def move_player(direction, spaces)
    case direction
    when 'right' 
      @player_position[0] += spaces
    when 'left'
      @player_position[0] -= spaces
    when 'up'
      @player_position[1] += spaces
    when 'down'
      @player_position[1] -= spaces
    end
  end

  def check_location
    case @player_position
    when [1, 0]
      puts 'You have found a river!'
    when [-3, 5]
      puts 'You have found a cave!'
    when [2, -4]
      puts 'You have found a lake!'
    when [0, 0]
      puts 'You have reached the starting point!'
    else
      puts 'Nothing here but dirt!'
    end
  end
end

# Create new instance
adventure = Adventure.new

# Move around the map
adventure.move_player('right', 3)
adventure.move_player('up', 5)
adventure.check_location

adventure.move_player('left', 3)
adventure.move_player('down', 4)
adventure.check_location

adventure.move_player('right', 2)
adventure.check_location

adventure.move_player('left', 5)
adventure.check_location