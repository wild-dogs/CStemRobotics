#include <iostream>
#include <linkbot.h>
using namespace std;

// Radians to/from degrees conversion
double radians = 1;
double degrees = 180;
degrees = radian2degree(radians);
radians = degree2radian(degrees);

// Moving some distance in some amount of time
double radius = 1.75;
double distance = 24;
double time = 10;

double angle = distance2angle(radius, distance);
// there is also a angle2distnce() function

double joint_speed = angle / time;
printf("%lf\n", joint_speed);

// Getting user input
cout << "Enter some number: ";
double usr_input;
cin >> usr_input;
cout << "You have entered: " << usr_input << endl;

// Alternatively
printf("Enter another number: ");
scanf("%lf", &usr_input);
printf("You have entered %lf.\n", usr_input);
