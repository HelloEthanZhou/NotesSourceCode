function result = dividedDifference(fun, points)

    % 名称：       差商
    % 输入：
    %      fun：   匿名函数
    %      points：需要求解差商的点
    % 输出：
    %      result：差商值

    %% 函数

    % 初始化结果
    result = 0;

    % 外层循环
    for i = 1: length(points)
        % 初始化积
        product = 1;
        % 内层循环
        for j = 1: length(points)
            if j ~= i
                product = product * (points(i) - points(j));
            end
        end
        result = result + fun(points(i)) / product;
    end

end
