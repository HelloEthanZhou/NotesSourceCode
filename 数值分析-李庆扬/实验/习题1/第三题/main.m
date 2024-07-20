clear;clc
% 已知数据点
x = [0.2, 0.4, 0.6, 0.8, 1.0];
y = [0.98, 0.92, 0.81, 0.64, 0.39];

% 计算三次样条插值多项式的系数
cubicSplineInterpolation = spline(x, [0, y, 0]);

% 显示插值多项式的系数
disp(round(cubicSplineInterpolation.coefs, 2))

round(piecewise_function(0.2+0.08*11), 2)
