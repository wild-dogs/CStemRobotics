#include <iostream>
#include <linkbot.h>

CLinkbotI robot;
robot.connect();
robot.resetToZero();

double radius = 1.75;
double track_width = 4;

using namespace std;

// Number of inches to move at a time
double dist = 1;

// Speed to move at;
double speed = 200;

cout << "Valid inputs:" << endl;
cout << "'f' to move forward " << dist << " inches" << endl;
cout << "'b' to move backwards " << dist << " inches" << endl;
cout << "'q' to quit" << endl;

char usr_input;
while (usr_input != 'q') {
    cout << "Input something: ";
    cin >> usr_input;
    
    switch (usr_input) {
        case 'f':
            robot.moveDistance(dist, radius);
            break;
        case 'b':
            robot.moveDistance(-dist, radius);
            break;
    }
}
