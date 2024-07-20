function judge = isCommutativeGroup(group)

    % 名称：判断是否为交换群
    % 输入：群运算表
    % 输出：若可交换，则输出1；否则，输出0

    judge = all(all(group == group'));

end
