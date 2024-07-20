clear; clc

% 定义积分函数
fun = @(x) 4 ./ (1 + x .^ 2);

trapezoidalNumber = 2;
while abs(compoundTrapezoidalFormula(fun, trapezoidalNumber, 0, 1) - pi) > 0.5 * 10 ^ (-6)
    trapezoidalNumber = trapezoidalNumber + 1;
end

SimpsonNumber = 2;
while abs(compoundSimpsonFormula(fun, SimpsonNumber, 0, 1) - pi) > 0.5 * 10 ^ (-6)
    SimpsonNumber = SimpsonNumber + 1;
end

% 输出结果
fprintf('复合梯形公式需要把区间[0,1]划分成等份%.0f等份\n', trapezoidalNumber)
fprintf('复合Simpson公式需要把区间[0,1]划分成等份%.0f等份\n', SimpsonNumber)
