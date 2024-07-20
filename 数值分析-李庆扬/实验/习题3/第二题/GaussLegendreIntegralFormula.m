function result = GaussLegendreIntegralFormula(fun, n, a, b)

    % 名称：Gauss-Legendre求积公式
    % 输入：
    %      fun：   积分函数
    %      n：     积分节点数
    %      a：     积分左边界
    %      b：     积分右边界
    % 输出：
    %      result：积分值

    %% 函数

    % 求解Legendre多项式的零点
    syms x
    L = diff((x^2-1)^n, x, n) / (2^n * factorial(n)); % Legendre多项式
    root = solve(L);                                  % Legendre多项式的根
    
    % 求解权重
    A = zeros(2 * n, n);
    B = zeros(2 * n, 1);
    for k = 0: 2 * n - 1
        A(k + 1, :) = transpose(root .^ k);
        B(k + 1) = int(x .^ k, -1, 1);
    end
    w = A \ B;

    % 求解积分值
    f = @(x) fun((b - a) / 2 .* x + (b + a) / 2);
    result = (b - a) / 2 * sum(w .* f(root));

end
