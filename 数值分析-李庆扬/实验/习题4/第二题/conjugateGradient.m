function root = conjugateGradient(A, b, x0, n)

    % 名称：      共轭梯度算法
    % 输入：
    %      A：    系数矩阵
    %      b：    右侧矩阵
    %      x0：   初始解
    %      n：    迭代次数
    % 输出：
    %      root： 迭代解

    %% 函数

    p = b - A * x0;
    r = b - A * x0;
    rho = dot(r, r);
    alpha = rho / dot(A * p, p);
    root = x0 + alpha * p;
    if n >= 2
        for k = 2: n
            r = b - A * root;
            rho0 = rho;
            rho = dot(r, r);
            beta = rho / rho0;
            p = r + beta * p;
            alpha = rho / dot(A * p, p);
            root = root + alpha * p;
        end
    end

end
