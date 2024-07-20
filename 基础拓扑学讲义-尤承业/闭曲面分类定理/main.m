clear; clc

% 输入闭曲面的多边形表示字符串
% 例如输入:ab-1a-1cdcbd
string = input('请输入字符串:', 's');

% 调用函数
[type, edgeNumber, nodeNumber] = closedSurfaceType(string);

% 输出
fprintf('边数为:%d\n', edgeNumber)
fprintf('节点类数为:%d\n', nodeNumber)
fprintf('闭曲面类型为:%s\n', type)