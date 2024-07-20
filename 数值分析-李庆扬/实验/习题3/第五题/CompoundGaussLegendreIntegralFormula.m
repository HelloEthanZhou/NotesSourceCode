function result = CompoundGaussLegendreIntegralFormula(fun, n, k, a, b)

    % 名称：复合Gauss-Legendre求积公式
    % 输入：
    %      fun：   积分函数
    %      n：     积分区间数
    %      k：     区间积分节点数
    %      a：     积分左边界
    %      b：     积分右边界
    % 输出：
    %      result：积分值

    %% 函数
    result = 0;
    x = @(i) a + (b - a) / n * i;
    for i = 1: n
        result = result + GaussLegendreIntegralFormula(fun, k, x(i - 1), x(i));
    end

end
