object TheGreatOutdoorAdventure {

  def main(args: Array[String]): Unit = {

    // 1
    println("Welcome to the great outdoor adventure!")

    // 2
    val userName = promptUserName()

    // 3
    val userPreference = promptUserPreference()

    // 4
    val userList = createUserList(userName, userPreference)

    // 5
    val relatedDestinations = getRelatedDestinations(userPreference)

    // 6
    val bestDestination = getBestDestination(relatedDestinations, userList)

    // 7
    printBestDestination(userName, bestDestination)

    // 8
    val userSchedule = createUserSchedule(bestDestination, userName)

    // 9
    val dailySchedule = generateDailySchedule(userSchedule)

    // 10
    val equipmentList = generateEquipmentList(userSchedule)

    // 11
    val packingList = createPackingList(equipmentList)

    // 12
    val budget = generateBudgetForTrip(userSchedule, packingList)

    // 13
    val transportationSchedule = generateTransportationSchedule(userSchedule, bestDestination)

    // 14
    val activities = generateActivities(userSchedule, dailySchedule, transportationSchedule)

    // 15
    val review = getUserReview(userName, userSchedule.length)

    // 16
    displayResult(bestDestination, userSchedule, packingList, budget, transportationSchedule, activities, review)

  }

  // 17 
  def promptUserName(): String = {
    println("Please enter your name:")
    val userName = scala.io.StdIn.readLine()
    userName
  }

  // 18
  def promptUserPreference(): String = {
    println("What type of outdoor activity would you like to do? (ex. hiking, biking, camping, kayaking, fishing, etc.):")
    val userPreference = scala.io.StdIn.readLine()
    userPreference
  }

  // 19
  def createUserList(userName: String, userPreference: String): List[String] = {
    val userList = List(userName, userPreference)
    userList
  }

  // 20 
  def getRelatedDestinations(userPreference: String): List[String] = {
    val relatedDestinations = List("Yellowstone National Park", "Yosemite National Park", "Grand Canyon National Park", "Rocky Mountain National Park", "Acadia National Park")
    relatedDestinations
  }

  // 21
  def getBestDestination(relatedDestinations: List[String], userList: List[String]): String = {
    val bestDestination = relatedDestinations(0)
    bestDestination
  }

  // 22
  def printBestDestination(userName: String, bestDestination: String): Unit = {
    println(s"$userName, the best destination for your adventure is $bestDestination.")
  }

  // 23
  def createUserSchedule(bestDestination: String, userName: String): List[String] = {
    val userSchedule = List(s"Day 1 - Arrive at $bestDestination", 
                            s"Day 2 - Explore $bestDestination",
                            s"Day 3 - Enjoy $bestDestination",
                            s"Day 4 - Depart from $bestDestination")
    userSchedule
  }

  // 24
  def generateDailySchedule(userSchedule: List[String]): List[String] = {
    val dailySchedule = List("7am - Wake up", 
                            "8am - Breakfast",
                            "9am - Begin activities",
                            "12pm - Lunch",
                            "1pm - Resume activities",
                            "5pm - Dinner",
                            "7pm - Socializing",
                            "11pm - Sleep")
    dailySchedule
  }

  // 25
  def generateEquipmentList(userSchedule: List[String]): List[String] = {
    val equipmentList = List("Backpack", 
                            "Tent",
                            "Sleeping bag",
                            "First aid kit",
                            "Water bottle",
                            "Flashlight")
    equipmentList
  }

  // 26
  def createPackingList(equipmentList: List[String]): List[String] = {
    val packingList = List("2 pairs of shoes", 
                          "3 pairs of socks",
                          "2 shirts",
                          "2 pairs of pants",
                          "2 hats",
                          "1 jacket",
                          "waterproof matches",
                          "multi-tool",
                          "sunscreen") ++ equipmentList
    packingList
  }

  // 27
  def generateBudgetForTrip(userSchedule: List[String], packingList: List[String]): Double = {
    val budget = 500.0
    budget
  }

  // 28
  def generateTransportationSchedule(userSchedule: List[String], bestDestination: String): List[String] = {
    val transportationSchedule = List(s"Day 1 - Take train to $bestDestination", 
                                     s"Day 4 - Take train back home")
    transportationSchedule
  }

  // 29
  def generateActivities(userSchedule: List[String], dailySchedule: List[String], transportationSchedule: List[String]): List[String] = {
    val activities = List("Hiking", 
                          "Sightseeing",
                          "Camping",
                          "Fishing",
                          "Kayaking",
                          "Biking")
    activities
  }

  // 30
  def getUserReview(userName: String, numDays: Int): String = {
    val review = s"$userName enjoyed the great outdoor adventure and would highly recommend it to anyone wanting to go on an adventure for $numDays days."
    review
  }

  // 31
  def displayResult(bestDestination: String, userSchedule: List[String], packingList: List[String], budget: Double, transportationSchedule: List[String], activities: List[String], review: String): Unit = {
    println(s"Best destination: $bestDestination")
    println("User schedule:")
    userSchedule.foreach(println)
    println("Packing list:")
    packingList.foreach(println)
    println(s"Budget: $budget")
    println("Transportation schedule:")
    transportationSchedule.foreach(println)
    println("Activities:")
    activities.foreach(println)
    println(review)
  }

}