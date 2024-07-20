clear; clc

% 不动点迭代
phi = @(x) (3 * x + 1) .^ (1 / 3);
x0 = 2;
fixedPointRoot = fixedPointIteration(phi, x0, 1);
fixedPointRootMatrix = [x0, fixedPointRoot];
fixedPointNumber = 1;
while abs(fixedPointRootMatrix(end) - fixedPointRootMatrix(end - 1)) >= 1e-6
    fixedPointNumber = fixedPointNumber + 1;
    fixedPointRoot = fixedPointIteration(phi, x0, fixedPointNumber);
    fixedPointRootMatrix = [fixedPointRootMatrix, fixedPointRoot];
end

% Steffensen迭代
phi = @(x) (3 * x + 1) .^ (1 / 3);
x0 = 2;
SteffensenRoot = SteffensenIteration(phi, x0, 1);
SteffensenRootMatrix = [x0, SteffensenRoot];
SteffensenNumber = 1;
while abs(SteffensenRootMatrix(end) - SteffensenRootMatrix(end - 1)) >= 1e-6
    SteffensenNumber = SteffensenNumber + 1;
    SteffensenRoot = SteffensenIteration(phi, x0, SteffensenNumber);
    SteffensenRootMatrix = [SteffensenRootMatrix, SteffensenRoot];
end

% Newton迭代
fun = @(x) x^3 - 3*x - 1;
x0 = 2;
NewtonRoot = NewtonIteration(fun, x0, 1);
NewtonRootMatrix = [x0, NewtonRoot];
NewtonNumber = 1;
while abs(NewtonRootMatrix(end) - NewtonRootMatrix(end - 1)) >= 1e-6
    NewtonNumber = NewtonNumber + 1;
    NewtonRoot = NewtonIteration(fun, x0, NewtonNumber);
    NewtonRootMatrix = [NewtonRootMatrix, NewtonRoot];
end

% Newton下山迭代
fun = @(x) x^3 - 3*x - 1;
x0 = 0.6;
NewtonDescentRoot = NewtonDescentIteration(fun, x0, 1);
NewtonDescentRootMatrix = [x0, NewtonDescentRoot];
NewtonDescentNumber = 1;
while abs(NewtonDescentRootMatrix(end) - NewtonDescentRootMatrix(end - 1)) >= 1e-6
    NewtonDescentNumber = NewtonDescentNumber + 1;
    NewtonDescentRoot = NewtonDescentIteration(fun, x0, NewtonDescentNumber);
    NewtonDescentRootMatrix = [NewtonDescentRootMatrix, NewtonDescentRoot];
end

% 精确解
root = roots([1, 0, -3, -1]);

% 输出结果
disp('精确解为：')
disp(root)
disp('---------------------------------------------')
disp(' ')
%  创建表格
iterationName = {'不动点迭代'; 'Steffensen迭代'; 'Newton迭代'; 'Newton下山迭代'};
number = [fixedPointNumber; SteffensenNumber; NewtonNumber; NewtonDescentNumber];
root = [fixedPointRoot; SteffensenRoot; NewtonRoot; NewtonDescentRoot];
variableNames = {'迭代方法', '迭代次数', '迭代解'};
T = table(iterationName, int16(number), vpa(root, 5), 'VariableNames', variableNames);
% 显示表格
disp(T)
