function mapMatrix = groupHomomorphism(G, H)

    % 名称：群同态态射
    % 输入：群G和H
    % 输出：G-->H的同态态射
    % 其中每一行代表一个态射，第j列代表j在该态射下的像

    %% 函数
    
    % 定义群的阶
    m = size(G, 1);
    n = size(H, 1);

    % 初始化映射矩阵
    mapMatrix = zeros(n^m, m);
    
    % 生成所有可能的映射
    for i = 1: n^m
        temp = i - 1;
        for j = m:-1:1
            quotient = floor(temp / n);
            remainder = mod(temp, n);
            mapMatrix(i, j) = remainder + 1;
            temp = quotient;
        end
    end

    % 初始化元素矩阵
    elementMatrix = [];

    % 生成元素矩阵
    for k = 1: m
        elementMatrix = [elementMatrix, [k*ones(1, m); 1: m]];
    end

    % 筛选同态态射
    for k = 1: n^m
        for element = elementMatrix
            if mapMatrix(k, groupOperate(G, element(1), element(2))) ~= groupOperate(H, mapMatrix(k, element(1)), mapMatrix(k, element(2)))
                mapMatrix(k, :) = zeros(1, m);
                break
            end
        end
    end

    % 删除非同态态射
    mapMatrix = mapMatrix(any(mapMatrix, 2), :);

end
