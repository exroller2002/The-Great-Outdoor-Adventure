# The Great Outdoor Adventure

# Setup
require 'date'

#Creating game class
class Game
  def initialize(player)
    @player = player
    @start_date = Date.today
  end

  #Game start
  def start
    puts "Welcome to The Great Outdoor Adventure, #{@player}. Let's get started!"
    puts "You have 30 days to complete your adventure. Good luck!"
  end
end

#Creating player class
class Player
  attr_accessor :name, :location, :inventory

  def initialize(name)
    @name = name
    @location = :home
    @inventory = []
  end

  def move_to(location)
    @location = location
  end
end

#Creating location class
class Location
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end

#Creating item class
class Item
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end

#Creating scene class
class Scene
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end

#Creating enemy class
class Enemy
  attr_accessor :name, :strength

  def initialize(name, strength)
    @name = name
    @strength = strength
  end
end

#Creating quest class
class Quest
  attr_accessor :name, :description, :reward

  def initialize(name, description, reward)
    @name = name
    @description = description
    @reward = reward
  end
end

#Creating event class
class Event
  attr_accessor :name, :description, :requirement

  def initialize(name, description, requirement)
    @name = name
    @description = description
    @requirement = requirement
  end
end

#Creating ability class
class Ability
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end

#Creating unlockable class
class Unlockable
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end

#Creating challenge class
class Challenge
  attr_accessor :name, :description, :difficulty

  def initialize(name, description, difficulty)
    @name = name
    @description = description
    @difficulty = difficulty
  end
end

#Creating action class
class Action
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end

#Creating game state class
class GameState
  attr_reader :time
  attr_accessor :player, :locations, :items, :scenes, :enemies, :quests, :events,:abilities, :unlockables, :challenges, :actions

  def initialize(player)
    @player = player
    @time = 0
    @locations = []
    @items = []
    @scenes = []
    @enemies = []
    @quests = []
    @events = []
    @abilities = []
    @unlockables = []
    @challenges = []
    @actions = []
  end

  #Update the game state
  def update
    @time += 1
  end
end

#Creating game engine class
class GameEngine
  attr_reader :game_state

  def initialize(game_state)
    @game_state = game_state
  end

  #Run the game loop
  def run
    puts "Game Starting..."
    while @game_state.time < 30
      puts "Time: #{@game_state.time}"
      #game engine logic
      @game_state.update
    end
    puts "Game Over!"
  end
end

#Creating helper methods
def create_locations
  puts "Creating Locations..."
  @game_state.locations << Location.new(:forest, "A dark and mysterious forest")
  @game_state.locations << Location.new(:mountain, "A snow covered mountain")
  @game_state.locations << Location.new(:desert, "A scorching hot desert")
  @game_state.locations << Location.new(:lake, "A peaceful lake surrounded by trees")
end

def create_items
  puts "Creating Items..."
  @game_state.items << Item.new(:rope, "A sturdy rope used for climbing")
  @game_state.items << Item.new(:lantern, "A metal lantern for illuminating dark places")
  @game_state.items << Item.new(:flint, "A flint for lighting fires")
  @game_state.items << Item.new(:map, "A map of the area") 
end

def create_scenes
  puts "Creating Scenes..."
  @game_state.scenes << Scene.new(:forest_clearing, "A large clearing in the middle of the forest")
  @game_state.scenes << Scene.new(:mountain_peak, "The peak of a snow covered mountain")
  @game_state.scenes << Scene.new(:desert_oasis, "A lush oasis in the middle of the desert")
  @game_state.scenes << Scene.new(:lake_shore, "The shore of a peaceful lake")
end

def create_enemies
  puts "Creating Enemies..."
  @game_state.enemies << Enemy.new(:bear, 10)
  @game_state.enemies << Enemy.new(:lion, 12)
  @game_state.enemies << Enemy.new(:wolf, 8)
  @game_state.enemies << Enemy.new(:snake, 6)
end

def create_quests
  puts "Creating Quests..."
  @game_state.quests << Quest.new(:climb_mountain, "Climb to the top of a mountain", :lantern)
  @game_state.quests << Quest.new(:swim_lake, "Swim across a lake", :map)
  @game_state.quests << Quest.new(:cross_desert, "Cross a desert", :flint)
  @game_state.quests << Quest.new(:explore_forest, "Explore a forest", :rope)
end

def create_events
  puts "Creating Events..."
  @game_state.events << Event.new(:sudden_storm, "A sudden storm appears out of nowhere", :lantern)
  @game_state.events << Event.new(:flash_flood, "A flash flood rushes through the area", :map)
  @game_state.events << Event.new(:sandstorm, "A sandstorm rolls in over the desert", :flint)
  @game_state.events << Event.new(:forest_fire, "A forest fire is quickly spreading", :rope)
end

def create_abilities
  puts "Creating Abilities..."
  @game_state.abilities << Ability.new(:climbing, "Climb up walls and mountains")
  @game_state.abilities << Ability.new(:swimming, "Swim across lakes and rivers")
  @game_state.abilities << Ability.new(:desert_survival, "Survive in the desert")
  @game_state.abilities << Ability.new(:forest_survival, "Survive in the forest")
end

def create_unlockables
  puts "Creating Unlockables..."
  @game_state.unlockables << Unlockable.new(:boat, "A small wooden boat")
  @game_state.unlockables << Unlockable.new(:horse, "A strong and reliable horse")
  @game_state.unlockables << Unlockable.new(:camel, "A beast of burden to help you cross the desert")
  @game_state.unlockables << Unlockable.new(:donkey, "A loyal companion to help you explore the forest")
end

def create_challenges
  puts "Creating Challenges..."
  @game_state.challenges << Challenge.new(:bear, "Defeat a bear in combat", 10)
  @game_state.challenges << Challenge.new(:lion, "Defeat a lion in combat", 12)
  @game_state.challenges << Challenge.new(:wolf, "Defeat a wolf in combat", 8)
  @game_state.challenges << Challenge.new(:snake, "Defeat a snake in combat", 6)
end

def create_actions
  puts "Creating Actions..."
  @game_state.actions << Action.new(:move, "Move to a new location")
  @game_state.actions << Action.new(:pickup, "Pick up an item")
  @game_state.actions << Action.new(:equip, "Equip an item")
  @game_state.actions << Action.new(:attack, "Attack an enemy")
end

#Setup
puts "What is your name?"
name = gets.chomp
player = Player.new(name)
game = Game.new(player)
game.start
game_state = GameState.new(player)
game_engine = GameEngine.new(game_state)

#Creating game elements
create_locations
create_items
create_scenes
create_enemies
create_quests
create_events
create_abilities
create_unlockables
create_challenges
create_actions

#Running the game
game_engine.run