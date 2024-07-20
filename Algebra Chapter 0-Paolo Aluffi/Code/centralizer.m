function matrix = centralizer(g, group)

    % 名称：中心化子
    % 输入：元素编号g，群运算表group
    % 输出：编号为g的元素的共轭类的编号

    %% 函数
    order = size(group, 1);
    matrix = [];
    for n = 1: order
        if group(g, n) == group(n, g)
            matrix = [matrix, n];
        end
    end

end
