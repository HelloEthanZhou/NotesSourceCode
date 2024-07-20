function derivedGroupMatrix = derivedGroup(group, degree)

    % 名称：导群
    % 输入：群运算表group和导群阶
    % 输出：导群元素的编号

    %% 函数
    order = size(group, 1);
    derivedGroupMatrix = 1: order; % 初始化
    for n = 1: degree % 迭代次数
        derivedGroupMatrix = commutatorGroup(group, derivedGroupMatrix);
    end
    
end
