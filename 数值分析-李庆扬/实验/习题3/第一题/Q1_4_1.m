clear; clc

% 定义积分函数
fun = @(x) 4 ./ (1 + x .^ 2);

compoundTrapezoidalFormulaError = zeros(1, 1000);
for n = 2: 1001
    compoundTrapezoidalFormulaError(n - 1) = abs(compoundTrapezoidalFormula(fun, n, 0, 1) - pi);
end

X = 2: 1001;
Y = compoundTrapezoidalFormulaError;

% 定义函数模型
model = fittype(@(a, x) a./(12 * x.^2), 'independent', 'x', 'dependent', 'y');

% 初始参数猜测
initialGuess = 1;

% 进行非线性拟合
fitResult = fit(X', Y', model, 'StartPoint', initialGuess);

% 获取拟合后的参数
a_fit = fitResult.a;

% 计算拟合后的Y
Y_fit = a_fit./(12 * X.^2);

% 计算R方
R_squared = 1 - sum((Y - Y_fit).^2) / sum((Y - mean(Y)).^2);

% 计算RMSE
RMSE = sqrt(sum((Y - Y_fit).^2) / n);

% 计算SSE
SSE = sum((Y - Y_fit).^2);

% 输出结果
fprintf('拟合值: %f\n', a_fit);
fprintf('R方: %f\n', R_squared);
fprintf('RMSE: %f\n', RMSE);
fprintf('SSE: %f\n', SSE);

% 绘制拟合曲线
figure;
plot(X, Y, 'o', X, Y_fit, '-')
legend('原始数据', '拟合曲线');
xlabel('X');
ylabel('Y');