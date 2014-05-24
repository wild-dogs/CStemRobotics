// Record distance traveled
#include <linkbot.h>
#include <chplot.h>

CLinkbotI robot;
robot.connect();
robot.resetToZero();

double speed = 2.5; // inches per sec
double radius = 1.75;
double distance = 10;

robotRecordData_t timedata, dist;
double time_interval = 0.1; // Time between readings (min of 0.05)
int shift_data = 1; // 1 = data is shifted (default), 0 = data is not shifted
int num_data_points;
CPlot plot;

robot.setTwoWheelRobotSpeed(speed, radius);
robot.recordDistanceBegin(ROBOT_JOINT1, timedata, dist, time_interval, shift_data);
robot.moveDistance(distance, radius);
robot.recordDistanceEnd(ROBOT_JOINT1, num_data_points);

plot.mathCoord();
plot.title("Distance vs time");
plot.label(PLOT_AXIS_X, "Time (s)");
plot.label(PLOT_AXIS_Y, "Distance (in)");
plot.data2DCurve(timedata, dist, num_data_points);
plot.plotting();
