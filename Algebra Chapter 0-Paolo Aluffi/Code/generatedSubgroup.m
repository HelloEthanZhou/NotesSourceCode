function generatedSubgroupMatrix = generatedSubgroup(group, subset)

    % 名称：生成子群
    % 输入：群运算表group，子集subset
    % 输出：生成子群元素的编号

    %% 函数
    subgroupMatrix = subgroup(group);
    % 初始化一个空矩阵来存储符合条件的子集
    supsetgroupMatrix = [];
    % 逐行比较subset和subgroupMatrix的每一行
    for n = 1: size(subgroupMatrix, 1)
        % 如果subset的所有元素都在subgroupMatrix的这一行中
        if all(ismember(subset, subgroupMatrix(n, :)))
            % 将这一行添加到supsetgroupMatrix中
            supsetgroupMatrix = [supsetgroupMatrix; subgroupMatrix(n, :)];
        end
    end
    
    % 找出supsetgroupMatrix每一行的公共元素
    generatedSubgroupMatrix = supsetgroupMatrix(1, :);
    for n = 1: size(supsetgroupMatrix, 1)
        generatedSubgroupMatrix = intersect(generatedSubgroupMatrix, supsetgroupMatrix(n, :));
    end
    generatedSubgroupMatrix = transpose(nonzeros(generatedSubgroupMatrix));

end