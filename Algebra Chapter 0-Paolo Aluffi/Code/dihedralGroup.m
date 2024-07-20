function [element, group, order] = dihedralGroup(n)

    % 名称：n阶二面体群D_2n
    % 输入：二面体群阶数n
    % 输出: 1.群元素element；2.群运算表group；3.群阶order
    % 说明：以element表中元素的位置建立与元素间的双射
    %       如下出现的数字均代表元素的位置，不代表真实元素
    %       element为2n行2列矩阵
    %       其中element(k)代表第k个元素
    %       element的行向量(i,j)代表映射sigma^i tau^j
    %       sigma^n = tau^2 = sigma tau sigma tau = 1
    %       group(i,j)=element(i) \circ element(j)

    %% 1.群元素
    element = [(0: n-1)', zeros(n, 1); (0: n-1)', ones(n, 1)];

    %% 2.群阶
    order = 2 * n;
    %% 3.群运算表

    % 初始化
    group = zeros(order, order);
    for i = 1: order
        for j = 1: order
            
            % 利用sigma^n = tau^2 = sigma tau sigma tau = 1降次
            temp = [element(i, :), element(j, :)];

            % tau^2 = sigma^n = 1降次
            if temp(2) == 0
                map = [mod(temp(1)+temp(3), n), temp(4)];
            elseif temp(3) == 0
                map = [temp(1), mod(temp(2)+temp(4), 2)];
            else
                map = [mod(n+temp(1)-temp(3), n), mod(1+temp(4), 2)];
            end

            % 找到复合映射的编号
            for k = 1: order
                if element(k, :) == map
                    indice = k;
                    break
                end
            end
            % 赋值
            group(i, j) = indice;

        end
    end

end
