function c = weightedSquaresApproximatePolynomialFit(fun, rho, n, a, b)

    % 名称：  加权平方逼近多项式拟合
    % 输入：
    %      fun：拟合函数
    %      rho：拟合权重
    %      n：拟合多项式次数
    %      a：拟合左边界
    %      b：拟合右边界
    % 输出：
    %      c：拟合多项式系数

    %% 函数

    % 计算系数矩阵
    A = zeros(n + 1, n + 1);
    B = zeros(n + 1, 1);
    for i = 1: n + 1
        B(i) = integral(@(x) rho(x) .* fun(x) .* x .^ (i - 1), a, b);
        for j = 1: n + 1
            A(i, j) = integral(@(x) rho(x) .* x .^ (i + j - 2), a, b);
        end
    end
    % 求解多项式系数
    c = A \ B;

end