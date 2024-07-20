function NewtonInterpolationFormula(fun, a, b, points)

    % 名称：          Newton插值公式
    % 输入：
    %      fun：      匿名函数
    %      a：        插值左端点
    %      b：        插值右端点
    %      points：   插值节点
    % 输出：          插值图像

    %% 函数

    % 横坐标
    x = linspace(a, b, 1000);
    
    % 初始化纵坐标
    y = fun(a);
    % 求和
    for i = 1: length(points) - 1
        % 求解差商
        dividedDif = dividedDifference(fun, points(1: i + 1));
        % 初始化积
        prod = 1;
        % 求积
        for j = 0: i-1
            prod = prod .* (x - points(j + 1));
        end
        y = y + dividedDif .* prod;
    end

    % 绘图
    figure
    plot(x, y, x, fun(x))

end
