function judge = isSimpleGroup(group)

    % 名称：判断是否为单群
    % 输入：群运算表
    % 输出：若为单群，则输出1；否则，输出0
    
    %% 函数
    if size(group, 1) == 1
        judge = 1;
    else
        normalSubgroupMatrix = normalSubgroup(group);
        judge = size(normalSubgroupMatrix, 1) == 2;
    end

end
