function result = compoundSimpsonFormula(fun, n, a, b)

    % 名称：复合Simpson公式
    % 输入：
    %      fun：  积分函数
    %      n：    积分节点数
    %      a：    积分左边界
    %      b：    积分右边界
    % 输出：
    %     result：复合Simpson公式积分值

    %% 函数

    result = fun(a) + fun(b);
    for k = 1: n-1
        result = result + 2 * fun(a + (b - a) * k / n);
    end
    for k = 1: n
        result = result + 4 * fun(a + (b - a) * (k - 1 / 2) / n);
    end
    result = (b - a) / (6 * n) * result;

end
