#!/usr/bin/perl

#The Great Outdoor Adventure

# Script to plan an outdoor adventure

# Prompt for the type of activity
print "What type of activity would you like to plan?\n";
$activity = <>;

# Get list of supplies
print "What types of supplies do you need for the activity? \n";
while (1) {
	$supplies = <>;
	if ($supplies eq "done\n") {
		last;
	}
	push(@suppliesList, $supplies);
}

# Get list of people
print "Who all will be joining you? \n";
while (1) {
	$person = <>;
	if ($person eq "done\n") {
		last;
	}
	push(@peopleList, $person);
}

# Get locations
print "Where do you want to go? \n";
while (1) {
	$location = <>;
	if ($location eq "done\n") {
		last;
	}
	push(@locationsList, $location);
}

# Get date
print "When is the best time for the adventure? \n";
$date = <>;

# Print the plan to the screen
print "Your adventure plan: \n";
print "Activity: $activity \n";
print "Supplies: \n";
foreach $item (@suppliesList) {
	print "  -$item";
}
print "Participants: \n";
foreach $person (@peopleList) {
	print "  -$person";
}
print "Locations: \n";
foreach $location (@locationsList) {
	print "  -$location";
}
print "Date: $date \n";