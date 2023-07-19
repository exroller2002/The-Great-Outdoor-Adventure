%The Great Outdoor Adventure

%Define Variables
total_miles = 1000;
total_days = 10;

%Calculate Average Miles per Day
avg_miles_day = total_miles/total_days;

%Display Average Miles Per Day
disp(['The average miles per day is ',num2str(avg_miles_day),'.']);

%Set Up Structure for Data
adventure = struct('Day',1:total_days,'Miles',0);

%Loop Through Days
for i=1:total_days 
    %Prompt User for Miles Traveled
   miles = input(['How many miles did you travel on Day ',num2str(i),'? ']);
   %Input Data into Structure
   adventure(i).Day = i;
   adventure(i).Miles = miles;
end

%Create Vector for Miles Traveled for Each Day
miles_days = [adventure(1:end).Miles].';

%Calculate Total Miles Traveled
total_miles_traveled = sum(miles_days);

%Calculate Miles Remaining
total_miles_remaining = total_miles - total_miles_traveled;

%Display Results
disp(['Total Miles Traveled: ',num2str(total_miles_traveled)]);
disp(['Total Miles Remaining: ',num2str(total_miles_remaining)]);

%Calculate Days Remaining
days_remaining = total_miles_remaining/avg_miles_day;

%Display Days Remaining
disp(['Days Remaining: ',num2str(days_remaining),'.']);

%Set Up Plot
figure
hold on

%Loop Through Structure
for i=1:total_days
    %Plot Miles Traveled By Day
    plot(adventure(i).Day,adventure(i).Miles,'b.','MarkerSize',20)
end

%Label Plot
title('Miles Traveled Each Day')
xlabel('Day')
ylabel('Miles')

%Display Congratulations Message
disp(['Congratulations! You have achieved your goal of ',num2str(total_miles),' miles in ',num2str(total_days),' days!']);