function root = fixedPointIteration(phi, x0, n)

    % 名称：      不动点迭代
    % 输入：
    %      phi：  迭代函数
    %      x0：   初始解
    %      n：    迭代次数
    % 输出：
    %      root： 迭代解

    %% 函数
    root = x0;
    for k = 1: n
        root = phi(root);
    end

end
