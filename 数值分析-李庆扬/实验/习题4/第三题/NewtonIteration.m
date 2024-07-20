function root = NewtonIteration(fun, x0, n)

    % 名称：      Newton迭代
    % 输入：
    %      fun：  函数
    %      x0：   初始解
    %      n：    迭代次数
    % 输出：
    %      root： 迭代解

    %% 函数
    syms x
    phi = matlabFunction(x - fun(x) ./ diff(fun(x)));
    root = x0;
    for k = 1: n
        root = phi(root);
    end

end
