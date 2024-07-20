clear; clc

% 定义系数矩阵与初始解
A = [1, -1, 2, 1;
    -1, 3, 0, -3;
    2, 0, 9, -6;
    1, -3, -6, 19];
b = [1; 3; 5; 7];
x0 = [0; 0; 0; 0];

% Jacobi迭代
JacobiRoot = x0;
JacobiNumber = 0;
while norm(b - A * JacobiRoot) > 1e-6
    JacobiNumber = JacobiNumber + 1;
    [JacobiJudge, JacobiRoot] = JacobiIteration(A, b, x0, JacobiNumber);
end

% Gauss-Seidel迭代
GaussSeidelRoot = x0;
GaussSeidelNumber = 0;
while norm(b - A * GaussSeidelRoot) > 1e-6
    GaussSeidelNumber = GaussSeidelNumber + 1;
    [GaussSeidelJudge, GaussSeidelRoot] = GaussSeidelIteration(A, b, x0, GaussSeidelNumber);
end

% SOR迭代
SORRootMatrix = [];
SORNumberMatrix = [];
SORJudgeMatrix = [];
for w = [0.8, 1.2, 1.3, 1.6]
    SORRoot = x0;
    SORNumber = 0;
    while norm(b - A * SORRoot) > 1e-6
        SORNumber = SORNumber + 1;
        [SORJudge, SORRoot] = SORIteration(A, b, w, x0, SORNumber);
    end
    SORRootMatrix = [SORRootMatrix, SORRoot];
    SORNumberMatrix = [SORNumberMatrix, SORNumber];
    SORJudgeMatrix = [SORJudgeMatrix, SORJudge];
end

%  创建表格
iterationName = {'Jacobi'; 'Gauss-Seidel'; 'SOR(w=0.8)'; 'SOR(w=1.2)'; 'SOR(w=1.3)'; 'SOR(w=1.6)'};
judge = [JacobiJudge; GaussSeidelJudge; SORJudgeMatrix'];
number = [JacobiNumber; GaussSeidelNumber; SORNumberMatrix'];
root = [JacobiRoot'; GaussSeidelRoot'; SORRootMatrix'];
variableNames = {'迭代方法', '是否收敛', '迭代次数', '迭代解'};
T = table(iterationName, int16(judge), int16(number), vpa(root, 3), 'VariableNames', variableNames);
% 显示表格
disp(T)
