# 目录

[TOC]

# 引言

**复分析(complex Analysis)**研究复平面$\C$到自身的函数
$$
f:\C\to\C
$$
复平面$\C$上的点
$$
z=x+iy
$$
对应实平面$\R^2$上的点
$$
(x,y)
$$

---

**全纯(holomorphicity function)**：在复意义上可微的函数，即存在极限
$$
\lim_{h\to0}{\frac{f(z+h)-f(z)}{h}},\quad h\in\C
$$
- 围道积分：如果$f$在$\Omega$上是全纯的，那么存在积分曲线$\gamma\in\Omega$，使得成立


$$
\int_{\gamma}{f(z)\mathrm{d}z}=0
$$

- 正则性：如果$f$是全纯的，那么$f$无限可微。
- 解析延拓：如果$f$和$g$是$\Omega$中的全纯函数，且在$\Omega$任意邻域内相等，那么$f=g$。

- 重要主题

   - Zeta函数

   $$
   \zeta(s)=\sum_{n=1}^{\infty}{\frac{1}{n^s}},\quad s\in\C
   $$

   - Theta函数

   $$
   \Theta(z|\tau)=\sum_{n=-\infty}^{\infty}{\mathrm{e}^{\pi in^2\tau}\mathrm{e}^{2\pi inz}}
   $$

# 一、复分析入门

## 1	复数和复平面

### 1.1	基本性质

**虚数(imagginary number)**单位：
$$
i^2=-1
$$
**复数(complex number)**：
$$
z=x+iy,\quad x,y\in\R
$$
**实部(real partial)**和**虚部(imaginary number)**：
$$
x=\Re(z) \qquad y=\Im(z)
$$
对应**复平面(complex plane)**$\C$上的一个点
$$
(x,y)
$$

---

**加法(adding)**和**乘法(multiplying)**：如果
$$
z_1=x_1+iy_1\\z_2=x_2+iy_2
$$
那么
$$
\begin{align}
&z_1+z_2=(x_1+x_2)+i(y_1+y_2)\\
&z_1 z_2=(x_1x_2-y_1y_2)+i(x_1y_2+x_2y_1)
\end{align}
$$
**交换律(commutativity)**：
$$
\begin{align}
&z_1+z_2=z_2+z_1\\
&z_1 z_2=z_2 z_1
\end{align}
$$
**结合律(associativity)**：
$$
\begin{align}
&(z_1+z_2)+z_3=z_1+(z_2+z_3)\\
&(z_1z_2)z_3=z_1(z_2z_3)
\end{align}
$$
**分配律(distributivity)**：
$$
z_1(z_2+z_3)=z_1z_2+z_1z_3
$$

---

**绝对值(absolute value)**：
$$
|z|=\sqrt{x^2+y^2}
$$

**三角不等式**：
$$
||z|-|w|| \le |z \pm w| \le |z|+|w|
$$

---

**复共轭(complex conjugate)**：
$$
\bar{z}=x-iy
$$
- $$
  \Re(z)=\frac{z+\bar{z}}{2}\qquad \Im(z)=\frac{z-\bar{z}}{2i}
  $$

- $$
  |z|^2=z\bar{z}
  $$

---

**极坐标形式(polar form)**：
$$
\begin{align}
z&=\rho\mathrm{e}^{i\theta}\\
&=\rho(\cos{\theta}+i\sin{\theta})
\end{align}
$$

### 1.2	收敛

**收敛(converge)**：称复数序列$\{z_n\}$收敛到$w\in\C$，如果
$$
\lim_{n\to\infty}{|z_n-w|}=0
$$
记作
$$
w=\lim_{n\to\infty}{z_n}
$$
**Cauchy序列(Cauchy sequence)**：称复数序列$\{z_n\}$为Cauchy，如果当$n,m\to\infty$时
$$
|z_n-z_m|\to0
$$
即对于任意$\varepsilon>0$，存在$N>0$，使得对于任意$n,m>N$​，成立
$$
|z_n-z_m|<\varepsilon
$$
**定理1.1**：复数域$\C$是完备的，即$\C$对于Cauchy序列封闭。

### 1.3	复平面集合

**开圆(open disc)**：
$$
D_r(z)=\{w\in\C:|z-w|<r\}
$$

**闭圆(closed disc)**：
$$
\overline{D}_r(z)=\{w\in\C:|z-w| \le r\}
$$

**单位圆(unit disc)**：
$$
\mathbb{D}=\{z\in\C:|z|<1\}
$$

---

**内点(interior point)**：称$z$为$\Omega\sub\C$的内点，如果存在$r>0$，使得成立
$$
D_r(z)\sub\Omega
$$

**内部(interior)**：$\Omega$的内点的集合称为其内部，记作$\Omega^{\circ}$。

**开的(open)**：称$\Omega$为开的，如果其每个点都是内点。

**闭的(closed)**：称$\Omega$为闭的，如果其补集是开的。

**极限点(limit point)**：称$z$为$\Omega$的极限点，如果$\Omega$存在异于$z$且收敛于$z$的序列。

**导集(derived set)**：$\Omega$的极限点构成的集合称为其导集，记作$\Omega'$。

**闭包(closure)**：定义$\Omega$闭包为$\overline{\Omega}=\Omega\cup\Omega'$。

**边界(boundary)**：定义$\Omega$的边界为$\partial\Omega=\overline{\Omega}-\Omega^{\circ}$。

**有界的(bounded)**：称$\Omega$为有界的，如果存在$M>0$，使得对于任意$z\in\Omega$，成立
$$
|z|<M
$$
**直径(diameter)**：如果$\Omega$为有界的，称其直径为
$$
\mathrm{diam}(\Omega)=\sup_{z,w\in\Omega}{|z-w|}
$$

**紧的(compact)**：称$\Omega$为紧的，如果其为闭且有界的。

**连通的(connected)**：称开集$\Omega$为连通的，如果不存在不相交的非空开集$\Omega_1,\Omega_2$使得成立
$$
\Omega=\Omega_1\cup\Omega_2
$$
称闭集$F$是连通的，如果不存在不相交的非空闭集$F_1,F_2$​使得成立
$$
F=F_1\cup F_2
$$

**区域(region)**：称$\Omega$为区域，如果其为开且连通的。

---

**定理1.2**：集合$\Omega$是紧的，当且仅当对于$\C$中的任意序列存在收敛于$\Omega$内一点的子序列。

**定理1.3**：集合$\Omega$是紧的，当且仅当对于$\Omega$的任意开覆盖，存在有限子覆盖。

---

**命题1.4**：如果$\{\Omega_n\}$为$\C$中的非空紧集序列，满足
$$
\Omega_1\supset\Omega_2\supset\cdots\supset\Omega_n\supset\cdots
$$
且当$n\to\infty$时
$$
\mathrm{diam}(\Omega_n)\to0
$$
那么存在且存在唯一$z\in\C$，使得成立
$$
z\in\bigcap_{n=1}^{\infty}{\Omega_n}
$$

## 2	复函数

### 2.1	连续函数

**连续(continuous)**：称定义在$\Omega$上的函数$f$在点$z_0\in\Omega$处连续，如果对于任意$\varepsilon>0$，存在$\delta>0$，使得当$z\in\Omega$且$|z-z_0|<\delta$时，成立
$$
|f(z)-f(z_0)|<\varepsilon
$$
等价定义：称定义在$\Omega$上的函数$f$在点$z_0\in\Omega$处连续，如果对于任意以$z_0$为极限的序列$\{z_n\}_{n=1}^{\infty}\sub\C$成立
$$
\lim_{n\to\infty}{f(z_n)}=f(z_0)
$$
**定理2.1**：紧集上的连续函数有界，并可取到最值。

### 2.2	全纯函数

**全纯函数的等价定义**：如下为函数$f=u+iv$在开集$\Omega\sub\C$上全纯的等价定义。

- 对于任意$z\in \Omega$​，如下极限存在。
  $$
  \lim_{h\to0}{\frac{f(z+h)-f(z)}{h}}
  $$

- 函数$u$和$v$在$\Omega$​上连续可微，且满足
  $$
  \frac{\partial u}{\partial x}=\frac{\partial v}{\partial y},
  \qquad
  \frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}
  $$

- 函数$f$在$\Omega$上连续，且对于任意分段光滑闭曲线$\gamma$，成立
  $$
  \int_\gamma{f(z)\mathrm{d}z}=0
  $$

- 对于任意$z_0\in \Omega$，存在$r>0$，使得对于任意$z\in B_r(z_0)$，成立幂级数展开
  $$
  f(z)=\sum_{n=0}^{\infty}{a_n(z-z_0)^n}
  $$

**全纯(holomorphic)**：称定义在开集$\Omega$上的函数$f$在点$z_0\in\Omega$处全纯，如果存在极限
$$
\lim_{h\to0}{\frac{f(z_0+h)-f(z_0)}{h}}
$$
**整函数(entire function)**：称$f$为整函数，如果$f$在$\C$上全纯。

**导数(derivative)**：如果函数$f$在$z_0$点全纯，那么定义该点的导数为
$$
f'(z_0)=\lim_{h\to0}{\frac{f(z_0+h)-f(z_0)}{h}}
$$
- 如果$f$和$g$在$\Omega$上全纯，那么$f+g$在$\Omega$上全纯，且

$$
(f+g)'=f'+g'
$$

- 如果$f$和$g$在$\Omega$上全纯，那么$fg$在$\Omega$上全纯，且

$$
(fg)'=f'g+fg'
$$
- 如果$f$和$g$在$\Omega$上全纯，那么在$g\ne0$的点上$\frac{f}{g}$全纯，且

$$
(\frac{f}{g})'=\frac{f'g-fg'}{g^2}
$$
- 如果$f:\Omega\to U,g:U\to\C$为全纯的，那么

$$
(g\circ f)'=g'(f)f'
$$

---

**Cauchy-Riemann方程(Cauchy-Riemann equation)**：若$f$在$\Omega$上全纯，记
$$
f(z)=f(x+iy)=u(x,y)+iv(x,y)
$$
那么成立
$$
\frac{\partial f}{\partial x}=\frac{1}{i}\frac{\partial f}{\partial y}
$$
即
$$
\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y},
\qquad
\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}
$$

**微分算子(differential operator)**
$$
\frac{\partial }{\partial z}=\frac{1}{2}\left(\frac{\partial }{\partial x}+\frac{1}{i}\frac{\partial }{\partial y}\right),
\qquad
\frac{\partial }{\partial \bar{z}}=\frac{1}{2}\left(\frac{\partial }{\partial x}-\frac{1}{i}\frac{\partial }{\partial y}\right)
$$

---

**命题2.3**：如果$f(z)=F(x,y)=(u(x,y),v(x,y))$在点$z_0$处全纯，那么
$$
\frac{\partial f}{\partial \bar{z}}(z_0)=0
$$

$$
f'(z_0)=\frac{\partial f}{\partial z}(z_0)=2\frac{\partial u}{\partial z}(z_0)
$$

$$
\det{J_F(x_0,y_0)}=|f'(z_0)|^2
$$
其中$J$为**Jacobian矩阵**
$$
J_F(x,y)=\begin{pmatrix}
\frac{\partial u}{\partial x}&\frac{\partial u}{\partial y}\\
\frac{\partial v}{\partial x}&\frac{\partial v}{\partial y}
\end{pmatrix}
$$

**定理2.4**：对于开集$\Omega$上的复函数$f=u+iv$。如果在$\Omega$上$u$和$v$都是连续可微的且满足Cauchy-Riemann方程
$$
\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y},
\qquad
\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}
$$
那么$f$在$\Omega$上是全纯的，且
$$
f'(z)=\frac{\partial f}{\partial z}
$$

### 2.3	幂级数

**指数函数(exponential function)**
$$
\mathrm{e}^z=\sum_{n=0}^{\infty}{\frac{z^n}{n!}}
$$
**三角函数(trigonometric function)**
$$
\cos{z}=\sum_{n=0}^{\infty}{(-1)^n\frac{z^{2n}}{(2n)!}},
\qquad
\sin{z}=\sum_{n=0}^{\infty}{(-1)^n\frac{z^{2n+1}}{(2n+1)!}}
$$

---

**定理2.6**：对于幂级数
$$
\sum_{n=0}^{\infty}{a_nz^n}
$$
规定
$$
\frac{1}{0}=\infty, \qquad \frac{1}{\infty}=0
$$
**收敛半径(radius of convergence)**$R$由**Hadamard公式**给出
$$
\frac{1}{R}=\lim_{n\to\infty}{\sup{|a_n|^{\frac{1}{n}}}}
$$
- 如果$|z|<R$，那么级数绝对收敛。
- 如果$|z|>R$，那么级数发散。
- 如果$|z|=R$，那么级数敛散性不确定。

**定理2.7**：幂级数
$$
f(z)=\sum_{n=0}^{\infty}{a_nz^n}
$$
在收敛域内定义了一个全纯函数，其导函数为
$$
f'(z)=\sum_{n=0}^{\infty}{n a_n z^{n-1}}
$$
且收敛半径不变。

**推论2.7**：幂级数在收敛域内无限复可微。

---

**解析(analytic)**：称定义在开集$\Omega$上的函数$f$在点$z_0\in\Omega$处是解析的，如果在$z_0$的邻域内存在幂级数展开
$$
f(z)=\sum_{n=0}^{\infty}{a_n(z-z_0)^n}
$$

## 3	曲线积分

**参数化曲线(parametrized curve)**：曲线$\gamma$参数化
$$
z(t):[a,b]\sub\R\to\C
$$
其反方向曲线记为$\gamma^-$
$$
z^-(t)=z(b+a-t),\quad t\in[a,b]
$$

---

**光滑的(smooth)**：称曲线$z(t)$在$[a,b]$上是光滑的，如果$z(t)$在$[a,b]$连续可微，同时$z'(t)\ne0$。

**相等(equivalent)**：称两参数化曲线
$$
z:[a,b]\to\C \qquad \tilde{z}:[c,d]\to\C
$$
相等，如果存在从$[a,b]$到$[c,d]$的连续可微双射$s\mapsto t(s)$，使得$t'(s)>0$且
$$
\tilde{z}(s)=z(t(s))
$$
**封闭的(closed)**：称定义在$[a,b]$上的曲线$z(t)$是封闭的，如果$z(a)=z(b)$。

---

**曲线积分(integration along curves)**：连续函数$f$在可参数化为$z:[a,b]\to\C$的光滑曲线$\gamma$上的曲线积分定义为
$$
\int_{\gamma}{f(z)\mathrm{d}z}=\int_a^b{f(z(t))z'(t)\mathrm{d}t}
$$
- **线性性(linear)**：对于$\alpha,\beta\in\C$，成立
  $$
  \int_{\gamma}{\alpha f(z)+\beta g(z)\mathrm{d}z}=\alpha\int_{\gamma}{f(z)\mathrm{d}z}+\beta\int_{\gamma}{g(z)\mathrm{d}z}
  $$

- **反向性(reverse)**：
  $$
  \int_{\gamma}{f(z)\mathrm{d}z}=-\int_{\gamma^-}{f(z)\mathrm{d}z}
  $$

- **不等式**：
  $$
  \left|\int_{\gamma}{f(z)\mathrm{d}z}\right| \le \sup_{z\in\gamma}{|f(z)|}\cdot\mathrm{length}(\gamma)
  $$

**曲线长(length)**：光滑曲线$\gamma:z:[a,b]\to\C$的长度定义为
$$
\mathrm{length}(\gamma)=\int_a^b{|z'(t)|\mathrm{d}t}
$$

---

**定理3.2**：若连续函数$f$在$\Omega$上存在原函数$F$，且曲线$\gamma$起于$w_1$终于$w_2$，那么
$$
\int_{\gamma}{f(z)\mathrm{d}z}=F(w_2)-F(w_1)
$$

**推论3.3**：若曲线$\gamma$在开集$\Omega$上是封闭的，且连续函数$f$存在原函数，那么
$$
\int_{\gamma}{f(z)\mathrm{d}z}=0
$$
**推论3.4**：若$f$在区域$\Omega$上是全纯的，且$f'=0$，那么$f$是常函数。

# 二、Cauchy定理和应用

## 1	Goursat定理

**定理1.1	Goursat定理(Goursat’s theorem)**：对于开集$\Omega\sub\C$，$T\sub\Omega$为内部含于$\Omega$的三角形，如果$f$在$\Omega$上全纯，那么
$$
\int_{T}{f(z)\mathrm{d}z}=0
$$
**推论1.2**：对于开集$\Omega\sub\C$，$R\sub\Omega$为内部含于$\Omega$的矩形，如果$f$在$\Omega$上全纯，那么
$$
\int_{R}{f(z)\mathrm{d}z}=0
$$

## 2	开圆上原函数的局部存在性和Cauchy定理
**定理2.1**：开圆上的全纯函数存在原函数。

**定理2.2	开圆上的Cauchy定理(Cauchy’s theorem in a disc)**：如果$f$在开圆$D$上是全纯的，那么对于任意封闭曲线$\gamma\sub D$，成立
$$
\int_{\gamma}{f(z)\mathrm{d}z}=0
$$

事实上，如果$\Omega\sub\C$为连通区域，函数$f$在$\Omega$上全纯且在$\overline{\Omega}$上连续，同时$\partial \Omega$分段光滑，那么成立
$$
\int_{\partial\Omega}{f(z)\mathrm{d}z}=0
$$
**有趣曲线(toy contour)**：称内部概念清晰的封闭曲线为有趣曲线。

**定理2.3	Jordan定理**：简单闭合分段光滑曲线具有**单连通**内部。

## 3	积分求解

- Fresnel积分(Fresnel integral)：
  $$
  \int_{-\infty}^{\infty}{\sin\left(x^2\right)\mathrm{d}x}=\int_{-\infty}^{\infty}{\cos\left(x^2\right)\mathrm{d}x}=\sqrt{\frac{\pi}{2}}
  $$
  
- 如果$\xi\in\R$，那么
  $$
  \mathrm{e}^{-\pi\xi^2}=\int_{-\infty}^{\infty}{\mathrm{e}^{-\pi x^2}\mathrm{e}^{-2\pi i x \xi}\mathrm{d}x}
  $$

- $$
  \int_{-\infty}^{\infty}{\frac{1-\cos{x}}{x^2}\mathrm{d}x}=\pi
  $$

## 4	Cauhy积分公式

### 4.1	柯西积分公式

**定理4.1**：对于开集$\Omega\sub\C$，闭圆$\overline{D}\sub\Omega$，定义$\partial{D}$的方向为正向，如果$f$在$\Omega$上全纯，那么对于任意$z\in D$，成立
$$
f(z)=\frac{1}{2\pi i}\int_{\partial D}{\frac{f(\zeta)}{\zeta-z}\mathrm{d}\zeta}
$$
事实上，对于连通区域$\Omega\sub\C$，如果函数$f$在$\Omega$上全纯且在$\overline{\Omega}$上连续，且$\partial \Omega$分段光滑，那么对于任意$z\in\Omega$，成立
$$
f(z)=\frac{1}{2\pi i}\int_{\partial \Omega}{\frac{f(\zeta)}{\zeta-z}\mathrm{d}\zeta}
$$
**推论4.2**：对于连通区域$\Omega\sub\C$，如果函数$f$在$\Omega$上全纯且在$\overline{\Omega}$上连续，且$\partial \Omega$分段光滑，那么$f$在$\Omega$上无穷阶可导，且对于任意$z\in\Omega$，成立
$$
f^{(n)}(z)=\frac{n!}{2\pi i}\int_{\partial\Omega}{\frac{f(\zeta)}{(\zeta-z)^{n+1}}\mathrm{d}\zeta}
$$
称上述两式为**Cauchy积分公式(Cauchy integral formula)**。

**推论4.3	平均值性质**：对于在开集$\Omega\sub\C$上全纯的函数$f$，如果$z_0\in\Omega$且$D_r(z_0)\sub\Omega$，那么
$$
f(z_0)=\frac{1}{2\pi}\int_0^{2\pi}{f(z_0+r\mathrm{e}^{i\theta})\mathrm{d}\theta}
$$
**推论4.4	Cauchy不等式(Cauchy inequalities)**：对于开集$\Omega\sub\C$，如果$\overline{D}_r(z_0)\sub\Omega$，且$f$在$\Omega$上全纯，那么
$$
|f^{(n)}(z_0)| \le \frac{n!}{r^n}\sup_{z\in\partial D}|f(z)|
$$

### 4.2	幂级数展开

**定理4.5	Taylor展开**：对于在开集$\Omega$上的全纯函数$f$，如果$D$是以$z_0$为圆心的开圆且其闭包含于$\Omega$，那么$f$在$z_0$存在幂级数展开
$$
f(z)=\sum_{n=0}^{\infty}{a_n(z-z_0)^n},\quad z\in D
$$
其中
$$
a_n=\frac{f^{(n)}(z_0)}{n!},\quad n\in\N
$$
**推论4.6	Liouville定理(Liouville’s theorem)**：如果$f$是$\C$上的有界整函数，那么$f$是常函数。事实上，如果$f$为整函数，且或$\Re(f)$存在上界，或$\Re(f)$存在下界，或$\Im(f)$存在上界，或$\Im(f)$存在下界，那么$f$是常函数。

**推论4.6	代数基本定理(the fundamental theorem of algebra)**：非常数多项式在$\C$中存在根。

**推论4.8	$\C$上的代数基本定理(the fundamental theorem of algebra in $\C$)**：$\C$上的非常数整函数存在零点。

**推论4.9**：$n\in\N^+$次复系数多项式$P(z)$在$\C$上存在$n$个根。记根为$w_1,\cdots,w_n$，那么$P$可表示为
$$
P(z)=a_n(z-w_1)\cdots(z-w_n)
$$

### 4.3	零点定理

**定理4.10	唯一性定理**：对于在区域$\Omega\sub\C$上的全纯函数$f$，如果存在$\{z_n\}_{n=1}^{\infty}\sub\Omega$，使得对于任意$n\in\N^*$，成立$f(z_n)=0$，且$\lim_{n\to\infty}{z_n}\in\Omega$，那么在$\Omega$上成立$f=0$。

**推论4.11**：对于在区域$\Omega\sub\C$上的全纯函数$f$和$g$，如果存在$\{z_n\}_{n=1}^{\infty}\sub\Omega$，使得对于任意$n\in\N^*$，成立$f(z_n)=g(z_n)$，且$\lim_{n\to\infty}{z_n}\in\Omega$，那么在$\Omega$上成立$f=g$。

**推论4.12**：对于在区域$\Omega\sub\C$上的全纯函数$f$，如果存在曲线$\gamma\sub\Omega$或非空开集$G\sub\Omega$，使得成立$f(\gamma)=\{0\}$或$f(G)=\{0\}$，那么在$\Omega$上成立$f=0$。

**推论4.13**：对于在区域$\Omega\sub\C$上的全纯函数$f$，如果存在$\{z_n\}_{n=1}^{\infty}\sub\Omega$，且$z_n\to z_0$，使得对于任意$n\in\N^*$，成立$f(z_n)=0$，那么或在$\Omega$上成立$f=0$，或$z_0\in\partial\Omega$。

**推论4.14**：对于在$\C$上的整函数$f$，如果存在$\{z_n\}_{n=1}^{\infty}\sub\C$，使得对于任意$n\in\N^*$，成立$f(z_n)=0$，那么或在$\C$上成立$f=0$，或$|z_n|\to\infty$。

**推论4.15**：对于在区域$\Omega\sub\C$上的全纯函数$f$，如果存在$z\in\Omega$，得对于任意$n\in\N^*$，成立$f^{(n)}(z)=0$，那么在$\Omega$上成立$f=0$。

**推论4.16**：对于在区域$\Omega\sub\C$上的非零全纯函数$f$，如果$f(z)=0$，那么$f$在$z$的某去心邻域内无零点。

**解析延拓(analytic continuation)**：对于分别在区域$\Omega$和$\Omega'$中解析的函数$f$和$F$，其中$\Omega\sub\Omega'$，如果在$\Omega$中$f=F$，那么称$F$是$f$在区域$\Omega$的解析延拓。

## 5	应用

### 5.1	Morera定理

**定理5.1	Morera定理**：对于在开圆$D$上的连续函数$f$，如果对于任意三角形$T\sub D$，成立
$$
\int_T{f(z)\mathrm{d}z}=0
$$
那么$f$是全纯的。

事实上，对于在开集$\Omega$上的连续函数$f$，如果对于任意分段光滑封闭曲线$\gamma\sub\Omega$，成立
$$
\int_\gamma{f(z)\mathrm{d}z}=0
$$
那么$f$是全纯的。

### 5.2	全纯函数序列

**定理5.2**：对于开集$\Omega\sub\C$，如果$\Omega$上的全纯函数序列$\{ f_n \}_{n=1}^{\infty}$在$\Omega$的任意紧致子集均一致收敛于函数$f$，那么$f$在$\Omega$中是全纯的。

**定理5.3**：对于开集$\Omega\sub\C$，如果$\Omega$上的全纯函数序列$\{ f_n \}_{n=1}^{\infty}$在$\Omega$的任意紧致子集均一致收敛于函数$f$，那么其导函数序列$\{ f_n' \}_{n=1}^{\infty}$在$\Omega$的任意紧致子集都一致收敛于函数$f'$。

### 5.3	由积分定义的全纯函数

**定理5.4**：对于定义在$(z,s)\in\Omega\times[0,1]$上的连续函数$F(z,s)$，其中$\Omega\sub\C$为开集，如果$F(z,s)$对于$z$为全纯的，那么函数$f(z)$为全纯的，其中
$$
f(z)=\int_0^1{F(z,s)\mathrm{d}s}
$$

### 5.4	Schwarz反射定理

对于对称的开集$\Omega\sub\C$，即
$$
z\in\Omega\Leftrightarrow\overline{z}\in\Omega
$$
令
$$
\Omega^+=\{ z:z\in\Omega且\Im(z)>0 \}\\
\Omega^-=\{ z:z\in\Omega且\Im(z)<0 \}
$$
同时令
$$
I=\Omega\cap\R
$$

---

**定理5.5	对称原理(Symmetry principle)**：对于全纯函数$f^+$和$f^-$，如果满足
$$
f^+(x)=f^-(x),\quad x\in I
$$
那么定义在$\Omega$上的函数$f$是全纯的，其中
$$
f(z)=\begin{cases}
f^+(z)\quad & z\in\Omega^+\\
f^+(z)=f^-(z)\quad & z\in I\\
f^-(z)\quad & z\in\Omega^-
\end{cases}
$$
**定理5.6	Schwarz反射定理(Schwarz reflection principle)**：如果函数$f$在$\Omega^+\cup I$上为全纯的，且
$$
f(x)\in\R,\quad x\in I
$$
那么存在在$\Omega$上全纯的函数$F$，使得成立
$$
F(z)=f(z),\quad z\in\Omega^+
$$
事实上
$$
F(z)=\begin{cases}
f(z)\quad & z\in\Omega^+\cup I\\
\overline{f(\overline{z})}\quad & z\in\Omega^-
\end{cases}
$$

### 5.5	Runge近似定理

**定理5.7	Runge近似定理(Runge’s approximation theorem)**：如果函数$f$在开集$\Omega\sub\C$上是全纯的，且$K\sub\Omega$为紧集，那么$f$可由奇点在$\Omega-K$上的有理函数在$K$上一致近似。而且如果$\Omega-K$是连通的，那么$f$可由多项式函数在$K$上一致近似。

**引理5.8**：如果函数$f$在开集$\Omega\sub\C$上是全纯的，且$K\sub\Omega$为紧集，那么在$\Omega-K$上存在有限多段曲线$\gamma_1,\cdots,\gamma_n$，使得对于任意$z\in K$，成立
$$
f(z)=\sum_{k=1}^{n}{\frac{1}{2\pi i}\int_{\gamma_k}{\frac{f(\zeta)}{\zeta-z}\mathrm{d}\zeta}}
$$

**引理5.9**：如果函数$f$在开集$\Omega\sub\C$上是全纯的，且$K\sub\Omega$为紧集，那么对于任意分段曲线$\gamma\sub\Omega-K$，那么如下积分可由奇点在$\gamma$上的有理函数在$K$上一致近似。
$$
\int_{\gamma}{\frac{f(\zeta)}{\zeta-z}\mathrm{d}\zeta}
$$

**引理5.10**：对于开集$\Omega\sub\C$，如果紧集$K\sub\Omega$满足，$\Omega-K$是连通的，且$z_0\notin K$，那么函数$\frac{1}{z-z_0}$可由多项式函数在$K$上一致近似。

**定理5.11	Weierstrass近似定理(Weierstrass approximation theorem)**：如果$f$在紧集$K\sub\R^d$上连续，那么$f$可由多项式函数一致近似，即
$$
\sum_{n=0}^{\infty}{\sum_{n_1+\cdots+n_d=n}a_{n_1,\cdots,n_d}x_1^{n_1}\cdots x_d^{n_d}}\rightrightarrows f
$$

**推论5.12**：如果$f$在紧集$K\sub\C$上连续，那么$f$可由关于$z$和$\overline{z}$的多项式函数一致近似，即
$$
\sum_{n=0}^{\infty}{\sum_{i+j=n}a_{ij}z^i\overline{z}^j}\rightrightarrows f
$$

# 三、 亚纯函数和对数

## 1	零点和极点

**奇点(point singularity)**：称$z_0\in\C$为函数$f$的奇点，如果$f$在$z_0$处不全纯，但在$z_0$的任意邻域内存在全纯的点。

**孤立奇点(isolated point singularity)**：称$z_0\in\C$为函数$f$的孤立奇点，如果$f$在$z_0$处不全纯，但在$z_0$的某去心邻域全纯。

**零点(zero)**：称$z_0\in\C$为全纯函数$f$的零点，如果$f(z_0)=0$。零点均为孤立点。

**定理1.1**：对于连通开集$\Omega$上的全纯函数$f$，如果$z_0\in\Omega$为其零点且存在非零点，那么存在$z_0\in U\sub \Omega$，以及$U$上的非零函数$g$，使得满足存在$n\in\N^*$，对于任意$z\in U$，成立
$$
f(z)=(z-z_0)^ng(z)
$$
其中$n$定义为零点$z_0$的**阶数(order)**。特别的，如果$n=1$，那么称$z_0$为**简单的(simple)**。

---

**去心邻域(deleted neighborhood)**
$$
\{ z:0<|z-z_0|<r \}
$$

**全邻域(full neighborhood)**
$$
\{ z:|z-z_0|<r \}
$$

**极点(pole)**：对于在开集$\Omega-\{ z_0 \}$上全纯的函数$f$，称$z_0$为$f$的极点，如果$\lim_{z\to z_0}{|f(z)|}=\infty$。

**定理1.2**：如果$z_0\in\Omega$为函数$f$的极点，那么在$z_0$的邻域里存在无零点全纯函数$h$，以及非平凡正整数$n\in\N^*$，使得成立
$$
f(z)=(z-z_0)^{-n}h(z)
$$
其中$n$定义为极点$z_0$的**阶数(order)**。特别的，如果$n=1$，那么称$z_0$为**简单的(simple)**。

**定理1.3**：如果$z_0\in\Omega$为函数$f$的极点，那么存在在$z_0$的邻域上的全纯函数$G$，使得满足
$$
f(z)=\sum_{k=1}^{n}{\frac{a_{-k}}{(z-z_0)^n}}+G(z)
$$
其中和$\sum_{k=1}^{n}{\frac{a_{-k}}{(z-z_0)^n}}$称为$f$的**主体(principal partial)**，系数$a_{-1}$称为$f$在$z_0$处的**留数(residue)**，记作$\mathrm{res}_{z_0}f=a_{-1}$。

**定理1.4**：如果$z_0\in\Omega$为函数$f$的$n$阶极点，那么
$$
\mathrm{res}_{z_0}f=
\lim_{z\to z_0}{\frac{1}{(n-1)!}\frac{\mathrm{d}^{n-1}}{\mathrm{d}z^{n-1}} (z-z_0)^n f(z)}
$$

## 2	留数公式

**定理2.1**：对于定义在开集$\Omega$上的函数$f$，如果圆$C\sub\Omega$，且$z_0\in C$为$f$的极点，同时$f$在$\Omega-\{z_0\}$上全纯，那么
$$
\int_{\partial C}{f(z)\mathrm{d}z}=2\pi i \mathrm{res}_{z_0}f
$$

**推论2.2**：对于定义在开集$\Omega$上的函数$f$，如果如果$C\sub\Omega$，且$z_1,\cdots,z_n\in C$为$f$的极点，同时$f$在$\Omega-\{z_1,\cdots,z_n\}$上全纯，那么
$$
\int_{\partial C}{f(z)\mathrm{d}z}=2\pi i \sum_{k=1}^{n}{\mathrm{res}_{z_k}f}
$$

**推论2.3**：对于定义在开集$\Omega$上的函数$f$，如果$\Omega_\gamma\sub\Omega$，其中$\Omega_\gamma$为有趣曲线$\gamma$围成的区域，且$z_1,\cdots,z_n\in\Omega_\gamma$为$f$的极点，同时$f$在$\Omega-\{z_1,\cdots,z_n\}$上全纯，那么
$$
\int_{\gamma}{f(z)\mathrm{d}z}=2\pi i \sum_{k=1}^{n}{\mathrm{res}_{z_k}f}
$$

**推论2.4**：对于定义在区域$\Omega$上的函数$f$，如果$\partial\Omega$逐段光滑，$z_1,\cdots,z_n\in\Omega_\gamma$为$f$的极点，同时$f$在$\Omega-\{z_1,\cdots,z_n\}$上全纯，在$\overline{\Omega}-\{z_1,\cdots,z_n\}$上连续，那么
$$
\int_{\partial\Omega}{f(z)\mathrm{d}z}=2\pi i \sum_{k=1}^{n}{\mathrm{res}_{z_k}f}
$$

## 3	奇点和亚纯函数

### 3.1	奇点

**可去奇点(removable singularity)**：对于在开集$\Omega-\{ z_0 \}$上全纯的函数$f$，称$z_0$为$f$的可去奇点，如果存在有限极限$\lim_{z\to z_0}{f(z)}$。

**本质奇点(essential singularity)**：对于在开集$\Omega-\{ z_0 \}$上全纯的函数$f$，称$z_0$为$f$的可去奇点，如果$z_0$为$f$的孤立奇点，但不是可去奇点和极点，即不存在极限$\lim_{z\to z_0}{f(z)}$。

**定理3.1	关于可去奇点的Riemann定理(Riemann’s theorem on removable singularities)**：对于在开集$\Omega-\{ z_0 \}$上全纯的函数$f$，如果$f$在$\Omega-\{ z_0 \}$上有界，那么$z_0$为$f$的可去奇点。

**推论3.2**：如果$f$存在孤立奇点$z_0$，那么$z_0$是极点，当且仅当
$$
\lim_{z\to z_0}{|f(z)|}=\infty
$$

**稠密的(dense)**：称$E\sub X$在$X$中稠密，如果$\overline{E}=X$；亦即对于任意开集$G\sub X$，$G\cap E\ne\varnothing$。

**定理3.3	Casorati-Weierstrass定理**：对于在去心开圆$D_r(z_0)-\{z_0\}$上全纯的函数$f$，如果$z_0$是$f$的本质奇点，那么$f(D_r(z_0)-\{z_0\})$是稠密的。

### 3.2	扩充复平面

**扩充复平面(the extended complex plane)**：$\overline{\C}$为$\C$的一点紧致化。
$$
\overline{\C}=\C\cup\{ \infty \}
$$
**Riemann球(the Riemann sphere)**：定义
$$
\mathbb{S}=\left\{ (X,Y,Z):X^2+Y^2+\left(Z-\frac{1}{2}\right)^2=\frac{1}{4} \right\}
$$

$$
\C=\{ (x,y,0):(x,y)\in\R^2 \}
$$

Riemann球的北极记作$\mathcal{N}=(0,0,1)$，那么$\C\to \mathbb{S}-\mathcal{N}$构成双射
$$
(x,y)=\left(\frac{X}{1-Z},\frac{Y}{1-Z}\right)
$$

$$
(X,Y,Z)=\left( \frac{x}{x^2+y^2+1},\frac{y}{x^2+y^2+1},\frac{x^2+y^2}{x^2+y^2+1} \right)
$$

于是扩展复平面的无穷远点就可以定义为$\mathcal{N}$的像。进而
$$
\mathbb{S}\simeq \overline{\C}
$$
**无穷远点的邻域**：
$$
B_r(\infty)=\{ z\in\overline{\C}:r<|z|\le\infty \}
$$
**奇点(point singularity)**：称$\infty$为函数$f$的奇点，如果$f$在$\infty$处不全纯，但在$\infty$的任意邻域内存在全纯的点。

**孤立奇点(isolated point singularity)**：称$\infty$为函数$f$的孤立奇点，如果$f$在$\infty$处不全纯，但在$\infty$的某去心邻域全纯。

**可去奇点(removable singularity)**：对于以$\infty$为孤立奇点的函数$f$，称$\infty$为$f$的可去奇点，如果$0$为$f(\frac{1}{z})$的可去奇点。

**极点(pole)**：对于以$\infty$为孤立奇点的函数$f$，称$\infty$为$f$的$n$阶极点，如果$0$为$f(\frac{1}{z})$的$n$阶极点。

**本质奇点(essential singularity)**：对于以$\infty$为孤立奇点的函数$f$，称$\infty$为$f$的本质奇点，如果$0$为$f(\frac{1}{z})$的本质奇点。

### 3.3	亚纯函数

**亚纯函数(meromorphic function)**：称$f$在开集$\Omega$上是亚纯的，如果对于至多可数序列$\{z_n\}$，$f$在$\Omega-\{z_n\}$全纯，每一个$z_n$为$f$的极点，且若序列$\{z_n\}$收敛，则收敛于$\partial \Omega$。

**扩充复平面上的亚纯函数(meromorphic function in the extended complex plane)**：称$\C$上的亚纯函数$f$是在$\overline{\C}$上的亚纯函数，如果$f$在$\infty$处全纯，或者$\infty$为$f$的极点。

**定理3.4**：扩展复平面上的亚纯函数是有理函数。

## 4	辐角原理和应用

**定理4.1	辐角原理(the argument principle)**：对于定义在开集$\Omega\sub\C$上的亚纯函数$f$，如果开圆$C\sub\Omega$，且$f$在$\partial C$上无极点和零点，那么
$$
\frac{1}{2\pi i}\int_{\partial C}{\frac{f'(z)}{f(z)}\mathrm{d}z}=n_{z}-n_{p}
$$
其中$n_z$和$n_p$分别为$f$在$C$的零点数和极点数。

**推论4.2**：对于定义在开集$\Omega\sub\C$上的亚纯函数$f$，如果$\Omega_\gamma\sub\Omega$，其中$\Omega_\gamma$为有趣曲线$\gamma$围成的区域，且$f$在$\gamma$上无极点和零点，那么
$$
\frac{1}{2\pi i}\int_{\Omega_\gamma}{\frac{f'(z)}{f(z)}\mathrm{d}z}=n_{z}+n_{p}
$$
其中$n_z$和$n_p$分别为$f$在$\Omega_\gamma$的零点数和极点数。

**定理4.3	Rouché定理**：对于定义在开集$\Omega\sub\C$上的全纯函数$f$和$g$，如果开圆$C\sub\Omega$，且对于任意$z\in\partial C$，成立
$$
|f(z)|>|g(z)|
$$
那么$f$和$f+g$在$C$上存在相同数目的零点。

**定理4.4	开映射定理(open mapping theorem)**：如果$f$在开集$\Omega\sub\C$上是全纯函数，那么$f$是开的，即$f$把开集映成开集，或$f$为常函数。

全纯函数将开集映为开集，将域映为域，除非为常函数。

**定理4.5	最大模原理(maximum modulus principle)**：如果$f$在区域$\Omega$上是全纯函数，那么$|f|$不在$\Omega$内取到最大值，除非$f$为常函数。事实上，又如果$f$在$\Omega$内无零点，那么$|f|$不在$\Omega$内取到最小值，除非$f$为常函数。

**推论4.6**：对于有界域$\Omega\sub\C$，如果$f$在$\Omega$上全纯，且在$\overline{\Omega}$上连续，那么
$$
\sup_{z\in\Omega}{|f(z)|}\le\sup_{z\in\overline{\Omega}-\Omega}|f(z)|
$$

**定理4.7	Schwartz引理**：对于单位开圆盘$\mathbb{D}$，如果$f:\mathbb{D}\to\mathbb{D}$为全纯函数，那么
$$
|f'(0)|\le 1-|f(0)|,\qquad 
|f(z)|\le|z|,\qquad
z\in\mathbb{D}
$$
当且仅当存在$\theta\in\R$，使得$f(z)=\mathrm{e}^{i\theta}z$时等号成立。

**定理4.8	Schwartz-Pick引理**：对于单位开圆盘$\mathbb{D}$，如果$f:\mathbb{D}\to\mathbb{D}$为全纯函数，那么对于任意$z,w\in\mathbb{D}$，成立
$$
\left| \frac{f(z)-f(w)}{1-\overline{f(z)}f(w)} \right|
\le
\left| \frac{z-w}{1-\overline{z}w} \right|
$$

## 5	同伦和单连通区域

**同伦(homotopic)**：对于开集$\Omega$中定义在$[a,b]$的参数化曲线$\gamma_0(t)$和$\gamma_1(t)$，满足具有相同的始点和终点，即
$$
\gamma_0(a)=\gamma_1(a)=\alpha,\qquad \gamma_0(b)=\gamma_1(b)=\beta
$$
称曲线$\gamma_0$和$\gamma_1$在$\Omega$中是同伦的，如果对于任意$s\in[0,1]$，存在开集$\Omega$中定义在$[a,b]$的参数化曲线$\gamma_s(t)$，使得成立
$$
\gamma_s(a)=\alpha,\qquad \gamma_s(b)=\beta
$$
并且对于任意$t\in[a,b]$，成立
$$
\gamma_s(t)|_{s=0}=\gamma_0(t),\qquad \gamma_s(t)|_{s=1}=\gamma_1(t)
$$
同时$\gamma_s(t)$对于$(s,t)\in[0,1]\times[a,b]$上是连续的。

**单连通(simply connected)**：称区域$\Omega\sub\C$是单连通的，如果对于$\Omega$中任意两条具有相同的始点和终点的曲线都是同伦的。

**定理5.1**：如果$f$在$\Omega$上是全纯的，那么对于任意$\Omega$中的同伦曲线$\gamma_0$和$\gamma_1$，成立
$$
\int_{\gamma_0}{f(z)\mathrm{d}z}=\int_{\gamma_1}{f(z)\mathrm{d}z}
$$
**定理5.2**：单连通区域中任何全纯函数都存在原函数。

**推论5.3**：对于单连通区域$\Omega$中的全纯函数$f$，那么对于$\Omega$中任意闭曲线$\gamma$，成立
$$
\int_\gamma{f(z)\mathrm{d}z}=0
$$
## 6	复对数

**定理6.1**：如果$\Omega$为单连通区域，且$1\in\Omega,0\notin\Omega$，那么在$\Omega$中存在对数的分支$F(z)=\log_{\Omega}(z)$，使得成立

- $F$在$\Omega$中是全纯的。
- 对于任意$z\in\Omega$，成立$\mathrm{e}^{F(z)}=z$。
- 对于任意$r\in\R^+\cap\Omega$，成立$F(r)=\ln{r}$。

**对数的主分支(the principal branch of the logarithm)**：对于裂隙平面$\Omega=\C-(-\infty,0] $，存在对数的主分支
$$
\log{z}=\ln{r}+i\theta
$$
其中$z=r\mathrm{e}^{i\theta}$且$r\in\R^+,\theta\in(-\pi,\pi)$。

- $$
  \log(z_1z_2)\ne\log{z_1}+\log{z_2}
  $$
- 对于$|z|<1$，成立
  $$
  \log{(1+z)}=\sum_{n=1}^{\infty}{(-1)^{n+1}\frac{z^n}{n}}
  $$

**幂(power)**：如果$\Omega$为单连通区域，且$1\in\Omega,0\notin\Omega$，选择对数的分支，对于任意$\alpha\in\C$，定义幂
$$
z^\alpha=\mathrm{e}^{\alpha\log{z}}
$$

**定理6.2**：如果函数$f$在单连通区域$\Omega$上是全纯非零函数，那么在$\Omega$上存在全纯函数$g$，使得成立
$$
f(z)=\mathrm{e}^{g(z)}
$$
其中$g(z)$可以表示为$\log{f(z)}$，并确定了该对数的一个分支。

## 7	Fourier级数和调和函数

**定理7.1**：如果$f$在开圆$D_R(z_0)$上是全纯的，那么$f$存在在该开圆上收敛的幂级数
$$
f(z)=\sum_{n=0}^{\infty}{a_n(z-z_0)^n}
$$
其中对于任意$n\in\N$以及$0<r<R$，成立
$$
a_n=\frac{1}{2\pi r^n}\int_{0}^{2\pi}{f(z_0+r\mathrm{e}^{i\theta})\mathrm{e}^{-in\theta}\mathrm{d}\theta}
$$
此外，当$n\in\Z-\N$时，成立
$$
0=\frac{1}{2\pi r^n}\int_{0}^{2\pi}{f(z_0+r\mathrm{e}^{i\theta})\mathrm{e}^{-in\theta}\mathrm{d}\theta}
$$

**推论7.2	中值定理(mean-value property)**：如果$f$在开圆$D_R(z_0)$上是全纯的，那么对于任意$0<r<R$，成立
$$
f(z_0)=\frac{1}{2\pi}\int_{0}^{2\pi}{f(z_0+r\mathrm{e}^{i\theta})\mathrm{d}\theta}
$$

**推论7.3**：如果$f$在开圆$D_R(z_0)$上是全纯的，且$u=\mathrm{Re}(f)$，那么对于任意$0<r<R$，成立
$$
u(z_0)=\frac{1}{2\pi}\int_{0}^{2\pi}{u(z_0+r\mathrm{e}^{i\theta})\mathrm{d}\theta}
$$

# 四、Laurent展式

## 1	解析函数的Laurent展式

**Laurent展式**：
$$
f(z)=\sum_{n=-\infty}^{\infty}{c_n(z-z_0)^n}
$$
**Laurent系数**：
$$
c_n=\frac{1}{2\pi i}\int_{\gamma}{\frac{f(\zeta)}{(\zeta-z_0)^{n+1}}\mathrm{d}\zeta},\quad \gamma:|\zeta-z_0|=\rho\in(r,R)
$$
**Laurent级数**：
$$
\sum_{n=-\infty}^{\infty}{c_n(z-z_0)^n}
$$
**正则部分**：
$$
\sum_{n=0}^{\infty}{c_n(z-z_0)^n}
$$
**主要部分**：
$$
\sum_{n=1}^{\infty}{\frac{c_{-n}}{(z-z_0)^n}}
$$
**定理1.1**：对于收敛圆环为
$$
H:0\le r<|z-z_0|<R\le\infty
$$
的双边幂级数
$$
f(z)=\sum_{n=-\infty}^{\infty}{c_n(z-z_0)^n}
$$

- $f(z)$内闭一致收敛于$H$。
- $f(z)$在$H$内解析。
- $f(z)$在$H$内可逐项求导。
- $f(z)$可沿曲线$\gamma\sub H$逐项积分。

**定理1.2	Laurent定理**：在圆环$H:0\le r<|z-z_0|<R\le\infty$内的解析函数$f(z)$存在且存在唯一Laurent展式
$$
f(z)=\sum_{n=-\infty}^{\infty}{c_n(z-z_0)^n}
$$
其中
$$
c_n=\frac{1}{2\pi i}\int_{\gamma}{\frac{f(\zeta)}{(\zeta-z_0)^{n+1}}\mathrm{d}\zeta},\quad \gamma:|\zeta-z_0|=\rho\in(r,R)
$$

## 2	孤立奇点

**奇点**：称$z_0\in\C$为函数$f$的奇点，如果$f$在$z_0$处不解析，但在$z_0$的任意邻域内存在解析的点。

**孤立奇点**：称$z_0\in\C$为函数$f$的奇点，如果$f$在$z_0$处不解析，但在$z_0$的某去心邻域内解析，即在$z_0$的某去心邻域内存在Laurent级数。

**可去奇点**：$f$的孤立奇点$z_0$为可去奇点的等价定义。

- $f$在$z_0$的主要部分为零。
- 存在有限极限$\lim_{z\to z_0}{f(z)}$。
- $f$在$z_0$的某去心邻域内有界。

**极点**：$f$的孤立奇点$z_0$为$n$阶极点的等价定义。

- $f$在$z_0$的主要部分为
  $$
  \sum_{k=1}^{n}{\frac{c_{-k}}{(z-z_0)^k}}
  $$

- $f$在$z_0$的某去心邻域内可表示为
  $$
  f(z)=\frac{\lambda(z)}{(z-z_0)^n}
  $$
  其中$\lambda(z)$在$z_0$点的邻域内解析，且$\lambda(z_0)\ne0$。

- $z_0$为$\frac{1}{f}$的$n$阶零点。

- 
  $$
  \lim_{z\to z_0}{f(z)}=\infty
  $$
  $$
  0<\lim_{z\to z_0}{(z-z_0)^nf(z)}<\infty
  $$

**本质奇点**：$f$的孤立奇点$z_0$为本质奇点的等价定义。

- $f$在$z_0$的主要部分为
  $$
  \sum_{n=1}^{\infty}{\frac{c_{-n}}{(z-z_0)^n}}
  $$

- 不存在极限$\lim_{z\to z_0}{f(z)}$。

**定理2.1	Weierstrass定理**：如果$z_0$为函数$f$的本质奇点，那么对于任意$z\in\overline{\C}$，存在$\{z_n\}_{n=1}^{\infty}\sub\C$，满足$z_n\to z_0$，且
$$
\lim_{n\to\infty}{f(z_n)}=z
$$

**定理2.2	Picard定理**：如果$z_0$为函数$f$的本质奇点，那么对于除可能的一个值$z'$外任意$z\in\C$，存在$\{z_n\}_{n=1}^{\infty}\sub\C$，满足$z_n\to z_0$，且对于任意$n\in\N^*$，成立
$$
f(z_n)=z
$$

## 3	无穷远点上的解析函数

**孤立奇点**：如果存在$r\ge 0$，使得$f$在$|z|>r$内解析，那么称$\infty$为$f$的孤立奇点。

**可去奇点、极点和本质奇点**：如果$0$为$f(\frac{1}{z})$的可去奇点、$n$阶极点或本质奇点，那么称$\infty$为$f(z)$的可去奇点、$n$阶极点或本质奇点。

# 五、Fourier变换

**Fourier变换**：
$$
\hat{f}(\xi)=\int_{-\infty}^{\infty}{f(x)\mathrm{e}^{-2\pi i x \xi}\mathrm{d}x},\quad \xi\in\R
$$

**Fourier逆变换**：
$$
f(x)=\int_{-\infty}^{\infty}{\hat{f}(\xi)\mathrm{e}^{2\pi i x \xi}\mathrm{d}\xi},\quad x\in\R
$$

## 1	$\mathfrak{F}$

**$\mathfrak{F}_a$**：对于任意$a>0$，定义$\mathfrak{F}_a$族为满足如下条件的函数集族。

- $f$在$S_a$上是全纯的，其中
  $$
  S_a=\{ z\in\C:|\mathrm{Im}(z)|<a \}
  $$
- 存在常数$A>0$，使得对于任意$x\in\R$和$|y|<a$，成立
  $$
  f(x+iy)\le\frac{A}{1+x^2}
  $$

**$\mathfrak{F}$**：
$$
\mathfrak{F}=\bigcup_{a>0}{\mathfrak{F}_a}
$$

## 2	$\mathfrak{F}$上的Fourier变换

**定理2.1**：如果$f\in\mathfrak{F}_a$，那么对于任意$b\in[0,a)$，成立
$$
| \hat{f}(\xi) |\le B\mathrm{e}^{-2\pi b|\xi|}
$$

**定理2.2**：如果$f\in\mathfrak{F}$，那么成立Fourier逆变换：
$$
f(x)=\int_{-\infty}^{\infty}{\hat{f}(\xi)\mathrm{e}^{2\pi i x \xi}\mathrm{d}\xi},\quad x\in\R
$$

**引理2.3**：对于$A\in\R^+,B\in\R$，成立
$$
\int_0^{\infty}{\mathrm{e}^{-(A+iB)\xi}\mathrm{d}\xi}=\frac{1}{A+iB}
$$

**定理2.4**：如果$f\in\mathfrak{F}$，那么
$$
\sum_{n\in\Z}{f(n)}=\sum_{n\in\Z}{\hat{f}(n)}
$$

## 3	Paley-Wiener定理

**定理3.1**：如果存在$a,A>0$，使得满足$|\hat{f}(\xi)|\le A\mathrm{e}^{-2\pi a|\xi|}$，那么$f$是在带状区域$S_b=\{ z\in\C:|\mathrm{Im}(z)|<b \}$上的全纯函数$f$在$\R$上的限制。

**推论3.2**：如果存在$a>0$，使得满足$\hat{f}(\xi)=O(\mathrm{e}^{-2\pi a|\xi|})$，并且$f$在非空开区间上为零，那么$f=0$。

**定理3.3	Paley-Wiener定理**：对于在$\R$上连续且适度减小的函数$f$，$f$在$\C$上的延拓满足$|f(z)|\le A\mathrm{e}^{2\pi M|z|}$，当且仅当$\hat{f}$在$[-M,M]$上受支持。

**定理3.4**：对于在扇形区域
$$
S=\{ z:-\frac{\pi}{4}<\arg{z}<\frac{\pi}{4} \}
$$
上全纯且在$\overline{S}$上连续的函数$F$，如果$F$在$S$的边界上满足$|F|\le 1$，且存在$c,C>0$，使得在$S$上成立$|F|\le C\mathrm{e}^{c|z|}$，那么在$S$上成立
$$
|F|\le 1
$$

**定理3.5**：对于适度下降的$f$及$\hat{f}$，对于任意$\xi<0$，成立$\hat{f}(\xi)=0$，当且仅当$f$可以延拓为在上半闭平面$\{z\in\C:\mathrm{Im}(z)\ge 0\}$连续有界且在内部全纯的函数。

# 六、整函数

## 1	Jensen公式

在本节记以原点为圆心以$R$为半径的开圆盘和圆周分别记为$D_R$和$C_R$。

**定理1.1	Jensen公式**：对于开集$\Omega\sub\C$，如果$\overline{D}_R\sub\Omega$，函数$f$在$\Omega$上全纯，$f(0)\ne 0$且$0\notin f(C_R)$，那么记$f$在$D_R$上的零点为$z_1,\cdots,z_n$（以重数计），成立
$$
\log|f(0)|=\sum_{k=1}^{n}{\log\left(\frac{|z_k|}{R}\right)}+\frac{1}{2\pi}\int_0^{2\pi}{\log|f(R\mathrm{e}^{i\theta})|\mathrm{d}\theta}
$$

**推论**：对于在$\overline{D}_R$上全纯的函数$f$，定义$\frak{n}(r)$为$f$在$D_r$上的零点，其中$0<r<R$，如果$f(0)\ne 0$且$0\notin f(C_R)$，那么
$$
\int_0^R{\frak{n}(r)\frac{\mathrm{d}t}{r}}=\frac{1}{2\pi}\int_0^{2\pi}{\log|f(R\mathrm{e}^{i\theta})|\mathrm{d}\theta}-\log|f(0)|
$$

**引理1.2**：如果$z_1,\cdots,z_n$是$f$在$D_R$上的零点，那么
$$
\int_0^R{\frak{n}(r)\frac{\mathrm{d}t}{r}}=\sum_{k=1}^{n}{\log\left|\frac{R}{z_k}\right|}
$$

## 2	有限阶函数

**增长阶(order of growth)**：对于整函数$f$，定义其增长阶为
$$
\rho_f=\inf\{ \rho:\exists A,B>0,\forall z\in\C,|f(z)|\le A\mathrm{e}^{B|z|^\rho} \}
$$

**定理2.1**：如果整函数$f$满足$\rho_f\le\rho$，那么

- 存在$C>0$，使得充分大的$r$，满足$\frak{n}(r)\le Cr^\rho$。
- 如果$z_1,\cdots,z_n$是$f$在$D_R$上的非原点零点，那么对于任意$s>\rho$，成立
  $$
  \sum_{k=1}^{\infty}{|z_k|^s}<\infty
  $$

## 3	无穷积

### 3.1	概论

**命题3.1**：对于$\{z_n\}_{n=1}^{\infty}\sub\C$，如果
$$
\sum_{n=1}^{\infty}<\infty
$$
那么如下无穷积收敛
$$
\sum_{n=1}^{\infty}{(1+z_n)}
$$
并且收敛于$0$，当且仅当存在$z_k=0$。

**命题3.2**：对于$\Omega\sub\C$上的全纯函数序列$\{f_n\}_{n=1}^{\infty}$，如果存在$c_n>0$，使得成立
$$
\sum_{n=1}^{\infty}{c_n}<\infty
$$
并且对于任意$z\in\Omega$，成立
$$
|f_n(z)-1|\le c_n
$$
那么

- 无穷积$\prod_{n=1}^{\infty}{f}$一致收敛于$\Omega$上的全纯函数$f$。
- 如果对于任意$n\in\N^*$，成立$f(n)\ne0$，那么
  $$
  \frac{f'}{f}=\sum_{n=1}^{\infty}{\frac{f_n'}{f_n}}
  $$

### 3.2	例：正弦函数的无穷积

$$
\frac{\sin{\pi z}}{\pi z}=\prod_{n=1}^{\infty}\left(1-\frac{z^2}{n^2}\right)
$$

## 4	Weierstrass无穷积

**定理4.1**：对于任意$\{z_n\}_{n=1}^{\infty}\sub\C$，满足$|z_n|\to\infty$，存在$\C$上的整函数$f$，使得$f$以且仅以$\{z_n\}_{n=1}^{\infty}$为零点；而且如果$\C$上的整函数$h$亦以且仅以$\{z_n\}_{n=1}^{\infty}$为零点，那么存在$\C$上的整函数$g$，使得成立$h=f\mathrm{e}^g$。事实上$f$可取Weierstrass积。

**自然因子(canonical factor)**：对于度$n\in\N$，定义自然因子为
$$
E_n(z)=\begin{cases}
1-z,\quad & n=0\\
(1-z)\mathrm{e}^{\sum_{k=1}^{n}{\frac{z^k}{k}}},\quad & n\in\N^*
\end{cases}
$$

**引理4.2**：对于任意$|z|\le\frac{1}{2}$，成立$|1-E_n(z)|\le 2\mathrm{e}|z|^{n+1}$。

**Weierstrass积(Weierstrass product)**：
$$
f(z)=z^m\prod_{n=1}^{\infty}{E_n\left(\frac{z}{z_n}\right)}
$$

## 5	Hadamard因子分解定理

**定理5.1	Hadamard因子分解定理(Hadamard’s factorization theorem)**：如果$f$为$\C$上的以$\rho$为增长阶的整函数，且以且仅以$\{z_n\}_{n=1}^{\infty}$（和$0$）为零点，那么
$$
f(z)=\mathrm{e}^{P(z)}z^m\prod_{n=1}^{\infty}E_{[\rho]}\left(\frac{z}{z_n}\right)
$$
其中$P$为次数不多于$[\rho]$的多项式，$m$为$f$在$z=0$的零点阶。

**引理5.2**：如果$|z|\le\frac{1}{2}$，那么存在$c>0$，使得成立
$$
|E_n(z)|\ge\mathrm{e}^{-c|z|^{n+1}}
$$
如果$|z|\ge\frac{1}{2}$，那么存在$c'>0$，使得成立
$$
|E_n(z)|\ge|1-z|\mathrm{e}^{-c'|z|^{n}}
$$

**引理5.3**：对于任意$\rho<s<[\rho]+1$，存在$c>0$，成立
$$
\left|\prod_{n=1}^{\infty}{E_{[\rho]}\left(\frac{z}{z_n}\right)} \right|\ge\mathrm{e}^{-c|z|^s}
$$
除非
$$
z\in\bigcap_{n=1}^{\infty}{\partial D_{|z_n|^{-([\rho]+1)}}(z_n)}
$$

**推论5.4**：对于任意$\rho<s<[\rho]+1$，存在$c>0$和$\{r_n\}_{n=1}^{\infty}\sub\R^+$，满足$r_n\to\infty$，且对于任意$|z|=r_n$，成立
$$
\left|\prod_{n=1}^{\infty}{E_{[\rho]}\left(\frac{z}{z_n}\right)} \right|\ge\mathrm{e}^{-c|z|^s}
$$

# 七、$\Gamma$函数和$\zeta$函数

## 1	$\Gamma$函数

**$\Gamma$函数**：
$$
\Gamma(s)=\int_0^\infty\mathrm{e}^{-t}t^{s-1}\mathrm{d}t,\quad s\in\C-(\Z-\N^*)
$$

### 1.1	解析延拓

**命题1.1**：$\Gamma$函数可解析延拓于$\Re(s)>0$。

**引理1.2**：
$$
\Gamma(s+1)=s\Gamma(s),\quad ,\qquad \Re(s)>0
$$

**定理1.3**：$\Gamma$函数可解析延拓于$\C$上仅以$\Z-\N^*$为简单极点的亚纯函数，其中$\Gamma$在$-n\in\Z-\N^*$处的留数为$\frac{(-1)^n}{n!}$。

### 1.2	$\Gamma$函数的性质

**定理1.4**：
$$
\Gamma(s)\Gamma(1-s)=\frac{\pi}{\sin{\pi s}},\quad s\in\C
$$

**引理1.5**：
$$
\int_0^\infty{\frac{v^{a-1}}{1+v}\mathrm{d}v}=\frac{\pi}{\sin{\pi a}},\quad 0<a<1
$$

**定理1.6**：$\Gamma$函数成立如下性质。

- $\frac{1}{\Gamma}$是仅以$s\in\Z-\N^*$为简单零点的整函数。

- $\frac{1}{\Gamma}$存在增长阶
  $$
  \left| \frac{1}{\Gamma(s)} \right|\le c_1\mathrm{e}^{c_2|s|\log|s|}
  $$
  因此$\frac{1}{\Gamma}$是以$1$为增长阶的，即对于任意$\varepsilon>0$，存在$c$，使得成立
  $$
  \left| \frac{1}{\Gamma(s)} \right|\le c\mathrm{e}^{c_2|s|^{1+\varepsilon}}
  $$

**定理1.7**：
$$
\Gamma(s)=\frac{1}{s\mathrm{e}^{\gamma s}}\prod_{n=1}^{\infty}{\left( 1+\frac{s}{n} \right)\mathrm{e}^{\frac{s}{n}}}
$$
其中$\gamma$为Euler常数
$$
\gamma=\lim_{n\to\infty}\left( \sum_{k=1}^{n}{\frac{1}{k}}-\log{k} \right)
$$

## 2	$\zeta$函数

**Riemann$\zeta$函数**：
$$
\zeta(s)=\sum_{n=1}^{\infty}{\frac{1}{n^s}},\qquad s\in\C-\{1\}
$$

### 2.1	泛函方程和解析延拓

**$\vartheta$函数**：
$$
\vartheta(t)=\sum_{n=-\infty}^{\infty}{\mathrm{e}^{-\pi n^2 t}},\quad t>0
$$

- $$
  \vartheta(t)=\frac{\vartheta(\frac{1}{t})}{\sqrt{t}}
  $$

- 存在$C>0$，使得对于任意$\varepsilon>0$，存在$\delta>0$，使得当$0<t<\delta$时，成立
  $$
  \vartheta(t)\le \frac{C}{\sqrt{t}}
  $$

- 存在$C>0$，使得对于任意$t\ge 1$，成立
  $$
  |\vartheta(t)-1|\le C\mathrm{e}^{-\pi t}
  $$

**$\xi$​函数**：
$$
\xi(s)=\pi^{-\frac{s}{2}}\Gamma\left(\frac{s}{2}\right)\zeta(s),\qquad \Re(s)>1
$$
**命题2.1**：$\zeta$函数可解析延拓于$\Re(s)>1$。

**定理2.2**：
$$
\pi^{-\frac{s}{2}}\Gamma\left(\frac{s}{2}\right)\zeta(s)
=\frac{1}{2}\int_{0}^{\infty}{u^{\frac{s}{2}-1}(\vartheta(u)-1)\mathrm{d}u}
,\qquad \Re(s)>1
$$

**定理2.3**：$\xi$函数在$\Re(s)>1$上全纯，且可解析延拓于$\C$上仅以$0$和$1$为简单极点的亚纯函数，而且
$$
\xi(s)=\xi(1-s),\quad s\in\C
$$

**定理2.4**：$\zeta$函数可解析延拓于$\C$上仅以$1$为简单极点的亚纯函数。

**命题2.5**：存在$\C$上的整函数序列$\{ \delta_n \}_{n=1}^{\infty}$，满足$|\delta_n(s)|\le\frac{n^{\Re(s)+1}}{|s|}$，且对于任意$n>1$，成立
$$
\sum_{k=1}^{n-1}{\frac{1}{n^s}}-\int_{1}^{n}{\frac{\mathrm{d}x}{x^s}}=\sum_{k=1}^{n-1}{\delta_n(s)}
$$

**推论2.6**：$\zeta(s)-\frac{1}{s-1}$在$\Re(s)>0$上全纯，且
$$
\zeta(s)-\frac{1}{s-1}=\sum_{n=1}^{\infty}{\delta_n(s)}
$$

**命题2.7**：对于任意$\sigma\in[0,1]$和$\varepsilon>0$，存在常数$c_\varepsilon$，使得成立

- 如果$\sigma\le\Re(s)$且$|t|\ge 1$，那么
  $$
  |\zeta(s)|\le c_\varepsilon|t|^{1-\sigma+\varepsilon}
  $$

- 如果$\Re(s)\ge 1$且$|t|\ge 1$，那么
  $$
  |\zeta'(s)|\le c_\varepsilon|t|^\varepsilon
  $$

# 八、$\zeta$函数和素数定理

**Euler函数**：定义Euler函数$\pi(x)$为不大于$x$的素数的个数。

**素数定理(the prime number theorem)**：
$$
\pi(x)\sim\frac{x}{\log{x}}\qquad (x\to\infty)
$$

**$\zeta$函数的素数展开**：
$$
\zeta(s)=\prod_{p}{\frac{1}{1-p^{-s}}}=\prod_{p}\sum_{n=0}^{\infty}{\frac{1}{p^{ns}}}
$$

## 1	$\zeta$函数的零点

**Riemann假设(Riemann hypothesis)：$\zeta$函数的非平凡零点(nontrivial zero)的实部为$\frac{1}{2}$。**

**定理1.1**：$\zeta$函数在临界带$0\le\Re(s)\le 1$外的零点仅有$-2\N^*$。

**定理1.2**：$\zeta$函数$\Re(s)=1$上无零点。

**引理1.3**：如果$\Re(s)>1$，那么存在$\{c_n\}_{n=1}^{\infty}$，使得成立
$$
\log\zeta(s)=\sum_{p,m}{\frac{p^{-ms}}{m}}=\sum_{n=1}^{\infty}{\frac{c_n}{n^s}}
$$

**引理1.4**：
$$
3+4\cos\theta+\cos{2\theta}\ge 0,\quad \theta\in\R
$$

**推论1.5**：如果$x>1$且$y\in\R$，那么
$$
\log| \zeta^3(x)\zeta^4(x+iy)\zeta(x+2iy) |\ge 0
$$

**命题1.6**：对于任意$\varepsilon>0$，如果$\Re(s)\ge$且$|\Im(s)|\ge 1$，那么存在$c_{\varepsilon}$，使得成立
$$
\frac{1}{|\zeta(s)|}\le c_{\varepsilon}|\Im(s)|^\varepsilon
$$

## 2	转化为$\psi$和$\psi_0$函数

**Tchebychev$\psi$函数**：定义
$$
\Lambda(n)=\begin{cases}
\log p,\quad & \exist p,\exists m\in\N^*,n=p^m\\
0,\quad & \mathrm{otherwise}
\end{cases}
$$
那么Tchebychev$\psi$函数可等价定义如下
$$
\begin{align}
\psi(x)=&\sum_{p^m\le x}{\log p}\\
=&\sum_{n=1}^{[x]}\Lambda(n)\\
=&\sum_{p\le x}\left[\frac{\log x}{\log p}\right]\log p
\end{align}
$$

**$\psi_0$函数**：
$$
\psi_0(x)=\int_1^x\psi(u)\mathrm{d}u
$$

**命题2.1**：如下两命题等价
$$
\psi(x)\sim x\qquad (x\to\infty)
$$
$$
\pi(x)\sim\frac{x}{\log{x}}\qquad (x\to\infty)
$$

**命题2.2**：如果
$$
\psi_0(x)\sim x \qquad (x\to\infty)
$$
那么
$$
\psi(x)\sim x\qquad (x\to\infty)
$$
因此
$$
\pi(x)\sim\frac{x}{\log{x}}\qquad (x\to\infty)
$$

**命题2.3**：对于任意$c>1$，成立
$$
\psi_0(x)=\frac{1}{2\pi i}\int_{c-i\infty}^{c+i\infty}\frac{x^{s+1}}{s(s+1)}\left( -\frac{\zeta'(s)}{\zeta(s)} \right)\mathrm{d}s
$$

**引理2.4**：如果$c>0$，那么
$$
\frac{1}{2\pi i}\int_{c-i\infty}^{c+i\infty}\frac{x^{s+1}}{s(s+1)}\mathrm{d}s=\begin{cases}
0,\quad & 0<x\le1\\
1-\frac{1}{x},\quad & x\ge 1
\end{cases}
$$

# 九、共形映射

**Motivation**：满足如何性质的开集$\Omega\sub\C$使得存在从$\Omega$到$\mathbb{D}$的全纯双射。

## 1	共形等价

**共形映射(conformal map)或双全纯(biholomorphism)**：称全纯双射为共形映射或双全纯映射。

**双全同态(biholomorphic)**：如果$f:U\to V$为共形映射，那么称$U$和$V$是共形等价或双全同态。

**命题1.1**：如果$f:U\to V$为全纯单射，那么对于任意$z\in U$，$f'(z)\ne 0$。特别的，$f^{-1}:f(U)\to U$为全纯的。因此，开集$U$和$V$是共形等价的，当且仅当存在全纯函数$f:U\to V$和$g:V\to U$，使得对于任意$z\in U$和$w\in V$，成立$g(f(z))=z$和$f(g(w))=w$。

### 1.1	圆盘和上半平面

**上半平面(upper half-plane)**：
$$
\mathbb{H}=\{ z\in\C:\Im(z)>0 \}
$$

**定理1.2**：如下映射为共形映射
$$
\begin{align}
F:&\mathbb{H}\to\mathbb{D}\\
& z\mapsto \frac{i-z}{i+z}
\end{align}
$$
其逆映射为
$$
\begin{align}
G:&\mathbb{D}\to\mathbb{H}\\
& w\mapsto i\frac{1-w}{1+w}
\end{align}
$$

### 1.2	例

- **平移(translation)**：
  $$
  \begin{align}
  &\C\to\C\\
  &z\mapsto z+h
  \end{align}
  $$

- **膨胀(dilation)**：
  $$
  \begin{align}
  &\C\to\C\\
  &z\mapsto cz\qquad (c\ne 0)
  \end{align}
  $$

- 幂映射：
  $$
  \begin{align}
  &S=\{ z\in\C:0<\arg(z)<\frac{\pi}{n} \}\to\mathbb{H}\\
  &z\mapsto z^n\qquad (n\in\N^*)
  \end{align}
  $$

- 分式映射：
  $$
  \begin{align}
  &\{ z\in\C:|z|<1,\Im(z)>0 \}\to\{ z\in\C:\Re(z)>0,\Im(z)>0 \}\\
  &z\mapsto\frac{1+z}{1-z}
  \end{align}
  $$

- 对数映射：
  $$
  \begin{align}
  &\mathbb{H}\to\{ z\in\C:0<\Im(z)<\pi \}\\
  &z\mapsto\log z
  \end{align}
  $$

- 指数映射：
  $$
  \begin{align}
  &\{ z\in\C:|\Re(z)|<\frac{\pi}{2},\Im(y)>0 \}\to\{ z\in\C:|\Re(z)|<1,\Im(y)>0 \}\\
  &z\mapsto\mathrm{e}^{iz}
  \end{align}
  $$

- 正弦映射：
  $$
  \begin{align}
  &\mathbb{H}\to\{ z\in\C:|\Re(z)|<\frac{\pi}{2},\Im(y)>0 \}\\
  &z\mapsto\sin z
  \end{align}
  $$

### 1.3	带状区域上的Dirichlet问题

**Dirichlet问题(Dirichlet problem)**：
$$
\begin{cases}
\Delta u=0,\quad & \Omega\\
u=f,\quad & \partial\Omega
\end{cases}
$$

**引理1.3**：对于开集$V,U\sub\C$，如果$f:V\to U$是全纯函数，$u:U\to\C$是调和函数，那么$u\circ f:V\to\C$是调和函数。

## 2	Schwarz引理；圆盘和上半平面的自同构

**引理2.1**：