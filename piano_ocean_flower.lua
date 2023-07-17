local greatOutdoorAdventure = {}

function greatOutdoorAdventure.start()
	print("Welcome to The Great Outdoor Adventure!")
	print("You are about to embark on a journey you will never forget")
	greatOutdoorAdventure.greeting()
end

function greatOutdoorAdventure.greeting()
	print("What is your name, adventurer?")
	local name = io.read()
	print("It's great to meet you, " .. name .. "!")
	print("Where would you like to go first? Wilderness or City?")
	local destination = io.read()
	greatOutdoorAdventure.goToDestination(destination, name)
end

function greatOutdoorAdventure.goToDestination(destination, name)
	if destination == "Wilderness" then
		print("Excellent choice! You have arrived in the wilderness, " .. name)
		greatOutdoorAdventure.wildernessMenu()
	elseif destination == "City" then
		print("Fantastic! You have arrived in the city, " .. name)
		greatOutdoorAdventure.cityMenu()
	else
		print("That is not a valid destination. Please try again.")
		greatOutdoorAdventure.greeting()
	end
end

function greatOutdoorAdventure.wildernessMenu()
	print("What would you like to do in the wilderness, " .. name .. "?")
	print("Options: Hunt, Fish, Explore, Return")
	local choice = io.read()
	if choice == "Hunt" then
		greatOutdoorAdventure.hunt()
	elseif choice == "Fish" then
		greatOutdoorAdventure.fish()
	elseif choice == "Explore" then
		greatOutdoorAdventure.explore()
	elseif choice == "Return" then
		greatOutdoorAdventure.start()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.wildernessMenu()
	end
end

function greatOutdoorAdventure.hunt()
	print("You have chosen to hunt in the wilderness.")
	print("Where would you like to hunt? Field or Forest?")
	local choice = io.read()
	if choice == "Field" then
		print("You have chosen to hunt in the field. Good luck!")
		greatOutdoorAdventure.fieldHunt()
	elseif choice == "Forest" then
		print("You have chosen to hunt in the forest. Good luck!")
		greatOutdoorAdventure.forestHunt()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.hunt()
	end
end

function greatOutdoorAdventure.fish()
	print("You have chosen to fish in the wilderness.")
	print("Where would you like to fish? Lake or River?")
	local choice = io.read()
	if choice == "Lake" then
		print("You have chosen to fish in the lake. Good luck!")
		greatOutdoorAdventure.lakeFish()
	elseif choice == "River" then
		print("You have chosen to fish in the river. Good luck!")
		greatOutdoorAdventure.riverFish()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.fish()
	end
end

function greatOutdoorAdventure.explore()
	print("You have chosen to explore the wilderness.")
	print("Where would you like to explore? Mountain or Valley?")
	local choice = io.read()
	if choice == "Mountain" then
		print("You have chosen to explore the mountain. Have fun!")
		greatOutdoorAdventure.mountainExplore()
	elseif choice == "Valley" then
		print("You have chosen to explore the valley. Have fun!")
		greatOutdoorAdventure.valleyExplore()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.explore()
	end
end

function greatOutdoorAdventure.cityMenu()
	print("What would you like to do in the city, " .. name .. "?")
	print("Options: Shop, Eat, Dance, Return")
	local choice = io.read()
	if choice == "Shop" then
		greatOutdoorAdventure.shop()
	elseif choice == "Eat" then
		greatOutdoorAdventure.eat()
	elseif choice == "Dance" then
		greatOutdoorAdventure.dance()
	elseif choice == "Return" then
		greatOutdoorAdventure.start()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.cityMenu()
	end
end

function greatOutdoorAdventure.shop()
	print("You have chosen to shop in the city.")
	print("Which store would you like to go to? Grocery or Clothing?")
	local choice = io.read()
	if choice == "Grocery" then
		print("You have chosen to go to the grocery store. Enjoy your shopping!")
		greatOutdoorAdventure.groceryShop()
	elseif choice == "Clothing" then
		print("You have chosen to go to the clothing store. Enjoy your shopping!")
		greatOutdoorAdventure.clothingShop()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.shop()
	end
end

function greatOutdoorAdventure.eat()
	print("You have chosen to eat in the city.")
	print("Where would you like to eat? French or Italian?")
	local choice = io.read()
	if choice == "French" then
		print("You have chosen to eat at a French restaurant. Bon appetit!")
		greatOutdoorAdventure.frenchEat()
	elseif choice == "Italian" then
		print("You have chosen to eat at an Italian restaurant. Buon appetito!")
		greatOutdoorAdventure.italianEat()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.eat()
	end
end

function greatOutdoorAdventure.dance()
	print("You have chosen to dance in the city.")
	print("What kind of dancing would you like to do? Swing or Latin?")
	local choice = io.read()
	if choice == "Swing" then
		print("You have chosen to do swing dancing. Have fun!")
		greatOutdoorAdventure.swingDance()
	elseif choice == "Latin" then
		print("You have chosen to do Latin dancing. Have fun!")
		greatOutdoorAdventure.latinDance()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.dance()
	end
end

function greatOutdoorAdventure.fieldHunt()
	print("You have arrived in the field to hunt.")
	print("What would you like to hunt? Rabbit or Deer?")
	local choice = io.read()
	if choice == "Rabbit" then
		print("You have chosen to hunt rabbits. Good luck!")
		greatOutdoorAdventure.rabbitHunt()
	elseif choice == "Deer" then
		print("You have chosen to hunt deer. Good luck!")
		greatOutdoorAdventure.deerHunt()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.fieldHunt()
	end
end

function greatOutdoorAdventure.forestHunt()
	print("You have arrived in the forest to hunt.")
	print("What would you like to hunt? Bear or Fox?")
	local choice = io.read()
	if choice == "Bear" then
		print("You have chosen to hunt bears. Good luck!")
		greatOutdoorAdventure.bearHunt()
	elseif choice == "Fox" then
		print("You have chosen to hunt foxes. Good luck!")
		greatOutdoorAdventure.foxHunt()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.forestHunt()
	end
end

function greatOutdoorAdventure.lakeFish()
	print("You have arrived at the lake to fish.")
	print("What would you like to fish? Trout or Bass?")
	local choice = io.read()
	if choice == "Trout" then
		print("You have chosen to fish for trout. Good luck!")
		greatOutdoorAdventure.troutFish()
	elseif choice == "Bass" then
		print("You have chosen to fish for bass. Good luck!")
		greatOutdoorAdventure.bassFish()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.lakeFish()
	end
end

function greatOutdoorAdventure.riverFish()
	print("You have arrived at the river to fish.")
	print("What would you like to fish? Catfish or Salmon?")
	local choice = io.read()
	if choice == "Catfish" then
		print("You have chosen to fish for catfish. Good luck!")
		greatOutdoorAdventure.catfishFish()
	elseif choice == "Salmon" then
		print("You have chosen to fish for salmon. Good luck!")
		greatOutdoorAdventure.salmonFish()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.riverFish()
	end
end

function greatOutdoorAdventure.mountainExplore()
	print("You have arrived at the mountain to explore.")
	print("What would you like to explore? Cave or Summit?")
	local choice = io.read()
	if choice == "Cave" then
		print("You have chosen to explore the cave. Have fun!")
		greatOutdoorAdventure.caveExplore()
	elseif choice == "Summit" then
		print("You have chosen to explore the summit. Have fun!")
		greatOutdoorAdventure.summitExplore()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.mountainExplore()
	end
end

function greatOutdoorAdventure.valleyExplore()
	print("You have arrived at the valley to explore.")
	print("What would you like to explore? Forest or River?")
	local choice = io.read()
	if choice == "Forest" then
		print("You have chosen to explore the forest. Have fun!")
		greatOutdoorAdventure.forestExplore()
	elseif choice == "River" then
		print("You have chosen to explore the river. Have fun!")
		greatOutdoorAdventure.riverExplore()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.valleyExplore()
	end
end

function greatOutdoorAdventure.groceryShop()
	print("You have arrived at the grocery store to shop.")
	print("What would you like to buy? Fruit or Vegetable?")
	local choice = io.read()
	if choice == "Fruit" then
		print("You have chosen to buy fruit. Enjoy your shopping!")
		greatOutdoorAdventure.fruitShop()
	elseif choice == "Vegetable" then
		print("You have chosen to buy vegetables. Enjoy your shopping!")
		greatOutdoorAdventure.vegetableShop()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.groceryShop()
	end
end

function greatOutdoorAdventure.clothingShop()
	print("You have arrived at the clothing store to shop.")
	print("What would you like to buy? Shirts or Pants?")
	local choice = io.read()
	if choice == "Shirts" then
		print("You have chosen to buy shirts. Enjoy your shopping!")
		greatOutdoorAdventure.shirtShop()
	elseif choice == "Pants" then
		print("You have chosen to buy pants. Enjoy your shopping!")
		greatOutdoorAdventure.pantsShop()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.clothingShop()
	end
end

function greatOutdoorAdventure.frenchEat()
	print("You have arrived at the French restaurant to eat.")
	print("What would you like to eat? Croissant or Quiche?")
	local choice = io.read()
	if choice == "Croissant" then
		print("You have chosen to eat a croissant. Bon appetit!")
		greatOutdoorAdventure.croissantEat()
	elseif choice == "Quiche" then
		print("You have chosen to eat a quiche. Bon appetit!")
		greatOutdoorAdventure.quicheEat()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.frenchEat()
	end
end

function greatOutdoorAdventure.italianEat()
	print("You have arrived at the Italian restaurant to eat.")
	print("What would you like to eat? Pizza or Pasta?")
	local choice = io.read()
	if choice == "Pizza" then
		print("You have chosen to eat a pizza. Buon appetito!")
		greatOutdoorAdventure.pizzaEat()
	elseif choice == "Pasta" then
		print("You have chosen to eat pasta. Buon appetito!")
		greatOutdoorAdventure.pastaEat()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.italianEat()
	end
end

function greatOutdoorAdventure.swingDance()
	print("You have arrived at the swing dance studio.")
	print("What kind of swing dance would you like to do? Jive or Lindy Hop?")
	local choice = io.read()
	if choice == "Jive" then
		print("You have chosen to do jive. Have fun!")
		greatOutdoorAdventure.jiveDance()
	elseif choice == "Lindy Hop" then
		print("You have chosen to do Lindy Hop. Have fun!")
		greatOutdoorAdventure.lindyHopDance()
	else
		print("That is not a valid option. Please try again.")
		greatOutdoorAdventure.swingDance()
	end
end

function greatOutdoorAdventure.latinDance()
	print("You have arrived at the Latin dance studio.")
	print("What kind of Latin dance would you like to do? Salsa or Cha-cha?")