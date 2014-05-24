/* Challenge 6: Navigate through slalom course 
 * 60 points
 *       d2                d6
 *     >------|        ----------|
 *     |      |        |         |
 *   d1|    d3|      d5|       d7|
 *     |      |        |        end
 *     ^      |  d4    |
 *   start    >--------^
 */
 
#include <linkbot.h>
CLinkbotI robot;
robot.connect();
double radius = 1.75;

double speed = 200;
robot.setJointSpeeds(speed, NaN, speed);

// Rough estimates, will tweak after testing
int d1 = 6;
int d2 = 12;
int d3 = 12;
int d4 = 12;
int d5 = 12;
int d6 = 12;
int d7 = 10;

double track_width = 4.5;
double angle = 90;

robot.moveDistance(d1, radius);
robot.turnRight(angle, radius, track_width);

robot.moveDistance(d2, radius);
robot.turnRight(angle, radius, track_width);

robot.moveDistance(d3, radius);
robot.turnLeft(angle, radius, track_width);

robot.moveDistance(d4, radius);
robot.turnLeft(angle, radius, track_width);

robot.moveDistance(d5, radius);
robot.turnRight(angle, radius, track_width);

robot.moveDistance(d6, radius);
robot.turnRight(angle, radius, track_width);

robot.moveDistance(d7, radius);
