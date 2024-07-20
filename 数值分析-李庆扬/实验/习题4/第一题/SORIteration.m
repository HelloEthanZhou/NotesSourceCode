function [judge, root] = SORIteration(A, b, w, x0, n)

    % 名称：      SOR迭代
    % 输入：
    %      A：    系数矩阵
    %      b：    右侧矩阵
    %      w：    松弛因子
    %      x0：   初始解
    %      n：    迭代次数
    % 输出：
    %      judge：是否收敛
    %      root： 迭代解

    %% 函数
    
    % DLU分解
    [D, L, ~] = DLUDecomposition(A);

    % 松弛矩阵
    Bw = eye(size(A)) - (D - w * L) \ A * w;

    % 计算特征值
    eigenvalues = eig(Bw);

    % 判断是否收敛
    if max(abs(eigenvalues)) < 1
        judge = 1;
        root = x0;
        for k = 1: n
            root = Bw * root + (D - w * L) \ b * w;
        end
    else
        judge = 0;
        root = [];
    end

end
