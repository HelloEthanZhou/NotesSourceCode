function commutatorGroupMatrix = commutatorGroup(group, elementMatrix)

    % 名称：换位子群
    % 输入：群运算表group，群元素编号(可选)
    % 输出：换位子群元素的编号

    %% 函数
    matrix = inverseMatrix(group);
    narginchk(1, 2); % 检查输入参数数量，允许1到2个参数
    if nargin == 1
        order = size(group, 1);
        commutatorGroupMatrix = zeros(1, order^2);
        for i = 1: order
            for j = 1: order
                commutatorGroupMatrix((i-1) * order + j) = group(group(group(i, j), matrix(i)), matrix(j));
            end
        end
    else
        commutatorGroupMatrix = [];
        for i = elementMatrix
            for j = elementMatrix
                commutatorGroupMatrix = [commutatorGroupMatrix, group(group(group(i, j), matrix(i)), matrix(j))];
            end
        end
    end
    commutatorGroupMatrix = sort(unique(commutatorGroupMatrix));
    % commutatorGroupMatrix = generatedNormalSubgroup(group, commutatorGroupMatrix);

end
