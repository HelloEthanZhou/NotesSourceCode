function [element, group, order] = directProductOfGroups(G, H)

    % 名称：群的直积
    % 输入：群G和H
    % 输出：1.群元素element；2.群运算表group；3.群阶order
    % 说明：以element表中元素的位置建立与元素间的双射
    %       如下出现的数字均代表元素的位置，不代表真实元素
    %       element为order行2列矩阵
    %       其中element(k)代表第k个元素
    %       element的行向量(i,j)代表G的第i个元素与H的第j个元素
    %       group(i,j)=element(i) * element(j)


    %% 1.群阶
    m = size(G, 1);
    n = size(H, 1);
    order = m * n;

    %% 2.群元素
    element = zeros(order, 2);
    for k = 1: order
        element(k, 1) = ceil(k / n);
        element(k, 2) = k - n * (ceil(k / n)-1);
    end

    %% 3.群运算表
    group = zeros(order, order);

    for i = 1: order
        for j = 1: order
            group(i, j) = ...
                n * (G(element(i, 1), element(j, 1)) - 1) ...
                + H(element(i, 2), element(j, 2));
        end
    end

end
