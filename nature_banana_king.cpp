#include<iostream>
#include<string>
#include<vector>
#include<algorithm>
#include <ctime>
#include<cstdlib>

//Create a structure for a person
struct Person {
    std::string name;
    std::string hometown;
    std::string occupation;
    int age;
};

//Function to generate Introductions
std::string generateIntroduction(Person person) {
    std::string intro = "Hello, my name is " + person.name + ". I'm from " + person.hometown + 
    " and I am a " + person.occupation + " and I am " + std::to_string(person.age) + " years old.";
    return intro;
}

//Function to Print Introduction
void printIntroduction(Person person) {
    std::cout << generateIntroduction(person) << std::endl;
}

//Function to create a list of activities
std::vector<std::string> createActivityList() {
    std::vector<std::string> activityList {
        "camping",
        "hiking",
        "fishing",
        "skiing",
        "biking",
        "canoeing"
    };
    return activityList;
}

//Function to randomly select an activity
std::string pickRandomActivity(std::vector<std::string> activityList) {
    srand(time(NULL));
    int randomIndex = rand() % activityList.size();
    return activityList[randomIndex];
}

//Function to Generate a Story
std::string generateStory(Person person, std::string activity) {
    std::string story = "Once upon a time, there was a " + person.occupation + " called " + person.name +
    ". " + person.name + " was " + std::to_string(person.age) + " years old and lived in " + person.hometown + 
    ". " + person.name + " was looking for an adventure one day, so they decided to go " + activity +
    ". Little did " + person.name + " know that this was the beginning of a great outdoor adventure!";
    return story;
}

//Function to Print Story
void printStory(Person person, std::string activity) {
    std::cout << generateStory(person, activity) << std::endl;
}

int main() 
{
    Person person;
    person.name = "John";
    person.hometown = "New York";
    person.occupation = "businessman";
    person.age = 35;
   
    printIntroduction(person);
    
    std::vector<std::string> activityList = createActivityList();

    std::string activity = pickRandomActivity(activityList);
    
    printStory(person, activity);
    
    return 0;
}