function combinations = generateCombinations2(k, n)
    % 生成组合矩阵的函数
    % 输入：组合大小k，元素总数n
    % 输出:一个C_n^k行，k列矩阵，包含所有可能的组合

    %% 函数

    % 初始化组合矩阵为空
    combinations = [];
    % 初始化当前组合为空
    currentCombination = [];
    % 调用递归函数来生成组合
    generate(1, k, n, currentCombination);
    
    % 递归函数，生成所有可能的组合
    % 输入参数:
    %   - start: 当前迭代的起始元素
    %   - k: 剩余要选择的元素数量
    %   - n: 候选元素的总数
    %   - currentCombination: 当前的组合
    function generate(start, k, n, currentCombination)
        % 当剩余要选择的元素数量为0时，表示已经生成一个组合
        if k == 0
            % 将当前组合添加到组合矩阵中
            combinations = [combinations; currentCombination];
            return;
        end
        
        % 遍历候选元素，生成组合
        for i = start:n
            % 递归调用generate函数，继续生成组合
            generate(i+1, k-1, n, [currentCombination, i]);
        end
    end

end

