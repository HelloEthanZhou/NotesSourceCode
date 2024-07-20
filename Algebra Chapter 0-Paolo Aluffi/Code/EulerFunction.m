function [N, Matrix] = EulerFunction(n)

    % 生成 1 到 n-1 的矩阵
    numbers = 1: n-1;
    
    % 计算每个数与 n 的最大公约数
    gcdMatrix = gcd(numbers, n);
    
    % 使用逻辑索引找到与 n 互素的数
    coprime = numbers(gcdMatrix == 1);
    
    % 将结果转换为矩阵
    Matrix = reshape(coprime, 1, []);

    % 计算元素个数
    N = size(Matrix, 2);

end
