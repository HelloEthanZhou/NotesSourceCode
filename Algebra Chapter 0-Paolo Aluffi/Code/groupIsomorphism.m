function mapMatrix = groupIsomorphism(G, H)

    % 名称：群同构态射
    % 输入：群G和H
    % 输出：G-->H的同构态射
    % 其中每一行代表一个态射，第j列代表j在该态射下的像

    %% 函数

    % 定义群的阶
    m = size(G, 1);
    n = size(H, 1);

    if m == n

        % 计算G-->H的同态态射
        mapMatrix = groupHomomorphism(G, H);
        
        % 定义目标排列
        permutation = 1: m;
        
        % 初始化一个逻辑向量，用于标记符合条件的行
        is_permutation = false(size(mapMatrix, 1), 1);
        
        % 遍历每一行
        for k = 1: size(mapMatrix, 1)
            % 判断是否是目标排列
            if isequal(sort(mapMatrix(k, :)), permutation)
                is_permutation(k) = true;
            end
        end
        
        % 从矩阵中选择符合条件的行
        mapMatrix = mapMatrix(is_permutation, :);

    else
        mapMatrix = [];
    end

end
