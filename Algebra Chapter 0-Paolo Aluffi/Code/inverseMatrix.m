function matrix = inverseMatrix(group)

    % 名称：逆元素矩阵
    % 输入：群运算表group
    % 输出：逆元素编号矩阵matrix
    % 说明：matrix(k)表示编号为k的元素的逆元素的编号

    %% 函数
    order = size(group, 1);
    matrix = zeros(1, order);
    for i = 1: order
        for j = 1: order
            if group(i, j) == 1
                matrix(i) = j;
                break
            end
        end
    end

end
