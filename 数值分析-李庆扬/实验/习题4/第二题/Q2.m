clear; clc

% 定义系数矩阵
A = zeros(100, 100);
b = transpose([0, 0, 1: 97, 99]);
for n = 1: 100
    A(n, n) = n;
    if n == 1
        A(n, n + 1) = -1;
    elseif n == 100
        A(n, n - 1) = -1;
    else
        A(n, n + 1) = -1;
        A(n, n - 1) = -1;
    end
end

% 精确根
exactRoot = A \ b;

% 迭代求解近似根
x0 = zeros(100, 1);   % 初始根
approximateRoot = x0; % 近似根
n = 0;
tic % 启动计时器
while norm(b - A * approximateRoot) > 1e-8
    n = n + 1;
    approximateRoot = conjugateGradient(A, b, x0, n);
end
runTime = toc; % 计算时间
error = norm(exactRoot - approximateRoot); % 计算误差

% 输出结果
disp('数值近似解为：')
disp(approximateRoot)
fprintf('迭代步数为：%d步\n', n);
fprintf('计算时间：%f秒\n', runTime)
fprintf('误差为：%e\n', error)
