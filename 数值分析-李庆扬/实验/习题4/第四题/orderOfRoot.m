function order = orderOfRoot(fun, x0)

    % 名称：      求解函数零点的阶
    % 输入：
    %      fun：  函数
    %      x0：   初始解
    % 输出：
    %      order：x0附近零点的阶

    %% 函数
    syms x
    % 找到最近的根
    roots = solve(fun, x);
    [~, index] = min(abs(roots - x0));
    exactRoot = roots(index);
    
    % 求解精确根的阶
    order = 1;
    Df = matlabFunction(diff(fun(x)));
    while abs(Df(exactRoot)) < 1e-3
        order = order + 1;
        Df = matlabFunction(diff(Df(x)));
    end

end
