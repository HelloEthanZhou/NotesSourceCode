# Ordinary Differential Equations



## 致敬

**Arthur Mattuck**

> This is what it means to be human. You use your intelligence.

> In my end is my beginning. In my beginning is my end.



## 目录

[TOC]

# 第一章：一阶微分方程

## 1.1方向场和积分曲线

1. 一阶常微分方程：
   $$
   y^{\prime}=f(x,y)
   $$

2. 解析法与图解法

   1. 解析法：由$(1)$解得微分方程的解析解$y(x)$。

   2. 几何法：由$(1)$绘制微分方程的方向场，从而得到积分曲线。

   3. |       解析法        |    几何法    |
      | :-----------------: | :----------: |
      | $y^{\prime}=f(x,y)$ |    方向场    |
      |       $y(x)$        | 积分曲线图像 |

3. 线素：在$R^2$平面上每一点$(x,y)$都可绘制出起始位置固定于该点的向量$(1,y^{\prime}(x,y))$，该向量称为该点的线素。

4. 方向场：在$R^2$平面上所有线素构成方向场。

5. 线素可以表示$R^2$平面上每一点$(x,y)$的斜率，积分曲线在该点与其线素相切。线素及方向场可以刻画积分曲线在该点的变化趋势。反之，可以由方向场粗略的绘制每一条积分曲线。

6. 计算机绘制方向场

   1. 给定间距，取出点集$(x_n,y_n)$；
   2. 在每一点$(x_n,y_n)$，计算$f(x_n,y_n)$；
   3. 在每一点$(x_n,y_n)$，绘制斜率为$f(x_n,y_n)$的线素。

7. 人绘制方向场

   1. 取定斜率值$C$；
   2. 绘制等斜线$f(x,y)=C$；
   3. 在等斜线上绘制线素。

9. 存在与唯一性定理：若函数$f(x,y)$在点$(x_0,y_0)$邻域内连续，且关于$y$的偏导数在点$(x_0,y_0)$邻域内连续，那么通过点$(x_0,y_0)$，微分方程$(1)$存在且存在唯一解。

10. > 函数$f(x,y)$在点$(x_0,y_0)$邻域内连续保证存在性；
    > 函数$f(x,y)$关于$y$的偏导数在点$(x_0,y_0)$邻域内保证唯一性。

11. 积分曲线的性质

    1. 任意两条积分曲线不相交。
    2. 任意两条积分曲线不相切。

## 1.2Euler数值方法及推广

1. 初值问题（IVP）：
   $$
   \begin{cases}
   y^{\prime}=f(x,y)\\
   y(x_0)=y_0
   \end{cases}
   $$

2. Euler方法：对于初值问题$(2)$，选取恒定步长$h$，利用递归方程可获得原初值问题的近似解。递归方程如下：
   $$
   \begin{cases}
   x_{n+1}=x_n+1\\
   y_{n+1}=y_n+{A_n}h\\
   A_n=f(x_n,y_n)
   \end{cases}
   $$

3. > Euler方法具有较强的几何直观，本质上是由一点的变化趋势来近似地刻画该点附近的变化趋势。

4. > Euler方法是求解微分方程的基本方法，其它的数值方法都是对它的改良版而已。Euler利用它来证明解的存在性定理，但现如今人们利用Euler方法来计算数值解。

5. Euler方法的误差

   1. 误差$=$真实值$-$预测值

   2. 二阶导函数为正即凸函数；
      二阶导函数为负即凹函数。

   3. 利用Euler方法来近似初值问题的解，凸函数的误差为负，凹函数的误差为正。

   4. > 该结论实为函数凹凸性的性质。

6. Euler方法的推广

   1. 事实上，Euler方法的误差为一阶误差，即$e\sim ch$。可以通过减小步长$h$来减小误差，同时计算量会线性增长。

   2. 二阶Runge-Kutta方法：对于初值问题$(2)$，选取恒定步长$h$，利用递归方程可获得原初值问题的近似解。递归方程如下：
      $$
      \begin{cases}
      x_{n+1}=x_n+h\\
      y_{n+1}=y_n+\frac{A_n+B_n}{2}h\\
      A_n=f(x_n,y_n)\\
      B_n=f(x_{n+1},y_n+h{A_n})
      \end{cases}
      $$
      二阶Runge-Kutta方法的误差为二阶误差，即$e\sim ch^2$。

   3. > 四阶Runge-Kutta方法：对于初值问题$(2)$，选取恒定步长$h$，利用递归方程可获得原初值问题的近似解。递归方程如下：
      > $$
      > \begin{cases}
      > x_{n+1}=x_n+h\\
      > y_{n+1}=y_n+\frac{A_n+2B_n+2C_n+D_n}{6}h\\
      > A_n=f(x_n,y_n)\\
      > B_n=f(x_n+\frac{h}{2},y_n+\frac{A_n}{2}h)\\
      > C_n=f(x_n+\frac{h}{2},y_n+\frac{B_n}{2}h)\\
      > D_n=f(x_n+h,y_n+C_nh)\\
      > \end{cases}
      > $$
      > 四阶Runge-Kutta方法的误差为四阶误差，即$e\sim ch^4$。

   4. > Euler方法的推广本质上是由一点附近的多个点的变化趋势的平均来近似地刻画该点附近的变化趋势。

7. 数值计算中的陷阱：对于初值问题中的奇点，计算机会在奇点处迷失在无穷远。奇点是跳跃不连续的。

## 1.3一阶线性常微分方程解法

1. 一阶线性常微分方程：
   $$
   y^{\prime}+p(x)y=q(x)
   $$

2. 一阶线性常微分方程的初值问题：
   $$
   \begin{cases}
   y^{\prime}+p(x)y=q(x)\\
   y(x_0)=y_0
   \end{cases}
   $$

4. 一阶线性常微分方程的解法

   1. 将微分方程改写为标准形式$(6)$；

   2. 计算积分因子$u(x)=\mathrm{e}^{\int{p(x)\mathrm{d}x}}$；

   3. 将方程两侧同时乘以积分因子，并积分；

   4. 得到微分方程的解析解
      $$
      y=\mathrm{e}^{-\int{p(x)\mathrm{d}x}}(C+\int{q(x)\mathrm{e}^{\int{p(x)\mathrm{d}x}}\mathrm{d}x}),C\in{R}
      $$

   5. 若考虑初值问题$(7)$，则解为
      $$
      y={y_0}{\mathrm{e}^{-\int_{x_0}^{x}{p(t)\mathrm{d}t}}}+\int_{x_0}^{x}{q(s)\mathrm{e}^{\int_{x_0}^{s}{p(t)\mathrm{d}t}}\mathrm{d}s}
      $$

5. 一阶线性常系数常微分方程：对于一阶线性常微分方程$(6)$，若$p(x)\equiv p$，那么解$(11)$可写成

   
   $$
   y={y_0}\mathrm{e}^{p(x_0-x)}+\int_{x_0}^{x}{q(s)\mathrm{e}^{p(s-x_0)}\mathrm{d}s}
   $$
   

## 1.4一阶方程换元法

1. 尺度变换：对坐标轴进行拉伸或压缩，使得变量发生尺度变化，即$\begin{cases}z=\frac{x}{a}\\w=\frac{y}{b}\end{cases}$。

   1. 改变变量单位；
   2. 无量纲化；
   3. 简化方程，减少参数。

2. 换元

   1. 直接换元：$x_新=f(x_旧)$
   2. 逆换元：$x_旧=f(x_逆)$

3. Bernoulli方程：
   $$
   y^{\prime}=p(x)y+q(x){y^n},n\neq1
   $$

   1. 令$v=y^{1-n}$，则$v^{\prime}=(1-n){y^n}{y^{\prime}}$；

   2. 代入原方程，整理得$\frac{v^{\prime}}{1-n}=p(x)v+q(x)$，此为一阶线性常微分方程；

   3. 解析解为：
      $$
      y^{1-n}=\mathrm{e}^{(1-n)\int{p(x)\mathrm{d}x}}(C+(1-n)\int{q(x)\mathrm{e}^{-(1-n)\int{p(x)\mathrm{d}x}}\mathrm{d}x}),C\in{R}
      $$

4. 齐次常微分方程：
   $$
   y^{\prime}=F(\frac{y}{x})
   $$

   1. 令$z=\frac{y}{x}$，则$y^{\prime}=x{z^{\prime}}+z$；

   2. 代入原方程，整理得$x{\frac{\mathrm{d}z}{\mathrm{d}x}}=F(z)-z$，此为可分离变量方程；

   3. 记$\Phi(z)=\int{\frac{1}{F(z)-z}}$，则解析解为：
      $$
      \Phi(\frac{y}{x})=\ln{|x|}
      $$

   4. > 称函数$f(x,y)$为$n$次齐次函数，当且仅当对于$\forall{t\in{R}}$且$t\neq0$，$f(tx,ty)=t^n{f(x,y)}$。

## 1.5一阶自治微分方程

1. 一阶自治微分方程：
   $$
   \frac{\mathrm{d}y}{\mathrm{d}x}=f(y)
   $$

2. 自洽方程的积分曲线满足水平平移不变性。

3. 临界点：满足$f(y)=0$的点。

4. 对于定义在$R$上的连续函数$f(y)$，一阶自洽微分方程的处理如下：

   1. 求解$f(y)=0$，得到临界点$y=y_0$；
   2. 函数$f(y)$在临界点$y=y_0$左右符号相反，因此微分方程$(17)$的积分曲线$y=y(x)$在直线$y=y_0$上下变化趋势相反，且会趋于临界点。

5. 对于微分方程$(17)$，若$f(y)=ay+b$，其中$a\neq 0$，那么容易知道该方程的解为$y=C{\mathrm{e}^{ax}}-\frac{b}{a},C\in{R}$。

6. 对于微分方程$(17)$，若$f(y)=ay^2+by+c$，其中$a\neq 0$，则分以下情况讨论

   1. $b^2-4ac>0$，则$f(y)=a(y-y_1)(y-y_2)$，那么容易知道该方程的解为$y=\frac{{C_1}{y_2}\mathrm{e}^{a{y_1}x}-{C_2}{y_1}\mathrm{e}^{a{y_2}x}}{{C_1}\mathrm{e}^{a{y_1}x}-{C_2}\mathrm{e}^{a{y_2}x}},C_1,C_2\in{R}$。
   2. $b^2-4ac=0$，则$f(y)=a(y-y_0)^2$，那么容易知道该方程的解为$y=y_0-\frac{1}{ax+C},C\in{R}$或$y=y_0$。
   3. $b^2-4ac<0$，则$f(y)=a((y-y_0)^2+y_m^2)$，，那么容易知道该方程的解为$y=y_0+{y_m}{\tan{(a{y_m}x+C)}},C\in{R}$。

## 1.6复数及复指数

1. 复数：
   $$
   z=a+bi
   $$
   其中$a,b\in{R}$。

2. Euler公式：
   $$
   \mathrm{e}^{i\theta}=\cos\theta+i\sin\theta
   $$

   1. 指数律：${\mathrm{e}^{i{\theta}_1}}{\mathrm{e}^{i{\theta}_2}}=\mathrm{e}^{i({{\theta}_1}+{{\theta}_2})}$；
   2. 微分不变性：$\frac{\mathrm{d}}{\mathrm{d}{\theta}}{\mathrm{e}^{i{\theta}}}=i{\mathrm{e}^{i\theta}}$；
   3. 无穷级数
      1. $\mathrm{e}^x=\sum_{n=0}^{\infty}{\frac{x^n}{n!}}$
      2. $\cos{x}=\sum_{n=0}^{\infty}{\frac{(-1)^n}{(2n)!}{x^{2n}}}$
      3. $\sin{x}=\sum_{n=0}^{\infty}{\frac{(-1)^n}{(2n+1)!}{x^{2n+1}}}$

3. 复数的极坐标形式：
   $$
   z={r}{\mathrm{e}^{i{\theta}}}
   $$
   其中$r$称为模，$\theta$称为辐角。

4. 代数基本定理：在复数域$\C$内，任何复系数一元$n$次多项式都存在根，其中$n\in{N^*}$。

## 1.7一阶常系数线性常微分方程

 1.  对于一阶线性方程$(6)$，若固定函数$p(x)$，那么函数$q(x)$与方程的解$y(x)$构成线性映射。

 2.  一阶常系数线性方程：
     $$
     y^{\prime}+ky=q(x)
     $$
     其解为：
     $$
     y=\mathrm{e}^{-kx}{\int{q(x)\mathrm{e}^{kx}\mathrm{d}x}}+C\mathrm{e}^{-kx},C\in{R}
     $$

 3.  对于一阶常系数线性方程$(21)$，若$q(x)=\cos{\omega x}$，则利用Euler公式$(19)$将方程$(21)$进行复化，即在复数域$\C$内求解一阶常系数线性方程
     $$
     z^{\prime}+kz=\mathrm{e}^{i{\omega}x}
     $$
     方程$(21)$的解为方程$(23)$的解的实部。

     1.  方程$(23)$的解为$y=\frac{\mathrm{e}^{i({\omega}x-{\varphi})}}{\sqrt{k^2+{\omega}^2}}+C\mathrm{e}^{-kx},C\in{R}$，其中$\varphi=\frac{\omega}{k}$；
     2.  当$q(x)=\cos{\omega x}$时，方程$(21)$的解为$y=\frac{\cos{({\omega}x-{\varphi}})}{\sqrt{k^2+{\omega}^2}}+C\mathrm{e}^{-kx},C\in{R}$，其中$\varphi=\frac{\omega}{k}$。

# 第二章：二阶微分方程

## 2.1二阶常系数齐次线性常微分方程

1. 二阶常系数齐次常微分方程：
   $$
   y^{{\prime}{\prime}}+p{y^{\prime}}+qy=0
   $$

2. 二阶常系数齐次常微分方程的解

   1. 特征方程：$r^2+pr+q=0$
   2. $\Delta=p^2-4q>0$，记两实根为$r_1,r_2$，则方程$(24)$解为$y={C_1}\mathrm{e}^{{r_1}x}+{C_2}\mathrm{e}^{{r_2}x},C_1,C_2\in{R}$。
   3. $\Delta=p^2-4q<0$，记两复根为$a\pm bi$，则方程$(24)$解为$y=\mathrm{e}^{a}{({C_1}{\cos{bx}}+{C_2}{\sin{bx}})},C_1,C_2\in{R}$。
   4. $\Delta=p^2-4q=0$，记重根为$r_0$，则则方程$(24)$解为$y={({C_1}+{C_2}x)}\mathrm{e}^{{r_0}x},C_1,C_2\in{R}$。

3. 对于实系数线性常微分方程，若复函数$y=a(x)+{b(x)}i$为方程的解，其中$a(x),b(x)$均为实函数，那么实函数$a(x),b(x)$亦为方程的解。

4. 对于二阶齐次常微分方程$y^{{\prime}{\prime}}+p(x){y^{\prime}}+q(x)y=0$，若已知其特解为$y=\varphi(x)$，则通解为$y={C_1}{\varphi(x)}(C_2+\int{\frac{\mathrm{d}x}{\varphi^2(x)\mathrm{e}^{\int{p(x)\mathrm{d}x}}}})$。

## 2.2二阶线性常微分方程相关理论

1. 对于一般的二阶齐次微分方程
   $$
   y^{\prime \prime}+p(x){y^{\prime}}+q(x)y=0
   $$
   其通解形式为$y={c_1}{y_1}+{c_2}{y_2}$，其中函数$y_1,y_2$线性无关。

1. 对于一般的二阶非齐次线性方程
   $$
   y^{\prime \prime}+p(x){y^{\prime}}+q(x)y=f(x)
   $$
   其通解形式为$y=y_{\mathrm{p}}+y_{\mathrm{c}}=y_{\mathrm{p}}+{c_1}{y_1}+{c_2}{y_2}$，其中$y_{\mathrm{p}}$称为特解，$y_{\mathrm{c}}$称为其相伴齐次方程$(25)$的齐次解。

3. 线性方程与线性算子

   1. 定义微分算子$D$满足$Df=f^{\prime}$，其中$f$为一元可微函数。

   2. 定义线性算子
      $$
      L=D^2+pD+q
      $$
      则方程$(25)$可写成$Ly=0$，方程$(26)$可写成$Ly=f$。

   3. 求解方程$(25)$，即求解线性算子$L$的零空间。

   4. 求解方程$(26)$，即求解方程$Ly=f$的解空间。

   5. 方程$(26)$的解空间与函数$f(x)$构成线性映射。

   4. 线性算子$L$的零空间是二维线性空间，即若方程$(25)$的特解$y_1,y_2$线性无关，则$L$的零空间可表示为二者的张成空间$\mathrm{span}{\{y_1,y_2\}}$。

3. 方程$(25)$的通解$y={c_1}{y_1}+{c_2}{y_2}$满足所有初值条件，即对于任意$y_0,y_0^{\prime}\in{R}$，存在${c_1,c_2}\in{R}$，使得对于通解$y={c_1}{y_1}+{c_2}{y_2}$在任意可定义的点$x_0$处满足$\begin{cases}y(x_0)=y_0\\y^{\prime}(x_0)=y_0^{\prime}\end{cases}$。

   > 这是因为代入初值条件可得${\left(\begin{matrix}y_1&y_2\\y_1^{\prime}&y_2^{\prime}\end{matrix}\right)}{\left(\begin{matrix}c_1\\c_2\end{matrix}\right)}=\left(\begin{matrix}y_0\\y_0^{\prime}\end{matrix}\right)$，若函数$y_1,y_2$线性无关，则其系数矩阵构成Wronskian行列式$W(y_1,y_2)=\begin{vmatrix}y_1&y_2\\y_1^{\prime}&y_2^{\prime}\end{vmatrix}\neq{0}$，该线性方程一定存在解。

5. 对于方程$(25)$的任意两解$y_1,y_2$，若$y_1,y_2$线性相关，则$W(y_1,y_2)\equiv{0}$；若$y_1,y_2$线性无关，则$W(y_1,y_2)\not\equiv{0}$。

6. 正交化的特解：寻找特解$Y_1,Y_2$满足在$x_0$点$\left(\begin{matrix}Y_1&Y_2\\Y_1^{\prime}&Y_2^{\prime}\end{matrix}\right)=\left(\begin{matrix}1&0\\0&1\end{matrix}\right)$。

7. 存在和唯一性定理：对于方程$(25)$，若$p(x),q(x)$对于$x$连续，则存在且存在唯一解满足初值条件$\begin{cases}y(x_0)=y_0\\y^{\prime}(x_0)=y_0^{\prime}\end{cases}$。

## 2.3二阶常系数非齐次线性常微分方程特解求法

1. 二阶常系数非齐次线性常微分方程：
   $$
   y^{{\prime}{\prime}}+p{y^{\prime}}+qy=f(x)
   $$

2. 多项式算子：
   $$
   P(D)=D^2+pD+q
   $$

3. 指数输入定理：$P(D)\mathrm{e}^{{\alpha}x}=P(\alpha)\mathrm{e}^{{\alpha}x}$

4. 指数移位法则：$P(D)\mathrm{e}^{{\alpha}x}u(x)=\mathrm{e}^{{\alpha}x}P(D+\alpha)u(x)$

5. 对于方程$(28)$，若函数$f(x)$为简单指数函数，即可写成$\mathrm{e}^{{\alpha}x},\alpha\in{\C}$，那么可以求解方程$(28)$的特解。

   1. $P(\alpha)\neq{0}:y_{\mathrm{p}}=\frac{\mathrm{e}^{{\alpha}x}}{P(\alpha)}$
   2. $P(\alpha)=0,P^{\prime}(\alpha)\neq{0}:y_{\mathrm{p}}=\frac{x{\mathrm{e}^{{\alpha}x}}}{P^{\prime}(\alpha)}$
   3. $P(\alpha)=0,P^{\prime}(\alpha)=0:y_{\mathrm{p}}=\frac{{x^2}{\mathrm{e}^{{\alpha}x}}}{P^{\prime\prime}(\alpha)}$

## 2.4Fourier级数

1. 函数正交：函数$u(x),v(x)$为以$2\pi$为周期的函数，称两函数在周期$[-\pi,\pi]$上正交，如果$\int_{-\pi}^{\pi}{u(x)v(x)\mathrm{d}x}=0$。

2. 三角函数的正交性

   1. $\int_{-\pi}^{\pi}{{{\cos}{(mx)}}{{\cos}{(nx)}}\mathrm{d}x}=\begin{cases}0,m\neq{n},m,n\in{N^*}\\\pi,m=n,m,n\in{N^*}\end{cases}$
   2. $\int_{-\pi}^{\pi}{{{\sin}{(mx)}}{{\sin}{(nx)}}\mathrm{d}x}=\begin{cases}0,m\neq{n},m,n\in{N^*}\\\pi,m=n,m,n\in{N^*}\end{cases}$
   3. $\int_{-\pi}^{\pi}{{{\cos}{(mx)}}{{\sin}{(nx)}}\mathrm{d}x}=0,m,n\in{N^*}$

3. Fourier级数：对于周期为$2\pi$的函数$f(x)$且在区间$[-\pi,\pi]$上可积或绝对可积，则
   $$
   f(x)=\frac{a_0}{2}+\sum_{n=1}^{\infty}{({a_n}{\cos{(nx)}}+{b_n}{\sin{(nx)}})}
   $$
   其中
   $$
   a_n=\frac{1}{\pi}{\int_{-\pi}^{\pi}{f(x)\cos{(nx)}}\mathrm{d}x},n\in{N}
   $$

   $$
   b_n=\frac{1}{\pi}{\int_{-\pi}^{\pi}{f(x)\sin{(nx)}}\mathrm{d}x},n\in{N^*}
   $$

4. 正弦级数和余弦级数

   1. 正弦级数：对于周期为$2\pi$的函数$f(x)$且在区间$[-\pi,\pi]$上可积或绝对可积，若$f(x)$为奇函数，则
      $$
      f(x)=\sum_{n=1}^{\infty}{{b_n}{\sin{(nx)}}}
      $$
      其中
      $$
      b_n=\frac{2}{\pi}{\int_{0}^{\pi}{f(x)\sin{(nx)}}\mathrm{d}x},n\in{N^*}
      $$

   2. 余弦级数：对于周期为$2\pi$的函数$f(x)$且在区间$[-\pi,\pi]$上可积或绝对可积，若$f(x)$为偶函数，则
      $$
      f(x)=\frac{a_0}{2}+\sum_{n=1}^{\infty}{{a_n}{\cos{(nx)}}}
      $$
      其中
      $$
      a_n=\frac{2}{\pi}{\int_{0}^{\pi}{f(x)\cos{(nx)}}\mathrm{d}x},n\in{N}
      $$

5. 任意周期的函数的Fourier级数：对于周期为$2T$的函数$f(x)$且在$[-T,T]$上可积或绝对可积，则
   $$
   f(x)=\frac{a_0}{2}+\sum_{n=1}^{\infty}{({a_n}{\cos{(\frac{n\pi}{T}{x})}}+{b_n}{\sin{(\frac{n\pi}{T}{x})}})}
   $$
   其中
   $$
   a_n=\frac{1}{T}{\int_{-T}^{T}{f(x)\cos{(\frac{n\pi}{T}{x})}}\mathrm{d}x},n\in{N}
   $$

   $$
   b_n=\frac{1}{T}{\int_{-T}^{T}{f(x)\sin{(\frac{n\pi}{T}{x})}}\mathrm{d}x},n\in{N^*}
   $$

6. 任意周期的函数的Fourier级数：对于定义在区间$[a,b]$上的函数$f(x)$，在其定义域上可积或绝对可积，则
   $$
   \small{f(x)=\frac{a_0}{2}+\sum_{n=1}^{\infty}{({a_n}{\cos{(n(\frac{2\pi}{b-a}{x}-\frac{b+a}{b-a}{\pi}))}}+{b_n}{\sin{(n(\frac{2\pi}{b-a}{x}-\frac{b+a}{b-a}{\pi}))}})}}
   $$

7. > Fourier级数的复数形式：对于周期为$2T$的函数$f(x)$且在$[-T,T]$上可积或绝对可积，令$\begin{cases}{\omega}_n=\frac{n\pi}{T}\\c_0=a_0\\c_n=a_n-ib_n,n\in{N^*}\\c_{-n}=a_n+ib_n,n\in{N^*}\end{cases}$，则$f(x)=\frac{1}{2}{\sum_{n=-\infty}^{+\infty}{{c_n}{\mathrm{e}^{i{{\omega}_n}x}}}}$。

8. > Fourier级数的系数由函数唯一确定，因此函数的Fourier级数展开式唯一。

9. > Taylor级数用来刻画函数在某点附近的函数值，而Fourier级数用来刻画函数在某区间内的函数值。

10. 若函数$f(x)$在区间$[a,b]$内可积或绝对可积，且在点$x$处两个单侧导数$f_+^{\prime}{(x)}$和$f_-^{\prime}{(x)}$存在，或更进一步，只要两个拟单侧导数$\lim_{h\to0+}{\frac{f(x\pm{h})-f(x^\pm)}{h}}$存在，则$f(x)$的Fourier级数在点$x$处收敛于$\frac{f(x^+)+f(x^-)}{2}$。

11. Fourier级数求解微分方程特解

    1. 对于方程$(28)$，将函数$f(x)$展开为Fourier级数；
    2. 对函数$f(x)$的Fourier级数中的每一项求解方程的特解；
    3. 利用方程$(28)$的线性性质，得到函数$f(x)$的特解。

## 2.5Laplace变换

1. Laplace变换：对于定义在实数域$[0,\infty]\in{\R}$的函数$f(t)$，其Laplace变换是定义在复数域$\C$上的积分函数
   $$
   \mathcal{L}(f(t))=\int_{0}^{\infty}{f(t)\mathrm{e}^{-st}\mathrm{d}t}
   $$
   其中Laplace变换$\mathcal{L}$是线性变换。

2. > Laplace变换类似于给定系数函数$a(x)$的幂级数求和$A(x)=\sum_{n=0}^{\infty}{a(n){x^n}}$。

3. Laplace变换存在的条件：对于函数$f(t)$，存在$k>0,C>0$，使得对于任意$t>0$，成立$|f(t)|<C\mathrm{e}^{kt}$。

4. 基本初等函数的Laplace变换

   1. $\mathcal{L}(1)=\frac{1}{s}$
   2. $\mathcal{L}(\mathrm{e}^t)=\frac{1}{s-1}$
   3. $\mathcal{L}(t^n)=\frac{n!}{s^{n+1}},n\in{N^*}$
   4. $\mathcal{L}(\cos{t})=\frac{s}{s^2+1}$
   5. $\mathcal{L}(\sin{t})=\frac{1}{s^2+1}$

5. Laplace变换的性质（记函数$f(t),g(t)$的Laplace变换分别为$F(s),G(s)$）

   1. 线性：$\mathcal{L}(af(t)+bg(t))=a\mathcal{L}(f(t))+b\mathcal{L}(g(t))$
   2. 导数：$\mathcal{L}(f^{\prime}(t))=sF(s)-f(0^+)$
   3. $n$阶导数：$\mathcal{L}(f^{(n)}(t))={s^n}F(s)-\sum_{k=1}^{n}{s^{n-k}f^{(k-1)}(0^+)}$
   4. $\mathcal{L}(\mathrm{e}^{at}f(t))=F(s-a)$
   5. $\mathcal{L}(f(at))=\frac{1}{a}F(\frac{s}{a})$
   6. $f(0^+)=\lim_{s\to{\infty}}{sF(s)}$
   7. $f(\infty)=\lim_{s\to{0}}{sF(s)}$

6. Laplace变化求解线性常微分方程：对于二阶常系数非齐次线性常微分方程$(28)$，以及初值条件$\begin{cases}y(0)=y_0\\y^{\prime}(0)=y_0^{\prime}\end{cases}$，则求解方程如下

   1. 对方程两边作Laplace变换，得到$\mathcal{L}(y(t))=Y(s)$；
   2. 求解函数$Y(s)$的逆Laplace变换，得到$y(t)=\mathcal{L}^{-1}(Y(s))$。

## 2.6卷积

1. 对于函数$f(x),g(x)$，其卷积为
   $$
   f(x)*g(x)=\int_{0}^{x}{f(t)g(x-t)\mathrm{d}t}
   $$

2. Laplace变换与卷积：若函数$f(t),g(t)$的Laplace变换分别为$F(s),G(s)$，则有$F(s)G(s)=\int_{0}^{\infty}{\mathrm{e}^{-st}(f(t)*g(t))\mathrm{d}t}$。

3. 离散卷积公式：对于幂级数$A(x)=\sum_{n=0}^{\infty}{a_n{x^n}}$和$B(x)=\sum_{n=0}^{\infty}{b_n{x^n}}$，其Cauchy乘积表示为$A(x)B(x)=\sum_{n=0}^{\infty}{c_n{x^n}}$，其中
   $$
   c_n=\sum_{i+j=n}{a_ib_j}
   $$
   为离散卷积公式。

## 2.7Laplace变换求解非连续输入方程

1. 阶跃函数

   1. 单位阶跃函数：
      $$
      u(x)=\begin{cases} 0,-\infty < x < 0\\ 1, 0\le x < +\infty\end{cases}
      $$

   2. $u_a(x)=u(x-a)$

   3. $u_{ab}(x)=u(x-a)-u(x-b)$

2. 阶跃函数的Laplace变换：$\mathcal{L}(u(t))=\frac{1}{s}$

3. Laplace逆变换的唯一性：若$\mathcal{L}(f(t))=\mathcal{L}(g(t))$，则$u(t)f(t)=u(t)g(t)$。

   > 这是因为Laplace变换只刻画函数在区间$[0,\infty]$的情况，而不关注负轴。

4. 阶跃函数的Laplace变换性质

   1. $\mathcal{L}(u(t)f(t))=\mathcal{L}(f(t))$
   2. $\mathcal{L}(u(t-a)f(t-a))=\mathrm{e}^{-as}\mathcal{L}(f(t))$
   3. $\mathcal{L}(u(t-a)f(t))=\mathrm{e}^{-as}\mathcal{L}(f(t+a))$

## 2.8Dirac$\delta$函数

1. Dirac$\delta$函数：
   $$
   \delta(x)=\begin{cases}+\infty,&x=0\\0,&x\ne{0}\end{cases}
   $$
   满足
   $$
   \int_{-\infty}^{+\infty}{\delta(x)\mathrm{d}x}=1
   $$

2. > Dirac$\delta$函数可以看作脉冲函数，其拥有丰富的现实意义。例如对某一物体施以一瞬间的力（踢球），那么该力做功就类似于Dirac$\delta$函数。如$(45),(46)$式的Dirac$\delta$函数只是一种启发式的表征。Dirac$\delta$函数不是传统意义上的函数，因为在实数上定义的函数都没有如此性质。Dirac$\delta$函数可以被严格地定义为分布或度量。

3. Dirac$\delta$函数性质

   1. $\mathcal{L}(\delta(t))=1$
   2. 卷积运算的单位函数：$\mathcal{L}(f(t)*\delta(t))=\mathcal{L}(f(t))$
   3. $u^{\prime}(x)=\delta(x)$
   4. $\delta^{\prime}(x)=\begin{cases}+\infty,&x=0^-\\-\infty,&x=0^+\\0,&x\ne{0}\end{cases}$
   5. $\mathcal{L}(\delta^{\prime}(t))=s$

4. Laplace变换求解二阶微分方程：对于二阶常系数非齐次线性常微分方程$(28)$，以及初值条件$\begin{cases}y(0)=y_0\\y^{\prime}(0)=y^{\prime}_0\end{cases}$，则求解方程如下

   1. 对方程两边作Laplace变换，得到$\mathcal{L}(y(t))=\frac{\mathcal{L}(f(t))+y_0s+(py_0+y^{\prime}_0)}{s^2+ps+q}$；

   2. 记函数$w(x)$满足$\mathcal{L}(w(t))=\frac{1}{s^2+ps+q}$，则方程解为
      $$
      y(t)=f(t)*w(t)+(py_0+y^{\prime}_0)w(t)+y_0w^{\prime}(t)
      $$

   3. 系统加权函数：
      $$
      w(t)=\begin{cases}
      t\mathrm{e}^{s_0t},&p^2-4q=0\\
      \frac{\mathrm{e}^{s_1t}-\mathrm{e}^{s_2t}}{s_1-s_2},&p^2-4q>0\\
      \frac{\mathrm{e}^{s_0t}\sin{(s_mt)}}{s_m},&p^2-4q<0
      \end{cases}
      $$
      其中$\begin{cases}s_0=-\frac{p}{2}\\s_1+s_2=-p\\s_1s_2=q\\s_m^2=q-\frac{p^2}{4}\end{cases}$。

# 第三章：一阶微分方程组

## 3.1一阶常微分方程组

1. 一阶常微分方程组：
   $$
   \begin{cases}x^{\prime}=f(x,y;t)\\y^{\prime}=g(x,y;t)\end{cases}
   $$

2. 一阶常系数线性常微分方程组：
   $$
   \begin{cases}x^{\prime}=ax+by+r_1(t)\\y^{\prime}=cx+dy+r_2(t)\end{cases}
   $$

3. 一阶常系数齐次线性常微分方程组：
   $$
   \begin{cases}x^{\prime}=ax+by\\y^{\prime}=cx+dy\end{cases}
   $$

4. 微分方程组解的常数数位方程组的总阶数。

5. 微分方程组的消元解法：如代数方程组解法一般，微分方程组可用消元法得到解。

## 3.2一阶常系数齐次线性常微分方程组的矩阵解法

1. 矩阵解法：

   1. 对于一般的一阶常系数齐次线性常微分方程组$(51)$，可写成如下格式

   $$
   {\left(
   \begin{matrix}
   x\\
   y
   \end{matrix}
   \right)}
   ^{\prime}
   =
   {\left(
   \begin{matrix}
   a&b\\
   c&d
   \end{matrix}
   \right)}
   {\left(
   \begin{matrix}
   x\\
   y
   \end{matrix}
   \right)}
   $$

   2. 取尝试解$\left(\begin{matrix}x\\y\end{matrix}\right)={\left(\begin{matrix}a_1\\a_2\end{matrix}\right)}\mathrm{e}^{\lambda{t}}$，代入$(52)$得到$\lambda\left(\begin{matrix}a_1\\a_2\end{matrix}\right)={\left(\begin{matrix}a&b\\c&d\end{matrix}\right)}{\left(\begin{matrix}a_1\\a_2\end{matrix}\right)}$；

   3. 因此，向量$\left(\begin{matrix}a_1\\a_2\end{matrix}\right)$为矩阵$\left(\begin{matrix}a&b\\c&d\end{matrix}\right)$的特征向量，$\lambda$为矩阵$\left(\begin{matrix}a&b\\c&d\end{matrix}\right)$的特征根；

   4. 进而方程$(52)$的通解为：
      $$
      \left(\begin{matrix}x\\y\end{matrix}\right)
      =
      C_1{\left(\begin{matrix}a_{11}\\a_{21}\end{matrix}\right)}\mathrm{e}^{\lambda_1{t}}
      +
      C_2{\left(\begin{matrix}a_{12}\\a_{22}\end{matrix}\right)}\mathrm{e}^{\lambda_2{t}}
      $$

2. 完备特征根：对于$n$重特征根，若其对应$n$个线性无关的特征向量，则称之为完备特征根。

3. 实谱定理：若矩阵$A$为实对称矩阵，即满足$A^T=A$，则其所有特征根均为完备的。

4. George与Susan的爱情：若$x$为Susan对George的爱，$y$为George对Susan的爱，满足$\begin{cases}x^{\prime}=x+2y\\y^{\prime}=-x-y\end{cases}$。Susan感受到对方和自己的感情会促进情感，而George发现对方更爱自己会降低自我感觉。解的轨迹为$x^2+2xy+2y^2=C,C\in{R}$，此为椭圆，代表着Susan和George在爱情里面转圈。😘

5. 解的性质

   1. 对于写成$\vec{x}^{\prime}=A\vec{x}$形式的方程$(52)$，通解为$\vec{x}=C_1\vec{x}_1+C_2\vec{x}_2,C_1,C_2\in{R}$，其中向量$\vec{x}_1,\vec{x}_2$线性无关。
   2. 对于方程$(52)$的任意两解$\vec{x}_1,\vec{x}_2$，若$\vec{x}_1,\vec{x}_2$线性相关，则$W(\vec{x}_1,\vec{x}_2)=\begin{vmatrix}\vec{x}_1&\vec{x}_2\end{vmatrix}\equiv{0}$；若$\vec{x}_1,\vec{x}_2$线性无关，则$W(\vec{x}_1,\vec{x}_2)=\begin{vmatrix}\vec{x}_1&\vec{x}_2\end{vmatrix}\not\equiv{0}$
   3. 方程$(52)$的基本矩阵为$\vec{X}=\left(\begin{matrix}\vec{x}_1&\vec{x}_2\end{matrix}\right)$，其中$\vec{x}_1,\vec{x}_2$为方程的线性无关解，有如下性质
      1. $|\vec{X}|\ne 0$
      2. $\vec{X}^{\prime}=A\vec{X}$

6. 对于一般的一阶常系数线性常微分方程组$(50)$可写成如下矩阵形式：$\vec{x}^{\prime}=A\vec{x}+\vec{r}$，其通解形式为$\vec{x}=\vec{x}_{\mathrm{p}}+\vec{x}_{\mathrm{c}}$，其中$\vec{x}_{\mathrm{p}}$称为特解，$\vec{x}_{\mathrm{c}}$称为其相伴齐次方程$(50)$的齐次解。

7. 方程$(50)$的特解：参数变分

   1. 记方程$(50)$的齐次解为$\vec{X}$，特解为$\vec{x}_{\mathrm{p}}=\vec{X}\vec{v}$；

   2. 代入原方程，整理得$\vec{X}\vec{v}^{\prime}=\vec{r}$，因此$\vec{v}=\int{\vec{X}^{-1}\vec{r}\mathrm{d}t}$。

   3. 进而特解为$\vec{x}_{\mathrm{p}}=\vec{X}\int{\vec{X}^{-1}\vec{r}\mathrm{d}t}$。

## 3.3矩阵指数

1. 指数函数：
   $$
   \mathrm{e}^{x}=\sum_{n=0}^{\infty}{\frac{x^n}{n!}},x\in{\C}
   $$

2. 矩阵指数函数：
   $$
   \mathrm{e}^{Ax}=\sum_{n=0}^{\infty}{\frac{{A^n}{x^n}}{n!}},x\in{\C}
   $$
   特别的，$\mathrm{e}^{0x}=I$。

3. 对于写成$\vec{x}^{\prime}=A\vec{x}$形式的方程$(52)$，其通解为$\vec{x}=\mathrm{e}^{At}\vec{C}$。

4. 注意：指数定律$\mathrm{e}^{A+B}=\mathrm{e}^{A}\mathrm{e}^{B}$成立当且仅当$AB=AB$，即两矩阵可交换。

## 3.4常系数解耦线性方程组

1. 解耦：对于线性方程$\vec{x}^{\prime}=A\vec{x}$，若作线性代换$\vec{x}=B\vec{u}$，其中$|B|\ne 0$，代入原方程并整理得到$\vec{u}^{\prime}=B^{-1}AB\vec{u}$。若矩阵$B^{-1}AB$为对角矩阵，则称实现了线性方程的解耦。

2. 解耦的本质是寻找矩阵$B$实现矩阵$A$的相似对角化。

3. 实对称矩阵可对角化。

4. > 以下说法等价
   >
   > 1. $n$阶矩阵$A$可相似对角化
   > 2. $A$有$n$个线性无关的特征向量
   > 3. 全空间是特征子空间的直和
   > 4. $A$的每个特征值是完备的，即其几何重数等于代数重数
   > 5. $A$的极小多项式没有重根
   > 6. $A$的Jordon块都是一阶的

5. 若矩阵$A$可对角化，记其线性无关的特征向量为$\vec{q}_1,\cdots,\vec{q}_n$，所对应特征值为$\lambda_1,\cdots,\lambda_n$，称矩阵$Q=\left(\begin{matrix}\vec{q}_1&\cdots&\vec{q}_n\end{matrix}\right)$为特征向量矩阵，$\Lambda=\left(\begin{matrix}\lambda_1&\cdots&0\\\vdots&\ddots&\vdots\\0&\cdots&\lambda_n\end{matrix}\right)$为特征值矩阵，进而$A=Q\Lambda Q^{-1}$，实现了对角化。

6. 线性方程组的解耦：若矩阵$A$可对角化，记$A=Q\Lambda Q^{-1}$，则容易知道方程$\vec{x}^{\prime}=A\vec{x}$的解为$\vec{x}=Q\mathrm{e}^{\Lambda t}\vec{C}$。

## 3.5极限环

1. 一阶非线性自治方程组：
   $$
   \begin{cases}
   x^{\prime}=f(x,y)\\
   y^{\prime}=f(x,y)
   \end{cases}
   $$

2. 速度场：$\vec{F}=(f(x,y),g(x,y))$

3. 临界点：满足方程$\vec{F}=\vec{0}$的点。

4. 极限环：考虑二维动力系统$\vec{x}^{\prime}(t)=V(\vec{x}(t))$，其中$V:\R^2\to\R^2$为光滑函数。该系统的轨迹是满足该系统的光滑函数$\vec{x}(t)=0$。称轨迹为闭合的（或周期的），如果存在$t_0>0$，使得对于任意$t\in\R$，满足$\vec{x}(t+t_0)=\vec{x}(t)$。极限环是闭合轨迹的极限。

5. 存在性问题：Poincare-Bendixson定理

6. Bendixson准则：若$D\in{\R^2}$为区域，若在向量场中散度$\mathrm{div}(\vec{F})\not\equiv0$，则区域内不存在闭合轨迹。

7. 临界点准则：若$D\in{\R^2}$为区域，$C$为微分方程组的闭合轨迹，则该轨迹内存在一个临界点。

8. > Hilbert的第十六个问题：确定$n$次二维多项式向量场中极限环数的上限，并研究其相对位置。