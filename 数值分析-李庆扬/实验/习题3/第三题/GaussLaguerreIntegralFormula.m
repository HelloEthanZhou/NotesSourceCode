function result = GaussLaguerreIntegralFormula(fun, n)

    % 名称：Gauss-Laguerre求积公式
    % 输入：
    %      fun：   积分函数
    %      n：     积分节点数
    % 输出：
    %      result：积分值

    %% 函数
    syms x
    L = exp(x) * diff(x^n * exp(-x), x, n); % Laguerre多项式
    root = solve(L);                        % Laguerre多项式的根
    DL = matlabFunction(diff(L, x));
    result = 0;
    for k = 1: n
        result = result + (factorial(n))^2 / root(k) / (DL(root(k)))^2 * fun(root(k));
    end

end
