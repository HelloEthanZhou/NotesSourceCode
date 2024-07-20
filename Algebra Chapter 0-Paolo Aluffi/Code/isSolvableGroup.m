function judge = isSolvableGroup(group)

    % 名称：判断是否为可解群
    % 输入：群运算表
    % 输出：若为可解群，则输出1；否则，输出0
    
    %% 函数
    order = size(group, 1);
    elementMatrix = 1: order;
    m = 1;
    n = 0;
    while m ~= n
        m = size(elementMatrix, 2);
        elementMatrix = commutatorGroup(group, elementMatrix);
        n = size(elementMatrix, 2);
    end
    if m == 1
        judge = 1;
    else
        judge = 0;
    end

end
