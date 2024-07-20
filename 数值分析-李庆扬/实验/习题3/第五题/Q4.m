clear; clc

% 定义函数
fun = @(x) 4 ./ (1 + x .^ 2);

% 计算积分值
a = 0;
b = 1;
h = [0.1; 0.2];
int12 = CompoundGaussLegendreIntegralFormula(fun, (b - a) / h(1), 2, a, b);
int13 = CompoundGaussLegendreIntegralFormula(fun, (b - a) / h(1), 3, a, b);
int22 = CompoundGaussLegendreIntegralFormula(fun, (b - a) / h(2), 2, a, b);
int23 = CompoundGaussLegendreIntegralFormula(fun, (b - a) / h(2), 3, a, b);
int = [int12, int13; int22, int23];

% 创建表格
variable_names = {'步长', '两点', '三点'};
precision = 15;  % 设置精度
T = table(vpa(h, 2), vpa(int(:, 1), precision), vpa(int(:, 2), precision), 'VariableNames', variable_names);
% 显示表格
disp(T);
