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
