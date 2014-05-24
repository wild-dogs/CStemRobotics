#include <linkbot.h>
// Create new linkbot-I
CLinkbotI robot;

// Connect to bot
robot.connect();

// Reset to zero
robot.resetToZero();

// Delay
robot.delaySeconds(1);

double radius = 1.75; // Wheel radius

// Getting/setting joint speeds
double joint1Speed;
double joint3Speed;
robot.getJointSpeed(ROBOT_JOINT1, joint1Speed); // Get joint speed of single joint
robot.getJointSpeeds(joint1Speed, NaN, joint3Speed); // Get all the joint speeds
robot.setJointSpeed(ROBOT_JOINT1, joint1Speed); // Set joint speed of single joint (max of 240 degrees/second)
robot.setJointSpeeds(joint1Speed, NaN, joint3Speed); // Set all the joint speeds


// Getting/setting joint speed ratios (0-1, corresponds with percentage of max speed)
double joint1Ratio;
double joint3Ratio;
robot.getJointSpeedRatio(ROBOT_JOINT1, joint1Ratio);// Get joint speed ratio of single joint
robot.getJointSpeedRatios(joint1Ratio, NaN, joint3Ratio); // Get all the joint speed ratios
robot.setJointSpeedRatio(ROBOT_JOINT1, joint1Ratio); // Set joint speed ratios of single joint (0 to 1)
robot.setJointSpeedRatios(joint1Ratio, NaN, joint3Ratio); // Set all the joint speed ratios

// 2 wheel robot - set speed (in/sec)
double speed = 25; //inches per second
robot.setTwoWheelRobotSpeed(speed, radius);

// Moving joints by # of degrees (counter-clockwise) (relative position)
int a1 = 360;
int a2 = NaN; // I-bot can't move this joint
int a3 = -360; // Would be NaN for an L bot
robot.move(a1, a2, a3);
robot.moveForward(a1); // does same thing
// Move one joint by # of degrees
robot.moveJoint(ROBOT_JOINT1, a1);

// To go backwards
robot.move(-a1, a2, -a3);
robot.moveBackward(a1);

// Another way to move
double dist = 10; // inches
robot.moveDistance(dist, radius);

// Turning
double angle = 90;
double trackwidth = 3.5;
robot.turnLeft(angle, radius, trackwidth);
robot.turnRight(angle, radius, trackwidth);

// Move joints to a specific angle (absolute position)
a1 = 123;
a3 = 234;
robot.moveTo(a1, a2, a3);
// Move single joint
robot.moveJointTo(ROBOT_JOINT1, a1);

// Getting data
double joint1Angle;
double joint3Angle;
// Get a single joint angle (average of 10 measurements)
robot.getJointAngleAverage(ROBOT_JOINT1, joint1Angle);
// Get all the angles!
robot.getJointAnglesAverage(joint1Angle, NaN, joint3Angle);

// Set movement state over specified time period
// joint state enum values {ROBOT_NEUTRAL(default), ROBOT_FORWARD, ROBOT_BACKWARD, ROBOT_HOLD}
int state1 = ROBOT_HOLD;
int state2 = NaN;
int state3 = ROBOT_HOLD;
double time = 5;
robot.setMovementStateTime(state1, state2, state3, time);
// To set for only 1 joint
robot.setJointMovementStateTime(ROBOT_JOINT1, state1, time);

// Set joint exit state: can be ROBOT_NEUTRAL(default) or ROBOT_HOLD
robot.setExitState(state1);

// get execution time
double t1, t2, elapsed_time;
robot.systemTime(t1); // Windows: time since system last started. Linux: time since Unix epoch
/* Do some stuff */
robot.systemTime(t2);
elapsed_time = t2 - t1;
printf(elapsed_time);
