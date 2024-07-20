function result = groupOperate(Group, g, h)
    
    % 名称：群运算
    % 输入：群Group，以及群元素编号g和h
    % 输出：群元素Group(g)*Group(h)的编号
    % 关于群Group：
    % 给定群Group中元素的编号：1, ..., |Group|
    % Group(n)表示群G中编号为n的元素
    % Group为|G|行|G|列矩阵，其中Group(i,j)=Group(i)*Group(j)

    %% 计算群运算
    result = Group(g, h);

end
