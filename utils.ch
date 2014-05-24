#include <math.h>

// Radians to/from degrees conversion
double radians = 1;
double degrees = 180;
degrees = radian2degree(radians);
radians = degree2radian(degrees);

// Moving some distance in some amount of time
double radius = 1.75;
double distance = 24;
double time = 10;
double speed = distance / time;
double circum = 2 * M_PI * radius;

double joint_speed = speed / circum * 360;
printf(joint_speed);
