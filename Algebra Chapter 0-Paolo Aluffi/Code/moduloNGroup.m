function [element, group, realGroup, order] = moduloNGroup(n)

    % 名称：模n单位群(Z/nZ)*
    % 输入：模n单位群阶数n
    % 输出: 1.群元素element；2.群运算表group和realGroup；3.群阶order
    % 说明：以element表中元素的位置建立与元素间的双射
    %       如下出现的数字均代表元素的位置，不代表真实元素
    %       realGroup为真实元素
    %       group(i,j)=element(i)*element(j)

    %% 1.群元素和群阶
    [order, element] = EulerFunction(n);

    %% 3.群运算表
    realGroup = mod(element' * element, n);
    group = zeros(order, order);
    for i = 1: order
        for j = 1: order
            for k = 1: order
                if element(k) == realGroup(i, j)
                    indice = k;
                    break
                end
            end
            % 赋值
            group(i, j) = indice;
        end
    end

end
