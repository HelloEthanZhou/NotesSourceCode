function permutation = fullPermutation(n)

    % 名称：全排列
    % 输入：n
    % 输出：n!行n列矩阵，每一行为一个全排列

    %%

    if n == 1
        permutation = 1;
    else
        sub_permutations = fullPermutation(n - 1);
        m = size(sub_permutations, 1);
        permutation = zeros(m * n, n);
        for i = 1: m
            for j = 1: n
                permutation((i - 1) * n + j, :) = [sub_permutations(i, 1:j-1), n, sub_permutations(i, j:end)];
            end
        end
    end

end
