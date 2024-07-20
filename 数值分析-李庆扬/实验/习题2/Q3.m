clear; clc

%% 准备数据

% 输入原始函数
fun = @(x) sin(pi * x);
rho = @(x) 1;
a = 0;
b = 1;

%% 计算拟合多项式系数
c2 = weightedSquaresApproximatePolynomialFit(fun, rho, 2, a, b);
c3 = weightedSquaresApproximatePolynomialFit(fun, rho, 3, a, b);
c4 = weightedSquaresApproximatePolynomialFit(fun, rho, 4, a, b);

% 输出拟合多项式的系数
disp('二次多项式的系数向量为：')
disp(c2)
disp('三次多项式的系数向量为：')
disp(c3)
disp('四次多项式的系数向量为：')
disp(c4)

%%  绘图

% 计算拟合曲线的值
x = linspace(0, 1, 1000);

y2 = c2(1) * ones(1, 1000);
for k = 1: 2
    y2 = y2 + c2(k) * x .^ k;
end

y3 = c3(1) * ones(1, 1000);
for k = 1: 3
    y3 = y3 + c3(k) * x .^ k;
end

y4 = c4(1) * ones(1, 1000);
for k = 1: 4
    y4 = y4 + c4(k) * x .^ k;
end

% 绘制图形
figure
plot(x, fun(x))    % 原始曲线
hold on
plot(x, y2, 'b-')  % 二次拟合曲线，蓝色实线
plot(x, y3, 'r--') % 三次拟合曲线，红色虚线
plot(x, y4, 'g-.') % 四次拟合曲线，绿色点划线
hold off

% 添加图例，标题和网格线
legend('原始曲线', '二次拟合曲线', '三次拟合曲线', '四次拟合曲线')
title('平方逼近多项式拟合')
grid on
