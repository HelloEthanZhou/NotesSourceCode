clear; clc

% 定义函数
fun = @(x) sin(x / 10) / 10;
% 计算积分值
int3 = GaussLaguerreIntegralFormula(fun, 3);
int4 = GaussLaguerreIntegralFormula(fun, 4);
% 输出结果
fprintf('三点Gauss-Lagurre公式积分值为：%.10f\n', int3)
fprintf('四点Gauss-Lagurre公式积分值为：%.10f\n', int4)
