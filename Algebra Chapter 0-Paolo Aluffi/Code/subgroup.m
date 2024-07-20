function subgroupMatrix = subgroup(group)

    % 名称：子群
    % 输入：群运算表group
    % 输出：所有子群
    % 说明：subgroupMatrix每一行代表一个子群的元素的编号

    %% 求解子群的阶
    order = size(group, 1);
    factors = [];
    loc = 1;
    for fac = 1: order
	    if mod(order, fac) == 0
            factors(loc) = fac;
		    loc = loc + 1;
	    end
    end

    %% 求解子群
    invMatrix = inverseMatrix(group);
    subgroupMatrix = [];
    for n = factors
        combinations = generateCombinations(n, order);
        for com = combinations'
            judge = 1;
            for i = com'
                for j = com'
                    invj = invMatrix(j);
                    if ~ismember(group(i, invj), com)
                        judge = 0;
                        break
                    end
                end
                if judge == 0
                    break
                end
            end
            if judge == 1 && i == com(end) && j == com(end)
                subgroupMatrix = [subgroupMatrix; com', zeros(1, order - size(com', 2))];
            end
        end
    end

end
