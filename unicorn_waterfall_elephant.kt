import java.lang.Math
import java.util.Random

fun main(args: Array<String>) {

 	// Introduction
	println("Welcome to The Great Outdoor Adventure!")

	// Set variables
	val maxHealth = 100
	var playerHealth = maxHealth
	var enemyHealth = maxHealth
	val maxDamage = 25
	val minDamage = 10

	// Generate a random number to decide if the player will start first
	val rand = Random().nextInt(3)

	// Game loop
	while (playerHealth > 0 && enemyHealth > 0) {

		if (rand % 2 == 0) {
			// Player attack
			println("It's your turn to attack!")
			val damageDealt = (Math.random() * maxDamage + minDamage).toInt()
			println("You dealt $damageDealt to the enemy")
			enemyHealth -= damageDealt

			// Enemy attack
			if (enemyHealth > 0) {
				println("Enemy is attacking!")
				val enemyDamageDealt = (Math.random() * maxDamage + minDamage).toInt()
				println("Enemy dealt $enemyDamageDealt to you")
				playerHealth -= enemyDamageDealt
			}
		} else {
			// Enemy attack
			println("Enemy is attacking!")
			val enemyDamageDealt = (Math.random() * maxDamage + minDamage).toInt()
			println("Enemy dealt $enemyDamageDealt to you")
			playerHealth -= enemyDamageDealt

			// Player attack
			if (playerHealth > 0) {
				println("It's your turn to attack!")
				val damageDealt = (Math.random() * maxDamage + minDamage).toInt()
				println("You dealt $damageDealt to the enemy")
				enemyHealth -= damageDealt
			}
		}

		// Display the remaining health of each side
		println("Your health is now $playerHealth")
		println("Enemy health is now $enemyHealth")
	}

	// Game over message
	if (playerHealth <= 0) {
		println("You have been defeated! Game over.")
	} else if (enemyHealth <= 0) {
		println("You have defeated your enemy! You won!")
	}

 	// In the spirit of adventure, choose a random number
	val randAdventure = Random().nextInt(4)

	// Depending on random number, output special message
	when (randAdventure) {
		0 -> println("You have achieved the pinnacle of outdoor adventure in this journey!")
		1 -> println("Your sense of adventure is unparalleled in this adventure!")
		2 -> println("Your profound knowledge of the outdoors has proven successful this journey!")
		3 -> println("Your incredible resilience has propelled you forward in this adventure!")
		else -> println("You have faced many challenges this journey and are a stronger adventurer for it!")
	}

	println("Thanks for playing The Great Outdoor Adventure! Goodbye!")
}