#include <linkbot.h>
#include <chplot.h>

CLinkbotI robot;
double speed = 45; // joint speed
double time_interval = 0.1; // time interval for recording
int num_data_pts; // data points recorded
robotRecordData_t timedata, angledata; // store recorded time and angles
CPlot plot;

robot.connect();
robot.resetToZero();

robot.setJointSpeeds(speed, NaN, speed);

robot.recordAngleBegin(ROBOT_JOINT1, timedata, angledata, time_interval);
robot.moveForward(720);
robot.recordAngleEnd(ROBOT_JOINT1, num_data_pts);

plot.mathCoord();
plot.title("Joint 1: Angles vs. Time");
plot.label(PLOT_AXIS_X, "time (s)");
plot.label(PLOT_AXIS_Y, "angle (degrees)");
plot.data2DCurve(timedata, angledata, num_data_pts);
plot.plotting();
