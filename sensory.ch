#include <linkbot.h>

CLinkbotI robot;
robot.connect();

// LED
int r, g, b;
robot.getColorRGB(r, g, b);
r = 10;
g = 20;
b = 100;
robot.setColorRGB(r, g, b);

// Buzzer
int freq[4] = {195, 293, 440, 659};
int i;
for (i = 0; i < 4; i++) {
    robot.setBuzzerFrequencyOn(freq[i]);
    robot.delaySeconds(1);
    robot.setBuzzerFrequencyOff();
}

// Accelerometer
double x, y, z;
robot.getAccelerometerData(x, y, z);

// Battery
double v;
robot.getBatteryVoltage(v);
