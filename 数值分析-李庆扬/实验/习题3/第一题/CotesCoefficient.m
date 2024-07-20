function result = CotesCoefficient(n, k)

    % 名称：Cotes系数
    % 输入：
    %      n
    %      k
    % 输出：
    %     result：Cotes系数C_k^n

    %% 函数
    syms x;

    result = (- 1) ^ (n - k) / (n * factorial(k) * factorial(n - k));
    
    % 定义被积函数
    integrand = 1;
    for i = 0: n
        if i ~= k
            integrand = integrand * (x - i);
        end
    end
    
    % 计算积分
    result = result * int(integrand, 0, n);

end
