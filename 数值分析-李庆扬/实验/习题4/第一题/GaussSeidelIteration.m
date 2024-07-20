function [judge, root] = GaussSeidelIteration(A, b, x0, n)

    % 名称：      Gauss-Seidel迭代
    % 输入：
    %      A：    系数矩阵
    %      b：    右侧矩阵
    %      x0：   初始解
    %      n：    迭代次数
    % 输出：
    %      judge：是否收敛
    %      root： 迭代解

    %% 函数
    
    % DLU分解
    [D, L, ~] = DLUDecomposition(A);

    % Gauss-Seidel矩阵
    BG = eye(size(A)) - (D - L) \ A;

    % 计算特征值
    eigenvalues = eig(BG);

    % 判断是否收敛
    if max(abs(eigenvalues)) < 1
        judge = 1;
        root = x0;
        for k = 1: n
            root = BG * root + (D - L) \ b;
        end
    else
        judge = 0;
        root = [];
    end

end
