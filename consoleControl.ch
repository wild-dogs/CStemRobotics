#include <iostream>
#include <linkbot.h>

void moveForward();
void moveBackward();
void turnLeft();
void turnRight();
void updateSpeed();

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
updateSpeed();

cout << "Valid inputs:" << endl;

cout << "'w' to move forward " << dist << " inches" << endl;
cout << "'s' to move backwards " << dist << " inches" << endl;
cout << "'a' to turn left " << angle << " degrees" << endl;
cout << "'d' to turn right " << angle << " degrees" << endl;

cout << "'j' to set number of inches to move at a time" << endl;
cout << "'k' to set number of degrees to turn at a time" << endl;
cout << "'l' to set motor speed" << endl;

cout << "'q' to quit" << endl;

char usr_input;
while (usr_input != 'q') {
    cout << "Input something: ";
    cin >> usr_input;
    
    switch (usr_input) {
        case 'w':
            moveForward();
            break;
        case 's':
            moveBackward();
            break;
        case 'a':
            turnLeft();
            break;
        case 'd':
            turnRight();
            break;

        case 'j':
            cout << "How many inches: ";
            cin >> dist;
            break;
        case 'k':
            cout << "How many degrees: ";
            cin >> angle;
            break;
        case 'l':
            cout << "What speed: ";
            cin >> speed;
            updateSpeed();
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

void updateSpeed()
{
    robot.setJointSpeeds(speed, NaN, speed);
}
