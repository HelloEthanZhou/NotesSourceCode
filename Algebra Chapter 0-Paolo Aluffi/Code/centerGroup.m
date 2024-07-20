function centreGroupMatrix = centerGroup(group)

    % 名称：中心子群
    % 输入：群运算表group
    % 输出：中心子群元素的编号

    %% 函数
    centreGroupMatrix = [];
    order = size(group, 1);
    for n = 1: order
        judge = 1;
        for k = 1: order
            if group(n, k) ~= group(k, n)
                judge = 0;
            end
        end
        if judge == 1
            centreGroupMatrix = [centreGroupMatrix, n];
        end
    end

end
