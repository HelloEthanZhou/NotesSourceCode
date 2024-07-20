function [element, group, realGroup, order] = quaternionGroup

    % 名称：四元数群
    % 输出: 1.群元素element；2.群运算表group和realGroup；3.群阶order
    % 说明：以element表中元素的位置建立与元素间的双射
    %       如下出现的数字均代表元素的位置，不代表真实元素
    %       realGroup为真实元素
    %       group(i,j)=element(i)*element(j)

    %% 函数

    order = 8;

    element = {
        '1', '-1', ...
        'i', '-i', ...
        'j', '-j', ...
        'k', '-k'};

    realGroup = {
        '1', '-1', 'i', '-i', 'j', '-j', 'k', '-k'; ...
        '-1', '1', '-i', 'i', '-j', 'j', '-k', 'k'; ...
        'i', '-i', '-1', '1', 'k', '-k', '-j', 'j'; ...
        '-i', 'i', '1', '-1', '-k', 'k', 'j', '-j'; ...
        'j', '-j', '-k', 'k', '-1', '1', 'i', '-i'; ...
        '-j', 'j', 'k', '-k', '1', '-1', '-i', 'i'; ...
        'k', '-k', 'j', '-j', '-i', 'i', '-1', '1'; ...
        '-k', 'k', '-j', 'j', 'i', '-i', '1', '-1'};

    group = zeros(order, order);
    for i = 1: order
        for j = 1: order
            for n = 1: order
                if isequal(realGroup(i, j), element(n))
                    group(i, j) = n;
                end
            end
        end
    end

end