clear; clc

%% 准备数据

% 输入原始数据
x0 = [-1, -0.75, -0.5, 0, 0.25, 0.5, 0.75];
y0 = [1.00, 0.8125, 0.75, 1.00, 1.3125, 1.75, 2.3125];

%% 计算最小二乘拟合多项式系数

% 利用polyfit函数，分别用一、二、三次多项式对数据点进行最小二乘拟合
p1 = polyfit(x0, y0, 1); % 一次多项式的系数向量
p2= polyfit(x0, y0, 2); % 二次多项式的系数向量
p3 = polyfit(x0, y0, 3); % 三次多项式的系数向量

% 输出拟合多项式的系数
disp('一次多项式的系数向量为：')
disp(p1)
disp('二次多项式的系数向量为：')
disp(p2)
disp('三次多项式的系数向量为：')
disp(p3)

%%  绘图

% 计算拟合曲线的值
x = linspace(-1.25, 1, 1000);
y1 = polyval(p1, x);
y2 = polyval(p2, x);
y3 = polyval(p3, x);

% 绘制图形
figure
plot(x, y1, 'b-') % 一次拟合曲线，蓝色实线
hold on
plot(x, y2, 'r--') % 二次拟合曲线，红色虚线
plot(x, y3, 'g-.') % 三次拟合曲线，绿色点划线
plot(x0, y0, 'k+') % 原始数据点，黑色加号
hold off

% 添加图例，标题和网格线
legend('一次拟合曲线', '二次拟合曲线', '三次拟合曲线', '原始数据点')
title('多项式拟合')
grid on

%% 计算误差

% 计算一次拟合曲线的均方误差、最大绝对误差、平均绝对误差
mse1 = mean((y0 - polyval(p1, x0)).^2); % 均方误差
mae1 = max(abs(y0 - polyval(p1, x0))); % 最大绝对误差
mape1 = mean(abs(y0 - polyval(p1, x0))); % 平均绝对误差

% 计算二次拟合曲线的均方误差、最大绝对误差、平均绝对误差
mse2 = mean((y0 - polyval(p2, x0)).^2); % 均方误差
mae2 = max(abs(y0 - polyval(p2, x0))); % 最大绝对误差
mape2 = mean(abs(y0 - polyval(p2, x0))); % 平均绝对误差

% 计算三次拟合曲线的均方误差、最大绝对误差、平均绝对误差
mse3 = mean((y0 - polyval(p3, x0)).^2); % 均方误差
mae3 = max(abs(y0 - polyval(p3, x0))); % 最大绝对误差
mape3 = mean(abs(y0 - polyval(p3, x0))); % 平均绝对误差

% 输出结果
disp('一次拟合曲线的均方误差、最大绝对误差、平均绝对误差为：')
disp([mse1 mae1 mape1])
disp('二次拟合曲线的均方误差、最大绝对误差、平均绝对误差为：')
disp([mse2 mae2 mape2])
disp('三次拟合曲线的均方误差、最大绝对误差、平均绝对误差为：')
disp([mse3 mae3 mape3])