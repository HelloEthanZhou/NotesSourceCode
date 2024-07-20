function [type, edgeNumber, nodeNumber] = closedSurfaceType(string)
    
    % 名称:闭曲面类型
    % 输入:
    %      string:字符串
    % 输出:
    %      type:闭曲面类型
    %      edgeNumber:边数
    %      nodeNumber:节点类数
    % 说明:
    %      输入为字符串,类型为:
    %      一个字母+其他类型(或没有)+一个字母+其他类型(或没有)+...
    %      相同字母仅输入且输入两次
    %      例如:ab^-1a0cdcbd

    %% 函数

    % 定义多边形表示矩阵
    polygonsRepresentMatrice = stringToMatrix(string);

    % 定义边数
    edgeNumber = size(polygonsRepresentMatrice, 2);

    % 判断是否由同向对
    sameDirectionPairs = 0;
    for i = 1: edgeNumber - 1
        for j = i + 1: edgeNumber
            if all(polygonsRepresentMatrice(:, i) == polygonsRepresentMatrice(:, j))
                sameDirectionPairs = 1;
            end
        end
    end

    % 计算节点类数
    nodeNumber = nodeClass(string);

    % 计算闭曲面类型
    if sameDirectionPairs == 1
        n = (edgeNumber - 2 * nodeNumber + 2) / 2;
        type = [num2str(n), 'P^2'];
    else
        n = (edgeNumber - 2 * nodeNumber + 2) / 4;
        type = [num2str(n), 'T^2'];
    end

end
