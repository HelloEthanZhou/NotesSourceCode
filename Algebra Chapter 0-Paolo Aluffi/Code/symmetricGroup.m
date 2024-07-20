function [element, group, order] = symmetricGroup(n)

    % 名称：n阶对称群S_n
    % 输入：对称群阶数n
    % 输出: 1.群元素element；2.群运算表group；3.群阶order
    % 说明：以element表中元素的位置建立与元素间的双射
    %       如下出现的数字均代表元素的位置，不代表真实元素
    %       element为n!行n列矩阵
    %       其中element(k)代表第k个元素，即第k个双射
    %       第j列代表j在该行代表映射下的像
    %       group(i,j)=element(j) \circ element(i)

    %% 1.群元素
    element = fullPermutation(n);
    element = element(end: -1: 1, :);

    %% 2.群阶
    order = factorial(n);

    %% 3.群运算表
    
    % 初始化
    group = zeros(order, order);
    for i = 1: order
        for j = 1: order
            % 初始化
            permutation = zeros(1, n);
            permutation_i = element(i, :);
            permutation_j = element(j, :);
            % 计算复合映射
            for k = 1: n
                 permutation(k) = permutation_j(permutation_i(k));
            end
            % 找到复合映射的编号
            for k = 1: order
                if element(k, :) == permutation
                    indice = k;
                    break
                end
            end
            % 赋值
            group(i, j) = indice;
        end
    end

end
