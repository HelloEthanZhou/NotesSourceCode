function c = weightedLeastSquaresFit(x, y, w, n)

    % 名称：  加权最小二乘拟合
    % 输入：
    %      x：拟合点横坐标
    %      y：拟合点纵坐标
    %      w：拟合权重
    %      n：拟合多项式次数
    % 输出：
    %      c：拟合多项式系数

    %% 函数

    % 计算系数矩阵
    A = zeros(n + 1, n + 1);
    b = zeros(n + 1, 1);
    for i = 1: n + 1
        b(i) = sum(w .* y .* x .^ (i - 1));
        for j = 1: n + 1
            A(i, j) = sum(w .* x .^ (i + j - 2));
        end
    end
    % 求解多项式系数
    c = A \ b;

end