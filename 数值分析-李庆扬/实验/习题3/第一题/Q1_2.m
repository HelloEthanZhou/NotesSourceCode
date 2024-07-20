clear; clc

% 定义积分函数
fun = @(x) 4 ./ (1 + x .^ 2);

% 计算积分值
trapezoidal1 = compoundTrapezoidalFormula(fun, 10, 0, 1); % 间距为0.1的复合梯形公式近似值
trapezoidal2 = compoundTrapezoidalFormula(fun, 5, 0, 1); % 间距为0.2的复合梯形公式近似值
Simpson1 = compoundSimpsonFormula(fun, 10, 0, 1); % 间距为0.1的复合Simpson公式近似值
Simpson2 = compoundSimpsonFormula(fun, 5, 0, 1); % 间距为0.2的复合Simpson公式近似值

% 输出结果
fprintf('间距为0.1的复合梯形公式近似值为：%.5f\n', trapezoidal1)
fprintf('间距为0.2的复合梯形公式近似值为：%.5f\n', trapezoidal2)
fprintf('间距为0.1的复合Simpson公式近似值为：%.10f\n', Simpson1)
fprintf('间距为0.2的复合Simpson公式近似值为：%.10f\n', Simpson2)
