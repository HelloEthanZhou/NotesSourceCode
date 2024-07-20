clear; clc

%% 一、常见群

% 1.n阶循环群(模n群)
[element, group, realGroup, order] = cyclicGroup(n);

% 2.模n单位群
[element, group, realGroup, order] = moduloNGroup(n);

% 3.n阶对称群
[element, group, order] = symmetricGroup(n);

% 4.n阶二面体群
[element, group, order] = dihedralGroup(n);

%% 二、群运算

% 1.群运算
result = groupOperate(Group, g, h);

% 2.群元素的逆
matrix = inverseMatrix(group);

% 3.群元素的阶
atrix = orderMatrix(group);

% 4.判断是否可交换
ifCommutative(group);

% 5.群直积
[element, group, order] = directProductOfGroups(G, H);

% 6.子群
subgroupMatrix = subgroup(group);

% 7.规范子群
normalSubgroupMatrix = normalSubgroup(group);

%% 三、范畴群

% 1.群同态态射
mapMatrix = groupHomomorphism(G, H);

% 2.群同构态射
mapMatrix = groupIsomorphism(G, H);
