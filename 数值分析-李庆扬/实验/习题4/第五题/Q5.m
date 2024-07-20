clear; clc

% 定义函数
fun = @(x, y) 2 .* y ./ x + x .^ 2 .* exp(x);
x0 = 1;
xend = 2;
y0 = 0;

% Euler法
EulerMatrix05 = EulerFormula(fun, 0.05, x0, xend, y0);
EulerMatrix1 = EulerFormula(fun, 0.1, x0, xend, y0);
EulerMatrix2 = EulerFormula(fun, 0.2, x0, xend, y0);

% 改进Euler法
improvingEulerMatrix05 = improvingEulerFormula(fun, 0.05, x0, xend, y0);
improvingEulerMatrix1 = improvingEulerFormula(fun, 0.1, x0, xend, y0);
improvingEulerMatrix2 = improvingEulerFormula(fun, 0.2, x0, xend, y0);

% 经典四阶Runge-Kutta方法
RungeKuttaMatrix05 = Classic4RungeKuttaMethod(fun, 0.05, x0, xend, y0);
RungeKuttaMatrix1 = Classic4RungeKuttaMethod(fun, 0.1, x0, xend, y0);
RungeKuttaMatrix2 = Classic4RungeKuttaMethod(fun, 0.2, x0, xend, y0);

% 精确解
exactFunction = @(x) x .^ 2 .* (exp(x) - exp(1));

% 比较结果
matrix = [];
for x = [1.2, 1.4, 1.8, 2.0]
    matrix0 = [0.05, exactFunction(x), ...
    EulerMatrix05(2, EulerMatrix05(1, :) == x),...
    improvingEulerMatrix05(2, improvingEulerMatrix05(1, :) == x),...
    RungeKuttaMatrix05(2, RungeKuttaMatrix05(1, :) == x);
    0.1, exactFunction(x), ...
    EulerMatrix1(2, EulerMatrix1(1, :) == x),...
    improvingEulerMatrix1(2, improvingEulerMatrix1(1, :) == x),...
    RungeKuttaMatrix1(2, RungeKuttaMatrix1(1, :) == x);
    0.2, exactFunction(x), ...
    EulerMatrix2(2, EulerMatrix2(1, :) == x),...
    improvingEulerMatrix2(2, improvingEulerMatrix2(1, :) == x),...
    RungeKuttaMatrix2(2, RungeKuttaMatrix2(1, :) == x)];
    matrix = [matrix; matrix0];
end
matrix12 = matrix(1: 3, :);
matrix14 = matrix(4: 6, :);
matrix18 = matrix(7: 9, :);
matrix20 = matrix(10: 12, :);

% 输出结果

%  创建表格
variableNames = {'x', '步长', '精确解', 'Euler法', 'Euler法误差', '改进Euler法', '改进Euler法误差', '经典四阶Runge-Kutta方法', 'Runge-Kutta方法误差'};
num = 8;
X = [1.2; 1.2; 1.2; 1.4; 1.4; 1.4; 1.8; 1.8; 1.8; 2.0; 2.0; 2.0];
T = table(X, matrix(:, 1), vpa(matrix(:, 2), num), ...
    vpa(matrix(:, 3), num), vpa(abs(matrix(:, 3) - matrix(:, 2)), num), ...
    vpa(matrix(:, 4), num), vpa(abs(matrix(:, 4) - matrix(:, 2)), num), ... 
    vpa(matrix(:, 5), num), vpa(abs(matrix(:, 5) - matrix(:, 2)), num), ...
    'VariableNames', variableNames);
% 显示表格
disp(T)
