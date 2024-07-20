function fun = polynomialInterpolationFormula(x0, y0)

    % 名称：          多项式插值公式
    % 输入：
    %      x0：       插值点横坐标
    %      y0：       插值点纵坐标
    % 输出：          多项式插值公式

    %% 函数

    N = length(x0);

    % 初始化系数矩阵
    A = ones(N, N);
    for n = 2: N
        A(n, :) = x0 .^ (n-1); 
    end
    A = A';

    % 求解系数
    coefficient = A \ y0';

    % 输出多项式插值函数
    syms x
    fun = coefficient(1);
    for n = 2: N
        fun = fun + coefficient(n) .* x .^ (n - 1);
    end
    fun = matlabFunction(fun);

end
