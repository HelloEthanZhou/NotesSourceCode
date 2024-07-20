function [judge, root] = JacobiIteration(A, b, x0, n)

    % 名称：      Jacobi迭代
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
    D = DLUDecomposition(A);

    % Jacobi矩阵
    BJ = eye(size(A)) - D \ A;

    % 计算特征值
    eigenvalues = eig(BJ);

    % 判断是否收敛
    if max(abs(eigenvalues)) < 1
        judge = 1;
        root = x0;
        for k = 1: n
            root = BJ * root + D \ b;
        end
    else
        judge = 0;
        root = [];
    end

end
