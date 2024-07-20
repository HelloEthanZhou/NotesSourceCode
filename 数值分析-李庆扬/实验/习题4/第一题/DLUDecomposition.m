function [D, L, U] = DLUDecomposition(A)

    % 名称：
    % 输入：
    %      A：欲分解矩阵
    % 输出：
    %      D：对角矩阵
    %      L：下三角矩阵
    %      U：上三角矩阵

    %% 函数

    order = size(A, 1);
    D = zeros(size(A));
    L = zeros(size(A));
    U = zeros(size(A));
    for i = 1: order
        D(i, i) = A(i, i);
        for j = 1: order
            if i > j
                L(i, j) = -A(i, j);
            elseif i < j
                U(i, j) = -A(i, j);
            end
        end
    end

end
