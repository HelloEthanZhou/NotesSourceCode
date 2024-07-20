function matrix = stringToMatrix(string)
    
    % 名称:字符串转为矩阵
    % 输入:
    %      string:字符串
    % 输出:
    %      matrix:矩阵
    % 说明:
    %      输入为字符串,类型为:
    %      一个字母+其他类型(或没有)+一个字母+其他类型(或没有)+...
    %      相同字母仅输入且输入两次
    %      例如:ab^-1a0cdcbd
    %
    %      输出为2行矩阵
    %      第一行代表边类型
    %      第二行代表边方向
    %      例如输入:
    %                a b^{-1} a^{-1} c d c b d
    %      输出矩阵为:
    %                1   2      1    3 4 3 2 4
    %                0   1      1    0 0 0 0 0


    %% 函数
    % 使用正则表达式提取字母
    letterArray = regexp(string, '[a-zA-Z]', 'match');
    
    % 创建一个结构体来存储字母和对应的值
    letterStruct = struct();
    
    % 初始化一个计数器
    count = 1;
    % 遍历字母数组
    for n = 1: length(letterArray)
        % 获取当前字母
        letter = letterArray{n};  
        % 检查字母是否已经在结构体中
        if isfield(letterStruct, letter)
            % 字母已存在，不需要重复存储
            continue;
        end
        % 将字母存储在结构体中，并分配一个唯一的值
        letterStruct.(letter) = count;  
        % 增加计数器
        count = count + 1;
    end
    
    % 初始化矩阵
    matrix = zeros(2, length(string));
    % 转化为矩阵
    for n = 1: length(string)
        if isletter(string(n))
            matrix(1, n) = letterStruct.(string(n));
            if n < length(string) && ~isletter(string(n+1))
                matrix(2, n) = 1;
            end
        end
    end
    % 找到全是0的列的索引
    zeroColumns = all(matrix == 0, 1);
    % 删除全是0的列
    matrix = matrix(:, ~zeroColumns);

end
