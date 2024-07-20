clear; clc

% 定义积分函数
fun = @(x) 4 ./ (1 + x .^ 2);

% 计算积分值
int4 = double(NewtonCotesFormula(fun, 3, 0, 1)); % 四点Newton-Cotes公式近似值
int6 = double(NewtonCotesFormula(fun, 5, 0, 1)); % 六点Newton-Cotes公式近似值

% 输出结果
fprintf('四点Newton-Cotes公式近似值为：%.4f\n', int4)
fprintf('六点Newton-Cotes公式近似值为：%.4f\n', int6)
