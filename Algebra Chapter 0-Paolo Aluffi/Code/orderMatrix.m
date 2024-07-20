function matrix = orderMatrix(group)

    % 名称：元素阶矩阵
    % 输入：群运算表group
    % 输出：元素阶矩阵matrix
    % 说明：matrix(k)表示编号为k的元素的阶

    %% 函数
    order = size(group, 1);
    matrix = zeros(1, order);
    for loc = 1: order
        if loc == 1
            matrix(loc) = 1;
        else
            element = loc;
            for n = 2: order
                element = group(element, loc);
                if element == 1
                    matrix(loc) = n;
                    break
                end
            end
        end
    end

end
