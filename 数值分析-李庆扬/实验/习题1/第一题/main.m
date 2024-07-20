clear; clc

% 定义函数
fun = @(x) 1 ./ (1 + 25 .* x .^ 2);
a = -1;
b = 1;

% n=6时等距节点Newton插值
n = 6;
points = 0: n;
points = a + (b - a) / n .* points;
NewtonInterpolationFormula(fun, a, b, points)
title('等距节点Newton插值')
legend('等距节点Newton插值图像','原图像')

% n=10时等距节点Newton插值
n = 10;
points = 0: n;
points = a + (b - a) / n .* points;
NewtonInterpolationFormula(fun, a, b, points)
title('等距节点Newton插值')
legend('等距节点Newton插值图像','原图像')

% n=6时Chebyshev节点Newton插值
n = 6;
points = 0: n;
points = cos((2 .* points + 1) ./ (2 * (n + 1)) .* pi);
NewtonInterpolationFormula(fun, a, b, points)
title('Chebyshev节点Newton插值')
legend('Chebyshev节点Newton插值图像','原图像')

% n=10时Chebyshev节点Newton插值
n = 10;
points = 0: n;
points = cos((2 .* points + 1) ./ (2 * (n + 1)) .* pi);
NewtonInterpolationFormula(fun, a, b, points)
title('Chebyshev节点Newton插值')
legend('Chebyshev节点Newton插值图像','原图像')
