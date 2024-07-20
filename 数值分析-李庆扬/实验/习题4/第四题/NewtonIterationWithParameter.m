function root = NewtonIterationWithParameter(fun, x0, n)

    % 名称：      含参Newton迭代
    % 输入：
    %      fun：  函数
    %      x0：   初始解
    %      n：    迭代次数
    % 输出：
    %      root： 迭代解

    %% 函数
    syms x
    order = orderOfRoot(fun, x0);
    phi = matlabFunction(x - order .* fun(x) ./ diff(fun(x)));
    root = x0;
    for k = 1: n
        root = phi(root);
    end

end
