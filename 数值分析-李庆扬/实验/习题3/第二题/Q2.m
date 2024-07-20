clear; clc

% 定义函数
fun = @(x) x .* exp(x) ./ (1 + x) .^ 2;
% 计算积分值
int3 = GaussLegendreIntegralFormula(fun, 3, 0, 1);
int5 = GaussLegendreIntegralFormula(fun, 5, 0, 1);
% 输出结果
fprintf('三点Gauss-Legendre公式积分值为：%.10f\n', int3)
fprintf('五点Gauss-Legendre公式积分值为：%.10f\n', int5)
