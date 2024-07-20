clear; clc
% 给定数据点
x0 = [0, 1, 2, 3, 4, 5, 6.2832];
y0 = [1.0000, 0.5403, -0.4161, -0.9900, -0.6536, 0.2837, 1.0000];

% 为了满足周期边界条件，将第一个点和最后一个点连接起来
x0 = [x0, x0(1) + 2*pi];
y0 = [y0, y0(1)];

% 进行三次样条插值，使用周期边界条件
cubicSplineInterpolation = csape(x0, y0, 'periodic');

% 计算在x=1.5和x=1.8时的近似值
x = [1.5, 1.8];
y = ppval(cubicSplineInterpolation, x);

% 输出结果
fprintf('cos1.5为：%.3f\n', y(1))
fprintf('cos1.8为：%.3f', y(2))

