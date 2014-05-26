#include <iostream>
#include <linkbot.h>

void moveForward();
void moveBackward();
void turnLeft();
void turnRight();

CLinkbotI robot;
robot.connect();
robot.resetToZero();

double radius = 1.75;
double track_width = 4;

using namespace std;

// Number of inches to move at a time
double dist = 1;

// Number of degrees to turn at a time
double angle = 10;

// Speed to move at;
double speed = 200;

cout << "Valid inputs:" << endl;
cout << "'f' to move forward " << dist << " inches" << endl;
cout << "'b' to move backwards " << dist << " inches" << endl;
cout << "'l' to turn left " << angle << " degrees" << endl;
cout << "'r' to turn right " << angle << " degrees" << endl;
cout << "'q' to quit" << endl;

char usr_input;
while (usr_input != 'q') {
    cout << "Input something: ";
    cin >> usr_input;
    
    switch (usr_input) {
        case 'f':
            moveForward();
            break;
        case 'b':
            moveBackward();
            break;
        case 'l':
            turnLeft();
            break;
        case 'r':
            turnRight();
            break;
    }
}

void moveForward()
{
    robot.moveDistance(dist, radius);
}

void moveBackward()
{
    robot.moveDistance(-dist, radius);
}

void turnLeft()
{
    robot.turnLeft(angle, radius, track_width);
}

void turnRight()
{
    robot.turnRight(angle, radius, track_width);
}
