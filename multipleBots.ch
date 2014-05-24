#include <linkbot.h>
// Group 2 robots together
CLinkbotI b1, b2;
CLinkbotIGroup group;

group.addRobot(b1);
group.addRobot(b2);

group.connect();
group.resetToZero();

group.moveForward(180);
group.moveBackward(180);

// Enhanced laziness method
int numBots = 3;
CLinkbotI bots[numBots];
CLinkbotIGroup group2;
group.addRobots(bots);

