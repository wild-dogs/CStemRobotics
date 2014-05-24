#include <linkbot.h>
// Create new linkbot-I
CLinkbotI b1;

// Connect to bot
b1.connect();

// Reset to zero
b1.resetToZero();

// Moving joints by # of degrees (counter-clockwise)
int a1 = 360;
int a2 = NaN; // I-bot can't move this joint
int a3 = -360; // Would be NaN for an L bot
b1.move(a1, a2, a3);
b1.moveForward(a1); // does same thing

// To go backwards
b1.move(-a1, a2, -a3);
b1.moveBackward(a1);

// Another way to move
double dist = 10; // inches
double radius = 1.75; // Wheel radius
b1.moveDistance(dist, radius);

// Turning
double angle = 90;
double trackwidth = 3.5;
b1.turnLeft(angle, radius, trackwidth);
b1.turnRight(angle, radius, trackwidth);
