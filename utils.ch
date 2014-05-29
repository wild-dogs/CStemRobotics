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

// Robot - cube - robot

#include <linkbot.h>
void moveForward(double dist);
void turn(double angle);

// Create new linkbot-I
CLinkbotI l, r;

double radius = 1.75;

// Connect to bot
l.connect();
r.connect();

int sp = 240;

l.setJointSpeeds(sp, NaN, sp);
r.setJointSpeeds(sp, NaN, sp);

turn(80);
moveForward(30);
moveForward(-30);
turn(-90);
moveForward(15);
turn(80);
moveForward(30);
moveForward(-30);
turn(-90);
moveForward(15);
turn(80);
moveForward(30);

void moveForward(double dist)
{
    // Move forward
    double angle = distance2angle(radius, dist);
    l.moveNB(0, NaN, angle);
    r.move(-angle, NaN, 0);
    l.delaySeconds(1);

}

void turn(double angle)
{
    l.moveNB(0, NaN, angle * 3);
    r.move(angle * 3, NaN, 0);
    l.delaySeconds(1);
}
