function [element, group, realGroup, order] = cyclicGroup(n)

    % 名称：模n循环群Z/nZ
    % 输入：循环群阶数n
    % 输出: 1.群元素element；2.群运算表group和realGroup；3.群阶order
    % 说明：以element表中元素的位置建立与元素间的双射
    %       如下出现的数字均代表元素的位置，不代表真实元素
    %       realGroup为真实元素
    %       group(i,j)=element(i)+element(j)

    %% 1.群元素
    element = 0: n-1;

    %% 2.群阶
    order = n;

    %% 3.群运算表
    [i, j] = meshgrid(1: n, 1: n);
    realGroup = mod(i + j - 2, n);
    group = realGroup + 1;

end
