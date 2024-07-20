# 一、$L^p$空间和Banach空间

## 1	$L^p$空间

**$\sigma$-有限测度空间**：以$X$表示底层空间，$\mathcal{F}$表示可测集的$\sigma$-代数，$\mu$表示测度，那么称$(X,\mathcal{F},\mu)$为$\sigma$-有限测度空间。

**$L^p$空间**：对于$1\le p \le \infty$，空间$L^p(X,\mathcal{F},\mu) $表示满足如下条件的复值可测函数构成的集合。
$$
\int_X |f|^p\mathrm{d}\mu<\infty
$$

**$L^p$范数**：对于$f\in L^p(X,\mathcal{F},\mu)$，定义其$L^p$范数为
$$
\Vert f \Vert_{L^p(X,\mathcal{F},\mu)}=
\left(\int_X |f|^p\mathrm{d}\mu\right)^{1/p}
$$

### 1.1	Holder不等式和Minkowski不等式

**共轭(conjugate)指数/对偶(dual)指数**：称$p,q$为共轭指数或对偶指数，如果满足$1\le p,q \le \infty$，且
$$
\frac{1}{p}+\frac{1}{q}=1
$$

**定理1.1	Holder不等式**：对于共轭指数$1< p,q <\infty$，如果$f\in L^p$且$g\in L^q$，那么$fg\in L^1$，且
$$
\Vert fg \Vert_{L^1}\le 
\Vert f \Vert_{L^p}\Vert g \Vert_{L^q}
$$

**定理1.2	Minkowski不等式**：如果$1\le p <\infty$且$f,g\in L^p$，那么$f+g\in L^p$，且
$$
\Vert f+g \Vert_{L^p}\le 
\Vert f \Vert_{L^p}+\Vert g \Vert_{L^p}
$$

### 1.2	$L^p$的完备性

**定理1.3**：$L^p(X,\mathcal{F},\mu)$空间关于范数$\Vert \cdot \Vert_{L^p}$是完备的。

### 1.3	进一步的解释

**命题1.4**：如果$X$为有限正测度集合，且$p_0\le p$，那么$L^{p}\sub L^{p_0}$，且
$$
\frac{1}{\mu(X)^{1/{p_0}}}\Vert f \Vert_{L^{p_0}}
\le
\frac{1}{\mu(X)^{1/{p}}}\Vert f \Vert_{L^{p}}
$$

**命题1.5**：如果$\Z$有计数测度，且$p_0\le p$，那么$L^{p_0}\sub L^{p}$，且$\Vert f \Vert_{L^{p}}\le\Vert f \Vert_{L^{p_0}}$。