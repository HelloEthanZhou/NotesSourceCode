function class = conjugacyClass(g, group)

    % 名称：共轭类
    % 输入：元素编号g，群运算表group
    % 输出：编号为g的元素的共轭类的编号

    %% 函数
    order = size(group, 1);
    matrix = inverseMatrix(group);
    class = [];
    for n = 1: order
        element = group(group(n, g), matrix(n));
        class = [class, element];
    end
    class = sort(unique(class));

end
