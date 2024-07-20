function [equivalentClassNumber, equivalentClassMatrix] = nodeClass(string)
    
    % 名称:节点类
    % 输入:
    %      string:字符串
    % 输出:
    %      equivalentClassNumber:闭曲面的顶点类数
    %      equivalentClassMatrix:闭曲面的顶点类矩阵
    % 说明:
    %      输入为字符串,类型为:
    %      一个字母+其他类型(或没有)+一个字母+其他类型(或没有)+...
    %      相同字母仅输入且输入两次
    %      例如:ab^-1a0cdcbd

    %% 准备

    % 定义多边形表示矩阵
    polygonsRepresentMatrice = stringToMatrix(string);

    % 定义节点数量
    nodeNumber = size(polygonsRepresentMatrice, 2);
    
    % 定义节点矩阵
    nodeMatrix = [polygonsRepresentMatrice' zeros(nodeNumber, 2)];
    for n = 1: nodeNumber
        if nodeMatrix(n, 2) == 0
            nodeMatrix(n, 3: 4) = [n mod(n-2, nodeNumber) + 1];
        else
            nodeMatrix(n, 3: 4) = [mod(n-2, nodeNumber) + 1 n];
        end
    end
    
    %% 计算顶点类数和顶点类矩阵
    
    equivalentClassNumber = 0;                             % 初始化等价类数目
    allNode = 1: nodeNumber;                               % 全部节点
    selectedNode = zeros(1, nodeNumber);                   % 初始化已选节点
    selectedNodeNumber = 0;                                % 初始化已选节点数目
    equivalentClassMatrix = [];                            % 初始化等价类矩阵
    
    while selectedNodeNumber < nodeNumber % 设置while循环,直至选取全部节点
    
        unselectedNode = setdiff(allNode, selectedNode); % 重置未选节点
        firstNode = unselectedNode(1);                   % 首节点
        currentSelectedNode = zeros(1, nodeNumber);      % 初始化已选节点
        currentSelectedNodeNumber = 0;                   % 初始化已选节点数目
    
        for n = 1: nodeNumber % 循环寻找首节点所在边和方向
            judge = 1;
            for direc = 3: 4 % 3表示前节点,4表示后节点
                if nodeMatrix(n, direc) == firstNode
                    firstedge = n;                % 首边
                    firstType = nodeMatrix(n, 1); % 首边类型
                    firstDirection = direc;       % 首节点位于首边的方向
                    judge = 0;
                    break
                end
            end
            if judge == 0
                break
            end
        end
        
        currentNode = 0;                   % 初始化迭代节点
        currentedge = firstedge;           % 初始化迭代边
        currentType = firstType;           % 初始化迭代边类型
        currentDirection = firstDirection; % 初始化迭代节点位于迭代边的方向
    
        while firstNode ~= currentNode % 直至所选节点围成圈为止
            
            % 寻找同类型的边
            for n = 1: nodeNumber
                if n ~= currentedge && nodeMatrix(n, 1) == currentType
                    sameTypeedge = n; % 设置同类型的边
                    break
                end
            end
            currentNode = nodeMatrix(sameTypeedge, currentDirection); % 更新迭代节点
            
            % 寻找迭代节点所在的其他边
            for direc = 3: 4 % 3表示前节点,4表示后节点
                if nodeMatrix(mod(sameTypeedge-2, nodeNumber)+1, direc) == currentNode % 如果迭代节点为前边的节点
                    currentedge = mod(sameTypeedge - 2, nodeNumber) + 1; % 更新迭代边
                    currentType = nodeMatrix(currentedge, 1);            % 更新迭代边类型
                    currentDirection = direc;                            % 更新迭代节点位于迭代边的方向
                end
            end
            for direc = 3: 4 % 3表示前节点,4表示后节点
                if nodeMatrix(mod(sameTypeedge, nodeNumber)+1, direc) == currentNode % 如果迭代节点为后边的节点
                    currentedge = mod(sameTypeedge, nodeNumber) + 1; % % 更新迭代边
                    currentType = nodeMatrix(currentedge, 1);        % 更新迭代边类型
                    currentDirection = direc;                        % 更新迭代节点位于迭代边的方向
                end 
            end
    
            currentSelectedNodeNumber = currentSelectedNodeNumber + 1;    % 更新迭代已选节点数目
            selectedNodeNumber = selectedNodeNumber + 1;                  % 更新已选节点数目
            currentSelectedNode(currentSelectedNodeNumber) = currentNode; % 更新迭代已选节点
            selectedNode(selectedNodeNumber) = currentNode;               % 更新已选节点
             
        end
    
        for n = 1: nodeNumber % 修改已选节点矩阵的呈现
            if n ~= nodeNumber
                if currentSelectedNode(n + 1) == 0
                    currentSelectedNode = [currentSelectedNode(n) currentSelectedNode];
                    currentSelectedNode(n + 1) = [];
                    break
                end
            else
                currentSelectedNode = [currentSelectedNode(nodeNumber) currentSelectedNode];
                currentSelectedNode(nodeNumber + 1) = [];
            end
        end
    
        equivalentClassNumber = equivalentClassNumber + 1;                     % 更新等价类数目
        equivalentClassMatrix(equivalentClassNumber, :) = currentSelectedNode; % 更新等价类矩阵
          
    end
    
    % 去除等价类矩阵的零列
    for n = nodeNumber: -1: 1
        if sum(equivalentClassMatrix(:, n)) == 0
            equivalentClassMatrix(:, n) = [];
        else
            break
        end
    end

end
