function result = NewtonCotesFormula(fun, n, a, b)

    % 名称：Newton-Cotes公式
    % 输入：
    %      fun：  积分函数
    %      n：    积分节点数
    %      a：    积分左边界
    %      b：    积分右边界
    % 输出：
    %     result：Newton-Cotes公式积分值

    %% 函数

    result = 0;
    for k = 0: n
        result = result + CotesCoefficient(n, k) * fun(a + (b - a) * k / n);
    end
    result = (b - a) * result;

end
