#include <linkbot.h>
#include <chplot.h>

CLinkbotI robot;
robot.connect();
robot.resetToZero();
double radius = 1.75;
double distance = 24;
double time = 10;

CPlot plot;
double time_interval = 0.1;
int num_data_pts; 
robotRecordData_t timedata, distances;

double angle = distance2angle(radius, distance);
double joint_speed = angle / time;

robot.setJointSpeeds(joint_speed, NaN, joint_speed);

robot.recordDistanceBegin(ROBOT_JOINT1, timedata, distances, radius, time_interval);
robot.moveForward(angle);
robot.recordDistanceEnd(ROBOT_JOINT1, num_data_pts);

plot.mathCoord();
plot.title("Distance vs. time");
plot.label(PLOT_AXIS_X, "time (s)");
plot.label(PLOT_AXIS_Y, "distance (inches)");
plot.data2DCurve(timedata, distances, num_data_pts);
plot.plotting();

