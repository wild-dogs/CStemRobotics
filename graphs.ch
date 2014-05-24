#include <chplot.h>
CPlot plot;

char plot_name[] = "Plot of Something";

double x[6] = {0.00, 1.00, 2.00, 3.00, 4.00, 5.00};
double y[6] = {1.23, 2.34, 3.45, 4.56, 5.67, 6.78};

plot.mathCoord();
plot.title(plot_name);
plot.label(PLOT_AXIS_X, "time (s)");
plot.label(PLOT_AXIS_Y, "position (m)");
plot.data2DCurve(x, y, 6);
plot.plotting();
