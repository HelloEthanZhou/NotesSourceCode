function combinations = generateCombinations(k, n)
    % 生成组合矩阵的函数
    % 输入：组合大小k，元素总数n
    % 输出:一个C_n^k行，k列矩阵，包含所有可能的组合
    
    % 生成所有可能的组合
    combinations = cell2mat(arrayfun(@(x) nchoosek(1:n, x), k, 'UniformOutput', false)');
end
