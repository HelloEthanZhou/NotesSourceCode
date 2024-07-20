clear; clc

% 定义函数
fun = @(x) x .^ (1 / 3);

% 定义插值点
x0 = [0.001, 1, 8, 27, 64, 125, 216];
y0 = fun(x0);

% 求解插值公式
fun = polynomialInterpolationFormula(x0, y0);

% 求解插值
x = linspace(0, 220, 1000);
y = fun(x);

% 求解近似值
fprintf('100^(1/3)的近似值为：%.3f', fun(100 ^ (1 / 3)))

% 绘图
figure
plot(x, y)
hold on
plot(x0, y0, 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'r')
hold off
