function root = improvingNewtonIteration(fun, x0, n)

    % 名称：      改进Newton迭代
    % 输入：
    %      fun：  函数
    %      x0：   初始解
    %      n：    迭代次数
    % 输出：
    %      root： 迭代解

    %% 函数
    syms x
    mu = matlabFunction(fun(x) ./ diff(fun(x)));
    phi = matlabFunction(x - mu(x) ./ diff(mu(x)));
    root = x0;
    for k = 1: n
        root = phi(root);
    end

end
