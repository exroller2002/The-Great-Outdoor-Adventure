#include <stdio.h>
#include <stdlib.h>

int main(){

//Variable Declarations
float nDays;
float nMiles;
float nMeters;
float temp;

// Welcome Text for Adventure
printf("Welcome to The Great Outdoor Adventure!\n\n");

//Prompt user for number of days
printf("How many days do you have for your adventure? ");
scanf("%f", &nDays);

//Set up loop to continue prompting and calculating until nDays has been reached
while (nDays > 0) {
	//Prompt user for number of miles
	printf("How many miles have you traveled on day %.0f?: ", nDays);
	scanf("%f", &nMiles);
	
	//Calculate number of meters traveled
	nMeters = nMiles * 1609.34;
	
	//Print out calculated result
	printf("You have traveled %.2f meters today!\n\n", nMeters);	
	
	//Decrement nDays
	nDays--;
}

//Post Adventure Thank You
printf("Thank you for your Great Outdoor Adventure!\n");

return 0;	
}