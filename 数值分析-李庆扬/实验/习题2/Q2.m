clear; clc

%% 准备数据

% 输入原始数据
x0 = [0.0, 0.2, 0.5, 0.7, 0.85, 1.0];
y0 = [1.000, 1.221, 1.649, 2.014, 2.340, 2.718];
w = [0.1, 0.2, 0.3, 0.1, 0.2, 0.1];

%%  计算加权最小二乘拟合多项式系数
n = 2; % 拟合多项式次数
c = weightedLeastSquaresFit(x0, y0, w, n);
% 输出拟合多项式的系数
disp('二次多项式的系数向量为：')
disp(c)

%%  绘图

% 计算拟合曲线的值
x = linspace(-0.25, 1.25, 1000);
y = c(1) * ones(1, 1000);
for k = 1: n
    y = y + c(k) * x .^ k;
end

% 绘制图形
figure
plot(x, y, 'b-') % 二次拟合曲线，蓝色实线
hold on
plot(x0, y0, 'k+') % 原始数据点，黑色加号
hold off

% 添加图例，标题和网格线
legend('二次拟合曲线', '原始数据点')
title('加权多项式拟合')
grid on

%% 计算误差

% 计算二次拟合曲线的均方误差、最大绝对误差、平均绝对误差
m = size(x0, 2);
y = c(1) * ones(1, m);
for k = 1: n
    y = y + c(k) * x0 .^ k;
end
mse2 = mean((y0 - y.^2)); % 均方误差
mae2 = max(abs(y0 - y)); % 最大绝对误差
mape2 = mean(abs(y0 - y)); % 平均绝对误差

% 输出结果
disp('二次拟合曲线的均方误差、最大绝对误差、平均绝对误差为：')
disp([mse2 mae2 mape2])
