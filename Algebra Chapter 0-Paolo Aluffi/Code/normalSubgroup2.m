function normalSubgroupMatrix = normalSubgroup2(group)

    % 名称：正规子群
    % 输入：群运算表group
    % 输出：所有正规子群
    % 说明：normalSubgroupMatrix每一行代表一个正规子群的元素的编号

    %% 函数
    order = size(group, 1);
    subgroupMatrix = subgroup(group);
    subgroupNumber = size(subgroupMatrix, 1);
    
    normalSubgroupMatrix = [];
    for N = 1: subgroupNumber

        judge = 1;
        normalSubgroup = subgroupMatrix(N, :);
        normalSubgroup(normalSubgroup == 0) = [];
        normalSubgroupNumber = size(normalSubgroup, 2);
        
        for g = 1: order
            gN = zeros(normalSubgroupNumber, 1);
            Ng = zeros(normalSubgroupNumber, 1);
            for n = 1: normalSubgroupNumber
                gN(n) = group(g, normalSubgroup(n));
                Ng(n) = group(normalSubgroup(n), g);
            end
            gN = unique(sort(gN));
            Ng = unique(sort(Ng));
            if ~isequal(gN, Ng)
                judge = 0;
                break
            end
        end
        if judge == 1
            normalSubgroupMatrix = [normalSubgroupMatrix; normalSubgroup, zeros(1, order-size(normalSubgroup, 2))];
        end

    end

end
