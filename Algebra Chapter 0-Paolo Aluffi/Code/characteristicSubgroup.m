function characteristicSubgroupMatrix = characteristicSubgroup(group)

    % 名称：特征子群
    % 输入：群运算表group
    % 输出：所有特征子群
    % 说明：characteristicSubgroupMatrix每一行代表特征正规子群的元素的编号

    %% 函数
    subgroupMatrix = normalSubgroup(group);
    mapMatrix = groupIsomorphism(group, group);
    order = size(group, 1);
    subgroupNumber = size(subgroupMatrix, 1);
    mapNumber = size(mapMatrix, 1);
    characteristicSubgroupMatrix = [];
    for i = 1: subgroupNumber
        judge = 1;
        subgroups = subgroupMatrix(i, :);
        for j = 1: mapNumber
            im = [];
            map = mapMatrix(j, :);
            for n = 1: order
                if subgroups(n) ~= 0
                    im = [im map(subgroups(n))];
                end
            end
            if ~all(ismember(im, subgroups))
                judge = 0;
                break
            end
        end
        if judge == 1
            characteristicSubgroupMatrix = [characteristicSubgroupMatrix; subgroups];
        end
    end

end
