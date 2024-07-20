clear; clc

% 定义函数 f(x) = ln(x)
f = @(x) log(x);

% 待计算的点
x = 0.7;

% 求导数的准确值
exactDerivative = 1 / x;

% 不同的步长
H = transpose(10 .^ (-1: -1: -4));

% 初始化误差矩阵
errors = zeros(numel(H), 3);

% 计算误差
for k = 1: numel(H)
    h = H(k);
    
    % 使用第一个公式计算近似值
    derivative1 = (f(x + h) - f(x)) / h;
    errors(k, 1) = abs(exactDerivative - derivative1);
    
    % 使用第二个公式计算近似值
    derivative2 = (f(x + h) - f(x - h)) / (2 * h);
    errors(k, 2) = abs(exactDerivative - derivative2);
    
    % 使用第三个公式计算近似值
    derivative3 = (f(x - 2 * h) - 8 * f(x - h) + 8 * f(x + h) - f(x + 2 * h)) / (12 * h);
    errors(k, 3) = abs(exactDerivative - derivative3);
end

% 创建表格
variable_names = {'步长', '公式1', '公式2', '公式3'};
T = table(H, errors(:, 1), errors(:, 2), errors(:, 3), 'VariableNames', variable_names);
% 显示表格
format short e
disp(T);
