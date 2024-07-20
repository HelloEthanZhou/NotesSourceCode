function root = NewtonDescentIteration(fun, x0, n)

    % 名称：      Newton下山迭代
    % 输入：
    %      fun：  函数
    %      x0：   初始解
    %      n：    迭代次数
    % 输出：
    %      root： 迭代解

    %% 函数
    syms x
    phi = matlabFunction(fun(x) ./ diff(fun(x)));
    root = x0;
    for k = 1: n
        lambda = 1;
        A = abs(fun(root - phi(root) / 2^lambda));
        B = abs(fun(root));
        while A > B
            lambda = lambda + 1;
            A = abs(fun(root - phi(root) / 2^lambda));
            B = abs(fun(root));
        end
        root = root - lambda * phi(root);
    end

end
