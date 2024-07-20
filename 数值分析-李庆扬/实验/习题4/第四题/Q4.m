clear; clc

% 重根Newton迭代
fun = @(x) x^4 - 4*x^2 + 4;
x0 = 1.5;
reRootsNewtonRoot = reRootsNewtonIteration(fun, x0, 1);
reRootsNewtonRootMatrix = [x0, reRootsNewtonRoot];
reRootsNewtonNumber = 1;
while abs(reRootsNewtonRootMatrix(end) - reRootsNewtonRootMatrix(end - 1)) >= 1e-6
    reRootsNewtonNumber = reRootsNewtonNumber + 1;
    reRootsNewtonRoot = reRootsNewtonIteration(fun, x0, reRootsNewtonNumber);
    reRootsNewtonRootMatrix = [reRootsNewtonRootMatrix, reRootsNewtonRoot];
end

% 含参Newton迭代
fun = @(x) x^4 - 4*x^2 + 4;
x0 = 1.5;
NewtonWithParameterRoot = NewtonIterationWithParameter(fun, x0, 1);
NewtonWithParameterRootMatrix = [x0, NewtonWithParameterRoot];
NewtonWithParameterNumber = 1;
while abs(NewtonWithParameterRootMatrix(end) - NewtonWithParameterRootMatrix(end - 1)) >= 1e-6
    NewtonWithParameterNumber = NewtonWithParameterNumber + 1;
    NewtonWithParameterRoot = NewtonIterationWithParameter(fun, x0, NewtonWithParameterNumber);
    NewtonWithParameterRootMatrix = [NewtonWithParameterRootMatrix, NewtonWithParameterRoot];
end

% 改进Newton迭代
fun = @(x) x^4 - 4*x^2 + 4;
x0 = 1.5;
improvingNewtonRoot = improvingNewtonIteration(fun, x0, 1);
improvingNewtonRootMatrix = [x0, improvingNewtonRoot];
improvingNewtonNumber = 1;
while abs(improvingNewtonRootMatrix(end) - improvingNewtonRootMatrix(end - 1)) >= 1e-6
    improvingNewtonNumber = improvingNewtonNumber + 1;
    improvingNewtonRoot = improvingNewtonIteration(fun, x0, improvingNewtonNumber);
    improvingNewtonRootMatrix = [improvingNewtonRootMatrix, improvingNewtonRoot];
end

% 输出结果
%  创建表格
iterationName = {'重根Newton迭代'; '含参Newton迭代'; '改进Newton迭代'};
number = [reRootsNewtonNumber; NewtonWithParameterNumber; improvingNewtonNumber];
root = [reRootsNewtonRoot; NewtonWithParameterRoot; improvingNewtonRoot];
variableNames = {'迭代方法', '迭代次数', '迭代解'};
T = table(iterationName, int16(number), vpa(root, 5), 'VariableNames', variableNames);
% 显示表格
disp(T)
