function matrix = Classic4RungeKuttaMethod(fun, h, x0, xend, y0)

    % 名称：        经典四阶Runge-Kutta方法
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
        K1 = fun(matrix(1, k), matrix(2, k));
        K2 = fun(matrix(1, k) + h/2, matrix(2, k) + h*K1/2);
        K3 = fun(matrix(1, k) + h/2, matrix(2, k) + h*K2/2);
        K4 = fun(matrix(1, k) + h, matrix(2, k) + h*K3);
        matrix(2, k+1) = matrix(2, k) + h / 6 * (K1 + 2 * K2 + 2 * K3 + K4);
    end

end
