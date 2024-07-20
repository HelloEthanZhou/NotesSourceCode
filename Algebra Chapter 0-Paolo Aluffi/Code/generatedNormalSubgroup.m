function generatedNormalSubgroupMatrix = generatedNormalSubgroup(group, subset)

    % 名称：生成子群
    % 输入：群运算表group，子集subset
    % 输出：生成子群元素的编号

    %% 函数
    normalSubgroupMatrix = normalSubgroup(group);
    % 初始化一个空矩阵来存储符合条件的子集
    supsetnormalGroupMatrix = [];
    % 逐行比较subset和subgroupMatrix的每一行
    for n = 1: size(normalSubgroupMatrix, 1)
        % 如果subset的所有元素都在subgroupMatrix的这一行中
        if all(ismember(subset, normalSubgroupMatrix(n, :)))
            % 将这一行添加到supsetgroupMatrix中
            supsetnormalGroupMatrix = [supsetnormalGroupMatrix; normalSubgroupMatrix(n, :)];
        end
    end
    
    % 找出supsetgroupMatrix每一行的公共元素
    generatedNormalSubgroupMatrix = supsetnormalGroupMatrix(1, :);
    for n = 1: size(supsetnormalGroupMatrix, 1)
        generatedNormalSubgroupMatrix = intersect(generatedNormalSubgroupMatrix, supsetnormalGroupMatrix(n, :));
    end
    generatedNormalSubgroupMatrix = transpose(nonzeros(generatedNormalSubgroupMatrix));

end