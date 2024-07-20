function matrix = EulerFormula(fun, h, x0, xend, y0)

    % 名称：        Euler公式
    % 输入：
    %      fun：    函数
    %      h：      步长
    %      x0：     初始x值
    %      xend：   终止x值
    %      y0：     初始y值
    % 输出：
    %      matrix： 近似解

    %% 函数
    n = length(x0: h: xend);
    matrix = [x0: h: xend; y0, zeros(1, n-1)];
    for k = 1: n-1
        matrix(2, k+1) = matrix(2, k) + h * fun(matrix(1, k), matrix(2, k));
    end

end
