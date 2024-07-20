# 目录

[TOC]

# 第一章：Lebesgue测度

## 1.1	$\R$上的Lebesgue外测度

### 1.1.1	介绍

Riemann积分的问题在于一列Riemann可积函数的逐点极限、逐点上极限、逐点下极限、逐点上确界、逐点下确界都不一定是Riemann可积的。在分析学的实际应用中，我们不仅希望一列可积函数的极限依然可积，还希望找到一些条件，使得积分和极限可以交换，即
$$
\int{\lim_{n\to\infty}{f_n}}=\lim_{n\to\infty}{\int{f_n}}
$$

----

**定义1.1.1.1	示性函数**：令$A \sub X$，记$\chi_A(x)$为$A$在$X$上的示性函数，定义为
$$
\chi_A(x)=\begin{cases}
1,\quad x\in A\\
0,\quad x\notin A
\end{cases}
$$

----

无论是级数和还是极限，都是在实分析中非常常见的对象。Lebesgue理论的优点就是可以完美地解决这些问题。因此，在Lebesgue理论中，我们理想的性质都是与可数性相关的。对测度而言，有限可加性不够好，应该有**可数可加性**；对集族而言，在有限交、并下封闭不够好，应该是**在可数交、并下封闭**。

Lebesgue测度的构造方式是这样的。我们先定义所有$\R$的子集的Lebesgue外测度，发现Lebesgue外测度不具有可数可加性，只具有**可数次可加性**，因此在Lebesgue外测度的基础上进行修改，得到具有**可数可加性**的Lebesgue测度。

----

>注：谈论可数可加性与可数次可加性的前提是对一个集族内的集合定义了“大小”。

记$\mu^*(A)$为集合$A$的“大小”。

**可数次可加性**：对于集族内的任意一个集合列$A_n$，成立
$$
\mu^*\left(\bigcup_{n=1}^{\infty}{A_n}\right) \le \sum_{n=1}^{\infty}{\mu^*(A_n)}
$$
**可数可加性**：对于集族内的任意一个无交集合列$A_n$，成立
$$
\mu^*\left(\bigsqcup_{n=1}^{\infty}{A_n}\right) = \sum_{n=1}^{\infty}{\mu^*(A_n)}
$$

### 1.1.2	开区间与开集

**定义1.1.2.1	有界开区间的长度**：对于$a<b\in\R$，定义$(a,b)$的长度为$|(a,b)|=b-a$。特别的，定义$|\O|=0$。

**定义1.1.2.2	无界开区间的长度**：对于$a\in\R$，定义
$$
|(a,\infty)|=|(-\infty,a)|=|(-\infty,\infty)|=\infty
$$
**定义1.1.2.3	$\R$中的开球**：对于$r>0$，$x\in\R$，定义$B_r(x)=(x-r,x+r)$为以$x$为圆心，以$r$为半径的开球。

**定义1.1.2.4	$\R$中的开集**：令$U\sub\R$，如果对于任意$x\in U$，存在$\varepsilon>0$，使得成立$B_r(x)\sub U$，那么称$U$为$\R$中的一个开集。

----

**命题1.1.2.1	有理数的稠密性**：对于任意两实数$a<b\in\R$，存在有理数$r\in\Q$，使得成立
$$
a<r<b
$$

**命题1.1.2.2	$\R$的第二可数性**：存在可数多个$\R$中的开集$\{B_n\}$，使得对于$\R$中的任意开集$U$都可以写成某些$B_n$的并的形式；换言之，若$𝑈$是$\R$中的一个开集，则对任意$x\in U$，存在$B_n$，使得$x\in B_n \sub U$。

**命题1.1.2.3	$\R$中开集的性质**：$\R$的任何一个开集都可以写成可数多个开区间的无交并。换言之，若$U$是 $\R$中的开集，则存在两两无交的$I_n$，使得
$$
U=\bigsqcup_{n=1}^{\infty}{I_n}
$$

### 1.1.3	$\R$上的Lebesgue外测度

**定义1.1.3.1	$\R$上的Lebesgue外测度**：对于$A\sub\R$，定义$A$的Lebesgue外测度为
$$
m^*(A)=\inf{\left\{\sum_{n=1}^{\infty}{|I_n|}:\bigcup_{n=1}^{\infty}{I_n}\supset A\right\}}
$$
其中$I_n$为$\R$中的开区间。	

- 对于$A\sub\R$，且$\bigcup_{n=1}^{\infty}{I_n}\supset A$，成立
  $$
  m^*(A) \le \sum_{n=1}^{\infty}{|I_n|}
  $$

- **正则性**：对于$A\sub\R$，成立
  $$
  m^*(A) \ge 0
  $$

- **有限单点集的外测度为$0$**：对于$n\in\N$​，$a_1,\cdots,a_n\in\R$​，成立
  $$
  m^*\left(\{a_1,\cdots,a_n\}\right)=0
  $$

- **可数集的外测度为$0$**：对于$a_1,a_2,\cdots\in\R$，成立
  $$
  m^*(\{a_n:n\in\N\})=0
  $$

- **空集的外测度为$0$**：
  $$
  m^*(\O)=0
  $$

- **有界限区间的外测度**：对于$a<b\in\R$，成立
  $$
  m^*([a,b])=m^*((a,b))=m^*([a,b))=m^*((a,b])=b-a
  $$

- **无界区间的外测度**：对于无界区间$I\in\R$，成立
  $$
  m^*(I)=\infty
  $$

----

**命题1.1.3.1	Lebesgue外测度的单调性**：对于$A\sub B\sub\R$​，成立
$$
m^*(A) \le m^*(B)
$$

### 1.1.4	$\R$上的Lebesgue外测度的性质

**引理1.1.4.1	$\R$中不等式的充要条件1**：对于$a,b\in\R$，成立
$$
a \ge b \iff \forall\varepsilon>0,a\ge b+\varepsilon
$$

**引理1.1.4.2	$\R$中不等式的充要条件2**：对于$a,b\in\R$，成立
$$
a > b \iff \exist\varepsilon>0,a>b+\varepsilon
$$

**命题1.1.4.1	Lebsegue外测度的可数次可加性**：对于$\{A_n\}_{n\in\N}\sub\mathcal{P}(\R)$，其中$\mathcal{P}(\R)=\{A:A\sub\R\}$为$\R$的幂集，成立
$$
m^*\left(\bigcup_{n=1}^{\infty}{A_n}\right) \le \sum_{n=1}^{\infty}{m^*(A_n)}
$$

**命题1.1.4.2	Lebsegue外测度的性质**：$\R$上的Lebsegue外测度$m^*$为映射
$$
m^*:\mathcal{P}(\R)\to[0,\infty]
$$
- **将空集映射为$0$**：
  $$
  m^*(\O)=0
  $$

- **单调性**：对于$A\sub B\sub\R$​，成立
  $$
  m^*(A) \le m^*(B)
  $$

- **可数次可加性**：对于$\{A_n\}_{n\in\N}\sub\mathcal{P}(\R)$，成立
  $$
  m^*\left(\bigcup_{n=1}^{\infty}{A_n}\right) \le \sum_{n=1}^{\infty}{m^*(A_n)}
  $$

----

**定义1.1.4.1	外测度**：对于集合$X$，$X$上的外测度$\mu^*$为满足以下性质的映射
$$
\mu^*:\mathcal{P}(X)\to[0,\infty]
$$

- **将空集映射为$0$**：
  $$
  \mu^*(\O)=0
  $$

- **单调性**：对于$A\sub B\sub\R$​，成立
  $$
  \mu^*(A) \le \mu^*(B)
  $$

- **可数次可加性**：对于$\{A_n\}_{n\in\N}\sub\mathcal{P}(X)$，成立
  $$
  \mu^*\left(\bigcup_{n=1}^{\infty}{A_n}\right) \le \sum_{n=1}^{\infty}{\mu^*(A_n)}
  $$
  
----

**定义1.1.4.2**：对于$A\sub\R$，$c\in\R$，定义
$$
A+c=\{a+c:a\in A\}
$$

**引理1.1.4.3	Lebesgue外测度的平移不变性**：对于$A\sub\R$，$c\in\R$，成立
$$
m^*(A+c)=m^*(A)
$$

## 1.2	$\R$上的Lebesgue测度

### 1.2.1	Lebesgue外测度不具有可数可加性

**公理1.2.1.1	选择公理**：如果$S$为由非空集合构成的集族，那么存在选择函数
$$
f:S\to\bigcup_{A\in S}{A}
$$
使得对于任意$A\in S$，成立
$$
f(A)\in A
$$
>选择公理与Zermelo–Fraenkel公理体系（ZF公理体系）是独立的。由于选择公理非常重要，其常常被加入到Zermelo–Fraenkel公理体系中。选择公理的英文是Axiom of Choice，我们取”Choice” 中的”C”作为代表，称加入了选择公理的Zermelo–Fraenkel公理体系为ZFC公理体系。现代数学中，除了数理逻辑的大多数学科都是采用ZFC公理体系。

----

**命题1.2.1.1	Lebesgue外测度不具有可数可加性**：$m^*$不具有可数可加性。

### 1.2.2	Caratheodory定理

**定义1.2.2.1	Caratheodory条件**：令$E\in\R$，如果对于任意$A\sub\R$，成立
$$
m^*(A)=m^*(A\cap E)+m^*(A-E)
$$
那么称$E$满足Caratheodory条件，或称$E$为$\R$中的**可测集**。

- 空集和全集为可测集。

- $\R$上的区间、开集、闭集、紧集均为可测集。

- 可测集对集合的**补**封闭，即如果$E$可测，那么$E^C$可测。

- 可测集的集族在**可数并**下封闭，即如果$E_1,E_2,\cdots$​可测，那么
  $$
  \bigcup_{n=1}^{\infty}{E_i}
  $$
  可测。

- Lebesgue外测度在可测集的集族上是**可数可加**的，即如果$E_1,E_2,\cdots$​可测且两两无交，那么
  $$
  m^*\left(\bigsqcup_{n=1}^{\infty}{E_n}\right) = \sum_{n=1}^{\infty}{m^*(E_n)}
  $$

- 对于可测集$E$，如果$m^*(E)=0$且$N\sub E$，那么$N$为可测集。

**引理1.2.2.1**：对于$E\sub\R$，$E$为可测集当且仅当对于任意$A\sub\R$，成立
$$
m^*(A) \ge m^*(A\cap E)+m^*(A-E)
$$

----

**命题1.2.2.1	Caratheodory定理**：令$\mathscr{L}=\{可测集E\sub\R\}$，$m=m^*|_{\mathscr{L}}:\mathscr{L}\to[0,\infty]$，那么称$\mathscr{L}$中的元素为**Lebsegue可测集**，$m$为**Lebesgue测度**，同时以下三组条件均成立。

1. $\mathscr{L}$为一个**$\sigma$-代数**，即

   - $\O\in\mathscr{L}$
   - $\mathscr{L}$在补集下封闭。
   - $\mathscr{L}$在可数并下封闭。

2. $m$为$(\R,\mathscr{L})$上的一个**测度**，即

   - $m(\O)=0$
   
   - 如果$\{E_n\}_{n\in\N}\sub\mathscr{L}$两两无交，那么
     $$
     m\left(\bigsqcup_{n=1}^{\infty}{E_n}\right) = \sum_{n=1}^{\infty}{m(E_n)}
     $$
   
3. $m$为$(\R,\mathscr{L})$上的一个**完备测度**，即

   - $m$为$(\R,\mathscr{L})$上的一个测度。
   - 如果$E\in\mathscr{L}$，$m(E)=0$，$A\sub E$，那么$A\in\mathscr{L}$。

### 1.2.3	$\R$上的Lebesgue可测集与$\sigma$-代数

**定义1.2.3.1	$\sigma$-代数**：对于集合$X$，令$\mathcal{P}(X)$为$X$的幂集，记$\mathscr{M}\sub\mathcal{P}(X)$，称$\mathscr{M}$为$X$上的一个$\sigma$-代数，当且仅当

- $\mathscr{M}$包含空集：$\O\in\mathscr{M}$

- $\mathscr{M}$在补集下封闭：如果$E\in\mathscr{M}$，那么$E^C=X-E\in\mathscr{M}$。

- $\mathscr{M}$在可数并下封闭：如果$\{E_n\}_{n\in\N}\sub\mathscr{M}$，那么
  $$
  \bigcup_{n=1}^{\infty}{E_i}\in\mathscr{M}
  $$

**命题1.2.3.1	$\sigma$-代数的性质**：对于$X$上的一个$\sigma$-代数$\mathscr{M}$，那么

- $\mathscr{M}$在可数交下封闭：如果$\{E_n\}_{n\in\N}\sub\mathscr{M}$，那么
  $$
  \bigcap_{n=1}^{\infty}{E_i}\in\mathscr{M}
  $$

- $\mathscr{M}$在差集下封闭：如果$E,F\in\mathscr{M}$，那么
  $$
  E-F\in\mathscr{M}
  $$

### 1.2.4	$\R$上的Lebsegue测度与测度

**定义1.2.4.1	测度**：对于$X$上的一个$\sigma$-代数$\mathscr{M}$，$\mu:\mathscr{M}\to[0,\infty]$为一个映射，称$\mu$为$(X,\mathscr{M})$上的一个测度当且仅当

- $\mu(\O)=0$

- $\mu$的可数可加性：如果$\{A_n\}_{n\in\N}\sub\mathscr{M}$两两无交，那么
  $$
  \mu\left(\bigsqcup_{n=1}^{\infty}{A_n}\right) = \sum_{n=1}^{\infty}{\mu(A_n)}
  $$

称$(X,\mathscr{M},\mu)$为一个测度空间。

**命题1.2.4.4	测度空间的性质**：对于测度空间$(X,\mathscr{M},\mu)$，那么

- 单调性：如果$A\sub B\in\mathscr{M}$，那么$\mu(A) \le \mu(B)$。特别的，如果$\mu(A)<\infty$，那么$\mu(B-A)=\mu(B)-\mu(A)$。

- $\mu$的可数次可加性：如果$\{A_n\}_{n\in\N}\sub\mathscr{M}$​，那么
  $$
  \mu\left(\bigcup_{n=1}^{\infty}{A_n}\right) \le \sum_{n=1}^{\infty}{\mu(A_n)}
  $$

- **$\mu$的第一单调收敛定理(Continuity from below)**如果$\{A_n\}_{n\in\N}\sub\mathscr{M}$为递增的集合列，那么
  $$
  \mu\left(\bigcup_{n=1}^{\infty}{A_n}\right)=\lim_{n\to\infty}{\mu(A_n)}=\sup_{n\in\N}{\mu(A_n)}
  $$

- **$\mu$的第二单调收敛定理(Continuity from above)**：如果$\{A_n\}_{n\in\N}\sub\mathscr{M}$为递减的集合列，且$\mu(A_1)<\infty$，那么
  $$
  \mu\left(\bigcap_{n=1}^{\infty}{A_n}\right)=\lim_{n\to\infty}{\mu(A_n)}=\inf_{n\in\N}{\mu(A_n)}
  $$

----

**定义1.2.4.2	有限测度**：对于测度空间$(X,\mathscr{M},\mu)$，称$\mu$为有限的，当且仅当
$$
\mu(X)<\infty
$$

**定义1.2.4.3	$\sigma-$有限测度**：对于测度空间$(X,\mathscr{M},\mu)$，称$\mu$为$\sigma-$有限的，当且仅当存在集合列$\{A_n\}_{n\in\N}\sub\mathscr{M}$，使得成立
$$
\bigcup_{n=1}^{\infty}{A_n}=X
$$
以及对于任意$x\in\N$，成立
$$
\mu(A_n)<\infty
$$

----

**定义1.2.4.4	集合列的上、下极限**：对于集合列$\{A_n\}_{n\in\N}\sub X$，定义其上、下极限分别为
$$
\begin{align}
\limsup_{n\to\infty}{A_n}
&=\bigcap_{n=1}^{\infty}{\bigcup_{m=n}^{\infty}{A_m}}\\
&=\left\{x\in X:\forall n\in\N,x\in\bigcup_{m=n}^{\infty}{A_m}\right\}\\
&=\left\{x\in X:\forall n\in\N,\exist m\ge n,x\in A_m\right\}\\
&=\left\{x\in X:x在无穷多个A_n中\right\}
\end{align}
$$

$$
\begin{align}
\liminf_{n\to\infty}{A_n}
&=\bigcup_{n=1}^{\infty}{\bigcap_{m=n}^{\infty}{A_m}}\\
&=\left\{x\in X:\exist n\in\N,x\in\bigcap_{m=n}^{\infty}{A_m}\right\}\\
&=\left\{x\in X:\exist n\in\N,\forall m\ge n,x\in A_m\right\}\\
&=\left\{x\in X:x在除有限个外的所有A_n中\right\}
\end{align}
$$

**命题1.2.4.3	集合列上、下极限的对称性**：对于集合列$\{A_n\}_{n\in\N}\sub X$，成立
$$
(\limsup_{n\to\infty}{A_n})^C=\liminf_{n\to\infty}{A_n}\\
(\liminf_{n\to\infty}{A_n})^C=\limsup_{n\to\infty}{A_n}
$$

----

**定义1.2.4.5	集合列的敛散性与极限**：对于集合列$\{A_n\}_{n\in\N}\sub X$​，如果
$$
\limsup_{n\to\infty}{A_n}=\liminf_{n\to\infty}{A_n}
$$
那么称集合列$\{A_n\}_{n\in\N}$收敛，定义其极限为
$$
\lim_{n\to\infty}{A_n}=\limsup_{n\to\infty}{A_n}=\liminf_{n\to\infty}{A_n}
$$

**命题1.2.4.4	集合列的单调收敛定理**：对于集合列$\{A_n\}_{n\in\N}\sub X$，如果其单调，那么其收敛。

- 如果集合列$\{A_n\}_{n\in\N}$单调递增，那么
  $$
  \lim_{n\to\infty}{A_n}=\bigcup_{n=1}^{\infty}{A_n}
  $$

- 如果集合列$\{A_n\}_{n\in\N}$单调递减，那么
  $$
  \lim_{n\to\infty}{A_n}=\bigcap_{n=1}^{\infty}{A_n}
  $$

----

**定义1.2.4.6	几乎处处成立**：在测度空间$(X,\mathscr{M},\mu)$中，称命题$P(x)$几乎处处成立，当且仅当$\mu(A)=0$，其中
$$
A=\{x:P(x)不成立\}
$$

- 对于测度空间$(X,\mathscr{M},\mu)$，如果$A\sub B\in\mathscr{M}$，且
  $$
  x几乎处处在A中
  $$
  那么
  $$
  x几乎处处在B中
  $$

- 对于测度空间$(X,\mathscr{M},\mu)$，如果$\{A_n\}_{n\in\N}\sub \mathscr{M}$，使得对于任意$n\in\N$，成立$x$几乎处处在每一个$A_n$中，那么
  $$
  x几乎处处在\bigcap_{n=1}^{\infty}{A_n}中
  $$

**命题1.2.4.2	Borel-Cantelli引理**：对于测度空间$(X,\mathscr{M},\mu)$，如果集合列$\{A_n\}_{n\in\N}\sub\mathscr{M}$满足
$$
\sum_{n=1}^{\infty}{\mu(A_n)}<\infty
$$
那么
$$
\mu\left(\limsup_{n\to\infty}{A_n}\right)=0
$$
或等价地，如果$x\in X$，那么
$$
x几乎处处在{\left(\limsup_{n\to\infty}{A_n}\right)}^C=\liminf_{n\to\infty}{A_n^C}中
$$

### 1.2.5	Vitali集

**定义1.2.5.1	Vitali集**：记$I=[0,1)$，定义$I$上的等价关系$x \sim y$为
$$
x-y\in\Q
$$
在$I/\sim$的每个等价嘞里选出一个代表元，构成的集合称为一个Vitali集。

**命题1.2.5.1	Vitali集不可测**：Vitali集不是Lebesgue可测的。

**命题1.2.5.2	Lebesgue外测度不具有可加性**：Lebesgue外测度不具有有限可加性。

## 1.3	Cantor集

### 1.3.1	Cantor集

对于集合列$\{C_n\}_{n\in\N}$，定义
$$
C_0=[0,1]
$$
且满足递推
$$
C_{n+1}=\frac{C_n}{3}\bigsqcup\frac{2+C_n}{3},\quad n\in\N
$$
其显性表达式为
$$
\begin{align}
C_n
&=[0,1]-\bigcup_{i=1}^{n}{\bigcup_{j=0}^{3^{i-1}-1}{\left( \frac{3j+1}{3^i},\frac{3j+2}{3^i} \right)}}\\
&=\bigcap_{i=1}^{n}{\bigcup_{j=0}^{3^{i-1}-1}{\left( \left[\frac{3j}{3^i},\frac{3j}{3^i+1}\right]\bigcup\left[\frac{3j+2}{3^i},\frac{3j}{3^i+3}\right]\right)}}
\end{align}
$$
**定义1.3.1.1	Cantor集**：
$$
C=\lim_{n\to\infty}{C_n}=\bigcap_{n=1}^{\infty}{C_n}
$$

### 1.3.2	Cantor集的性质

- Cantor集是可测的，且$m(C)=0$。
- Cantor集$C$的势是连续统，即其与实数集$\R$间存在一一映射。

**命题1.3.2.1	Cantor集的拓扑性质**：

- $C$为$\R$中的有界闭集，因此是紧集。
- $C$是完全不连通的，即不存在非空开区间$I\sub\R$，使得成立$I\sub C$。
- $C$是完美集，即对于任意$x\in C$，$x$均为$C-\{x\}$的一个极限点。
- $C$是分形，因为$C \simeq \frac{C}{3} \simeq  \frac{2+C}{3}$，其中$\simeq$为同胚。

### 1.3.3	广义Cantor集

**定义1.3.3.1	第一类广义Cantor集**：令$0<a_n<1,n\in\N$，$C_0=[0,1]$，将$C_n$的每一段区间去掉正中间比例为$a_n$的一段开区间，得到$C_{n+1}$。定义第一类Cantor集为
$$
C=\bigcap_{n=1}^{\infty}{C_n}
$$
记作$C=C(a_1,a_2,\cdots)$。

- 第一类广义康托集是完全不连通的。

- 第一类广义康托集是Lebegue可测的。

- 对于第一类广义康托集$C(a_1,a_2,\cdots)$，其Lebesgue测度为
  $$
  m(C(a_1,a_2,\cdots))=\prod_{n=1}^{\infty}{(1-a_n)}
  $$

**命题1.3.3.1	无穷乘积的收敛条件**：对于$0<a_n<1,n\in\N$，无穷乘积收敛
$$
\prod_{n=1}^{\infty}{(1-a_n)}>0
$$
当且仅当其对应的无穷级数收敛
$$
\sum_{n=1}^{\infty}{a_n}<\infty
$$

----

**定义1.3.3.2	第二类广义Cantor集**：令$0<a_n<1,n\in\N$，且
$$
\sum_{n=1}^{\infty}{a_n} \le 1
$$
记$C_0=[0,1]$。对任意$n\in\N$，将$C_n$的每一段区间去掉正当中长度相同的一段，使得去掉的总长度为$a_n$，得到$C_{n+1}$。定义第二类Cantor集为
$$
C=\bigcap_{n=1}^{\infty}{C_n}
$$
记作$C=C'(a_1,a_2,\cdots)$。

- 第二类广义康托集是完全不连通的。

- 第二类广义康托集是Lebegue可测的。

- 对于第二类广义康托集$C'(a_1,a_2,\cdots)$，其Lebesgue测度为
  $$
  m(C(a_1,a_2,\cdots))=1-\sum_{n=1}^{\infty}{a_n}
  $$

## 1.4	$\R$上的Borel$\sigma$-代数与Borel测度

### 1.4.1	由集族生成的$\sigma$-代数

**定义1.4.1.1	由集族生成的$\sigma$-代数**：对于集合$X$，$\mathscr{E}\in\mathcal{P}(X)$，定义由$\mathscr{E}$生成的$X$上的$\sigma$-代数为所有包含$\mathscr{E}$的$X$上$\sigma$-代数的交集，即
$$
\mathscr{M}(\mathscr{E})=\bigcap_{\substack{\mathscr{M}是X上的一个\sigma-代数\\\mathscr{M}\supset\mathscr{E}}}\mathscr{M}
$$

- $\mathscr{M}(\mathscr{E})$是**最小的**包含了$\mathscr{E}$的$X$上的$\sigma$-代数。

- **恒等性**：对于集合$X$，$\mathscr{E}$是一个$X$上的$\sigma$-代数，那么
  $$
  \mathscr{M}(\mathscr{E})=\mathscr{E}
  $$

- **幂等性**：对于集合$X$，$\mathscr{E}\in\mathcal{P}(X)$，那么
  $$
  \mathscr{M}(\mathscr{M}(\mathscr{E}))=\mathscr{M}(\mathscr{E})
  $$

**引理1.4.1.1**：对于集合$X$，$\mathscr{E}\in\mathcal{P}(X)$，$\mathscr{M}$是一个$X$上的$\sigma$-代数，那么
$$
\mathscr{M}\supset\mathscr{E}\iff\mathscr{M}\supset\mathscr{M}(\mathscr{E})
$$

### 1.4.2	Borel$\sigma$-代数

**命题1.4.2.1**：定义
$$
\begin{align}
&\mathscr{E}_1=\{(a,b):a \le b\in[-\infty,\infty]\}\\
&\mathscr{E}_2=\{(a,b]\cap\R:a \le b\in[-\infty,\infty]\}\\
&\mathscr{E}_3=\{[a,b]\cap\R:a \le b\in[-\infty,\infty]\}\\
&\mathscr{E}_4=\{[a,b)\cap\R:a \le b\in[-\infty,\infty]\}\\
&\mathscr{E}_5=\{[a,\infty)\cap\R:a\in[-\infty,\infty]\}\\
&\mathscr{E}_6=\{(-\infty,a):a\in[-\infty,\infty]\}\\
&\mathscr{E}_7=\{(-\infty,a]\cap\R:a\in[-\infty,\infty]\}\\
&\mathscr{E}_8=\{(a,\infty):a\in[-\infty,\infty]\}
&\end{align}
$$
那么对于任意$i,j\in\{1,\cdots,8\}$，成立
$$
\mathscr{M}(\mathscr{E}_i)=\mathscr{M}(\mathscr{E}_j)
$$

**定义1.4.2.1	Borel$\sigma$-代数**：称命题1.4.2.1中任意$\mathscr{E}_k$生成的$\R$上的$\sigma$-代数为$\R$上的Borel$\sigma$-代数，记作
$$
\mathscr{B}(\R)=\mathscr{M}(\mathscr{E}_k),\quad k=1,\cdots,8
$$
$\mathscr{B}(\R)$中的集合称为$\R$上的Borel集。

- 可测性：$\mathscr{B}(\R)\sub\mathscr{L}$，即任意Borel集均可测。

**命题1.4.2.2**：Borel$\sigma$-代数可以由$\R$上的开集生成，即
$$
\mathscr{B}(\R)=\mathscr{M}\left(\{U\sub\R为开集\}\right)
$$

### 1.4.3	Borel测度与分布函数的对应关系

**定义1.4.3.1	Borel测度**：称$\mu:\mathscr{B}(\R)\to[0,\infty]$为一个$\R$上的Borel测度当且仅当

- $\mu$为$\mathscr{B}(\R)$上的一个测度。
- 若$K\sub\R$为紧集，那么$\mu(K)<\infty$。

**定义1.4.3.2	Borel测度的分布函数**：对于一个$\R$上的Borel测度$\mu$，定义$f_{\mu}=f:\R\to\R$，其中
$$
f(x)=\begin{cases}
\mu((0,x]),\quad &x>0\\
0,\quad &x=0\\
-\mu((x,0]),\quad &x<0
\end{cases}
$$

**命题1.4.3.1	Borel测度的分布函数的性质**：对于一个$\R$上的Borel测度$\mu$，记$f_\mu$为$\mu$的分布函数，那么
- $f_\mu(0)=0$

- $f_\mu$是递增的。

- $f_\mu$是右连续的。

- 如果$a<b\in\R$，那么
  $$
  \mu((a,b])=f_\mu(b)-f_\mu(a)
  $$

---

**定义1.4.3.3	分布函数**：如果$f:\R\to\R$满足以下条件，那么称$f$为$\R$上的一个分布函数，简称分布函数。

- $f(0)=0$
- $f$是递增的。
- $f$是右连续的。

**定义1.4.3.4	初等类**：对于集合$X$，$\mathscr{E}\sub\mathcal{P}(X)$，称$\mathscr{E}$为$X$上的一个初等类，当且仅当

- $\O\in\mathscr{E}$

- 如果$A,B\in\mathscr{E}$，那么$A\cap B\in\mathscr{E}$。

- 如果$A\in\mathscr{E}$，那么存在有限多个$A_1,\cdots,A_n\in\mathscr{E}$，使得成立
  $$
  A^C=\bigcup_{k=1}^{n}{A_k}
  $$

**定义1.4.3.5	代数**：对于集合$X$，$\mathscr{A}\sub\mathcal{P}(X)$，称$\mathscr{A}$为$X$上的一个初等类，当且仅当

- $\O\in\mathscr{A}$

- 如果$A\in\mathscr{A}$，那么$A^C\in\mathscr{A}$。

- 如果$A,B\in\mathscr{A}$，那么$A\cup B\in\mathscr{A}$。

**命题1.4.3.2	由初等类生成的代数**：对于集合$X$，$\mathscr{E}\sub\mathcal{P}(X)$为$X$上的一个初等类，那么$\mathscr{A}$为$X$上的一个代数，并称之为由初等类$\mathscr{E}$生成的代数，其中$\mathscr{A}$为
$$
\mathscr{A}=\left\{ \bigsqcup_{k=1}^{n}{A_k}:A_1,\cdots,A_n\in\mathscr{E}两两无交 \right\}
$$

**引理1.4.3.1**：如果$f$是分布函数，那么$\mu|_{\mathscr{A}_{\mathscr{E}_2}}$具有有限可加性。

---

**定义1.4.3.6	预测度**：对于集合$X$上的代数$\mathscr{A}$，那么称$\mu_0:\mathscr{A}\to[0,\infty]$为$\mathscr{A}$的一个预测度，当且仅当

- $\mu_0(\O)=0$

- 对于两两无交集合$A_1,A_2,\cdots\in\mathscr{A}$，如果
  $$
  \bigsqcup_{n=1}^{\infty}{A_n}\in\mathscr{A}
  $$
  那么
  $$
  \mu_0(\bigsqcup_{n=1}^{\infty}{A_n})=\sum_{n=1}^{\infty}{\mu_0(A_n)}
  $$

**命题1.4.3.3	预测度的延拓**：对于集合$X$上的代数$\mathscr{A}$，以及$\mathscr{A}$上的预测度$\mu_0$，如果$\mathscr{M}$是由$\mathscr{A}$生成的代数，那么存在一个最大的延拓$\mu:\mathscr{M}\to[0,\infty]$，使得成立

- $\mu$是$\mathscr{A}$上的测度，且$\mu|_{\mathscr{A}}=\mu_0$。
- 如果$\nu:\mathscr{M}\to[0,\infty]$为测度，且$\nu|_{\mathscr{A}}=\mu_0$，那么对于任意$E\in\mathscr{M}$，成立$\mu(E)\le\nu(E)$。
- 如果$\mu_0$为有限的，那么这样的延拓是唯一的。即如果$\nu:\mathscr{M}\to[0,\infty]$为测度，且$\nu|_{\mathscr{A}}=\mu_0$，那么$\nu=\mu$。
- 如果$\mu_0$为$\sigma-$有限的，那么这样的延拓是唯一的。即如果$\nu:\mathscr{M}\to[0,\infty]$为测度，且$\nu|_{\mathscr{A}}=\mu_0$，那么$\nu=\mu$。

**命题1.4.3.4	$\R$上的Borel测度与分布函数的对应关系**：如果$f$是分布函数，那么存在且存在唯一的Borel测度$\mu_f:\mathscr{B}(\R)\to[0,\infty]$，使得对于任意$a<b\in\R$，成立
$$
\mu_f((a,b])=f(b)-f(a)
$$
且
$$
\mu_{f_\mu}=\mu,\quad f_{\mu_f}=f
$$
即$\R$上的Borel测度与分布函数存在一一对应。

### 1.4.4	Lebesgue测度的正则性

**定义1.4.4.1	正则测度**：对于测度空间$(X,\mathscr{M},\mu)$以及拓扑空间$X$

- 称$\mu$为外正则的，当且仅当对于任意$E\in\mathscr{M}$，成立
  $$
  \mu(E)=\inf\{ \mu(U):U\in\mathscr{M},U\supset E为开集 \}
  $$

- 称$\mu$为内正则的，当且仅当对于任意$E\in\mathscr{M}$，成立
  $$
  \mu(E)=\sup\{ \mu(K):K\in\mathscr{M},K\sub E为紧集 \}
  $$

如果$\mu$为外正则的且内正则的，那么称$\mu$为$(X,\mathscr{M})$上的正则测度。

**命题1.4.4.1	Lebesgue测度的外正则性**：Lebesgue测度$m$是外正则的。

**命题1.4.4.2	Lebesgue测度的内正则性**：Lebesgue测度$m$是内正则的。

**命题1.4.4.3	Lebesgue测度的正则性**：Lebesgue测度$m$是正则的。

---

**定义1.4.4.2	$G_\delta$集**：对于拓扑空间$X$，称$G\sub X$为一个$G_\delta$集，当且仅当存在可数多个开集$U_1,U_2,\cdots$，使得成立
$$
G=\bigcap_{n=1}^{\infty}{U_n}
$$
将$X$上所有$G_\delta$集所构成的集族记为$G_\delta(X)$，简记为$G_\delta$。

**定义1.4.4.3	$F_\sigma$集**：对于拓扑空间$X$，称$G\sub X$为一个$F_\sigma$集，当且仅当存在可数多个闭集$V_1,V_2,\cdots$，使得成立
$$
G=\bigcup_{n=1}^{\infty}{V_n}
$$
将$X$上所有$F_\sigma$集所构成的集族记为$F_\sigma(X)$，简记为$F_\sigma$。

> $\delta$指的是交集,$\sigma$指的是并集。$G$指的是开集，$F$指的是闭集。这些字母来自德语。

**命题1.4.4.4	Lebesgue可测集的充要条件**：$E\sub\R$为Lebesgue可测集，当且仅当存在$G\in G_\delta$，$F\in F_\sigma$，使得成立
$$
F\sub E \sub G
$$
并且
$$
m(G-F)=0
$$

---

**命题1.4.4.5	测度的完备化**：对于测度空间$(X,\mathscr{M},\mu)$，如果
$$
\overline{\mathscr{M}}=\{ A\cup M:A\in\mathscr{M},M\sub N,N\in\mathscr{M},\mu(N)=0 \}
$$
那么存在且存在唯一的延拓$\overline{\mu}:\overline{\mathscr{M}}\to[0,\infty]$，使得成立

- $\overline{\mu}$为一个完备测度。
- $\overline{\mu}|_{\mathscr{M}}=\mu$。

**命题1.4.4.6	Lebesgue测度是Borel测度的完备化**：Lebesgue测度是$f(x)=x$对应的Borel测度的完备化，即
$$
m=\overline{m|_{\mathscr{B}(\R)}}
$$
**定义1.4.4.4	Lebesgue-Stieltjes测度**：设$\mu$是$\R$上的Borel测度，则它的完备化$\overline{\mu}$被称为由$\mu$生成的Lebesgue-Stieltjes测度。

## 1.5	$\R^n$上的Lebesgue外测度与测度

### 1.5.1	$\R^n$上的Lebesgue外测度、测度与可测集

**定义1.5.1.1	开长方体**：$\R^n$中的开长方体是指如下的集合。
$$
R=\prod_{k=1}^{n}{(a_k,b_k)}=(a_1,b_1)\times\cdots\times(a_n,b_n)
$$

**定义1.5.1.2	开长方体的体积**：对于开长方体
$$
R=\prod_{k=1}^{n}{(a_k,b_k)}
$$
定义其体积为
$$
|R|=\prod_{k=1}^{n}(b_k-a_k)
$$

**定义1.5.1.3	$\R^n$上的Lebesgue外测度**：对于$A\sub\R^n$，定义
$$
m^*(A)=\inf\left\{ \sum_{m=1}^{\infty}{|R_m|}:\bigcup_{m=1}^{\infty}{R_m\supset A} \right\}
$$

**引理1.5.1.1**：

- $\R^n$中的开长方体的Lebesgue外测度为其体积。
- $\R^n$中的单点集可测，且测度为$0$。
- $\R^n$中的开长方体的可测，且测度为其体积。
- $\R^n$中的闭长方体的可测，且测度为其体积。
- $\R^n$中的长方体、开集、闭集及紧集都是Lebesgue可测的。

### 1.5.2	$\R^n$上的Borel$\sigma$-代数与Borel测度

**定义1.5.2.1	$\R^n$上的Borel$\sigma$-代数**：定义$\R^n$上的Borel$\sigma$-代数为
$$
\mathscr{B}(\R^n)=\mathscr{M}(\mathscr{E}_1)=\cdots=\mathscr{M}(\mathscr{E}_5)
$$
其中
$$
\begin{align}
&\mathscr{E}_1=\left\{ \prod_{k=1}^{n}{(a_k,b_k):\forall k\in\{ 1,\cdots,n \},a_k<b_k\in[-\infty,\infty]} \right\}\\
&\mathscr{E}_2=\left\{ \prod_{k=1}^{n}{(a_k,b_k]\cap\R^n:\forall k\in\{ 1,\cdots,n \},a_k<b_k\in[-\infty,\infty]} \right\}\\
&\mathscr{E}_3=\left\{ \prod_{k=1}^{n}{[a_k,b_k)\cap\R^n:\forall k\in\{ 1,\cdots,n \},a_k<b_k\in[-\infty,\infty]} \right\}\\
&\mathscr{E}_4=\left\{ \prod_{k=1}^{n}{[a_k,b_k]\cap\R^n:\forall k\in\{ 1,\cdots,n \},a_k<b_k\in[-\infty,\infty]} \right\}\\
&\mathscr{E}_5=\left\{ U\sub\R^n为开集 \right\}\\
&\end{align}
$$

---

**$\R^n$上的Borel测度的构造**：构造$\R^n$上的Borel测度，并延拓为Lebesgue测度。

1. 对于
   $$
   E=\prod_{k=1}^{n}{(a_k,b_k]}\in\mathscr{E}_2
   $$
   定义
   $$
   \mu_0(E)=\prod_{k=1}^{n}{(b_k-a_k)}
   $$

2. 定义
   $$
   \mathscr{A}=\left\{ \bigsqcup_{k=1}^{m}{E_k}:E_1,\cdots,E_m\in\mathscr{E}_2 \right\}
   $$
   由于$\mathscr{E}_2$为$\R^n$上的初等类，那么$\mathscr{A}$为$\R^n$上的代数。

3. 对于
   $$
   E=\bigsqcup_{k=1}^{m}{E_k}\in\mathscr{A}
   $$
   定义
   $$
   \mu_0(E)=\sum_{k=1}^{m}{\mu(E_k)}
   $$
   那么$\mu_0:[0,\infty]$是良定义的$\mathscr{A}$上的预测度。
   
4. 对于$A_m=(-m,m]^n\in\mathscr{E}_2\sub\mathscr{A}$，注意到
   $$
   \R^n=\bigcup_{m=1}^{\infty}{A_m}
   $$
   并且对于任意$m\in\N$，成立
   $$
   \mu_0(A_m)=(2m)^n<\infty
   $$
   因此$\mu_0$是$\sigma$-有限的。

5. 对于$\mathscr{M}=\mathscr{M}(\mathscr{A})=\mathscr{B}(\R^n)$，由于$\mu_0$是$\sigma$-有限的，因此可以将$\mu_0$唯一的延拓到$\mu:\mathscr{B}(\R^n):[0,\infty]$，使得成立
   $$
   \mu|_{\mathscr{A}}=\mu_0
   $$

6. 将$\mu$完备化，得到$\R^n$上的Lebesgue测度$m$，即
   $$
   \overline{\mu}=m
   $$
   反过来
   $$
   m|_{\mathscr{B}(\R)}=\mu
   $$

## 1.6	$\R^n$上的Jordan容度

### 1.6.1	$\R^n$上的Jordan外容度

**定义1.6.1.1	Jordan外容度**：对于$A\sub\R^n$，定义
$$
J^*(A)=\inf\left\{ \sum_{k=1}^{m}{|R_k|}:R_1,\cdots,R_m\in\mathscr{E}_2,\bigcup_{k=1}^{m}{R_k\supset A} \right\}
$$
其中
$$
\mathscr{E}_2=\left\{ \prod_{k=1}^{n}{(a_k,b_k]\cap\R^n:\forall k\in\{ 1,\cdots,n \},a_k<b_k\in[-\infty,\infty]} \right\}
$$

**命题1.6.1.1	Jordan外容度的等价定义**：对于$A\sub\R^n$，定义
$$
J^*(A)=\inf\left\{ \sum_{k=1}^{m}{|R_k|}:R_1,\cdots,R_m\in\mathscr{E}_2两两无交,\bigsqcup_{k=1}^{m}{R_k\supset A} \right\}
$$

**命题1.6.1.2	Jordan外容度的有限次可加性**：对于$A_1,\cdots,A_m\sub\R^n$，成立
$$
J^*\left(\bigcup_{k=1}^{m}{A_k}\right)\le\sum_{k=1}^{m}{J^*(A_k)}
$$

**命题1.6.1.3	无界集的Jordan外容度**：对于无界集$A\sub\R^n$，成立
$$
J^*(A)=\infty
$$

**命题1.6.1.4	Jordan外容度不具有可数次可加性**：$\R^n$上的Jordan外容度不具有可数次可加性。

**引理1.6.1.1	Jordan外容度的性质**：对于$A\sub\R^n$，成立
$$
m^*(A)\le J^*(A)
$$

**引理1.6.1.2	紧致零测集的充要条件**：对于紧集$A\sub\R^n$，成立
$$
m^*(A)=0 \iff J^*(A)=0
$$

### 1.6.2	$\R^n$上的Jordan内容度

**定义1.6.2.1	$\R^n$上的Jordan内容度**：对于$A\sub\R^n$，定义
$$
J_*(A)=\sup\left\{ \sum_{k=1}^{m}{|R_k|}:R_1,\cdots,R_m\in\mathscr{E}_2两两无交,\bigsqcup_{k=1}^{m}{R_k\sub A} \right\}
$$

**引理1.6.2.1	Jordan内容度的单调性**：如果$A\sub B\sub \R^n$，那么
$$
J_*(A)\le J_*(B)
$$

**命题1.6.2.1	Jordan内容度的有限超可加性**：对于$A_1,\cdots,A_m\sub\R^n$两两无交，成立
$$
J_*\left(\bigsqcup_{k=1}^{m}{A_k}\right)\ge\sum_{k=1}^{m}{J_*(A_k)}
$$

**命题1.6.2.2	Jordan内容度的可数超可加性**：对于$A_1,A_2\cdots\sub\R^n$两两无交，成立
$$
J_*\left(\bigsqcup_{m=1}^{\infty}{A_k}\right)\ge\sum_{m=1}^{\infty}{J_*(A_k)}
$$

**引理1.6.2.2	Jordan内容度和Jordan外容度的关系**：对于$A\sub\R^n$，成立
$$
J_*(A)\le J^*(A)
$$

### 1.6.3	$\R^n$上的Jordan可测集与Jordan容度

**定义1.6.3.1	Jordan可测集与Jordan容度**：对于$A\sub\R^n$，如果成立
$$
J_*(A) = J^*(A)
$$
那么成立$A$为Jordan可测集，且定义$A$的Jordan容度为
$$
J(A)=J_*(A)=J^*(A)
$$
将所有Jordan可测集所构成的集族记作$\mathscr{J}$。

**命题1.6.3.1	Jordan可测集的性质**：

- $\O\in\mathscr{J}$

- $\R^n\in\mathscr{J}$

- 对于无交集$A,B\in\mathscr{J}$，成立
  $$
  A\sqcup B\in\mathscr{J}
  $$
  且
  $$
  J(A\cup B)=J(A)+J(B)
  $$

- 对于有界集$B\sub A\in\mathscr{J}$，成立
  $$
  A-B\in\mathscr{J}
  $$
  且
  $$
  J(A-B)=J(A)-J(B)
  $$

- 对于有界集$A,B\in\mathscr{J}$，成立
  $$
  A\cup B\in\mathscr{J}
  $$

- 对于集合$A,B\in\mathscr{J}$，成立
  $$
  A\cup B\in\mathscr{J}
  $$
  
- 对于有界集$A,B\in\mathscr{J}$，成立
  $$
  A-B\in\mathscr{J}
  $$

- 对于有界集$A,B\in\mathscr{J}$，成立
  $$
  A\cap B\in\mathscr{J}
  $$

---

**引理1.6.3.1	Jordan容度的可加性**：对于无交集$A,B\in\mathscr{J}$，成立
$$
J(A\cup B)=J(A)+J(B)
$$
**命题1.6.3.2	有界左开右闭长方形的Jordan可测性**：对于
$$
B=\prod_{k=1}^{n}{(a_n,b_n]}
$$
成立$B\in\mathscr{J}$，且
$$
J(B)=|B|=\prod_{k=1}^{n}{(b_n-a_n)}
$$

**命题1.6.3.3	Jordan内容度的等价定义**：对于$A\sub\R^n$，定义
$$
J_*(A)=\sup\left\{ \sum_{m=1}^{\infty}{|R_m|}:R_1,R_2\cdots\in\mathscr{E}_2两两无交,\bigsqcup_{m=1}^{\infty}{R_m\sub A} \right\}
$$

**引理1.6.3.2**：如果$A$为有界简单集，那么对于任意$B\sub A$，成立
$$
J(A)=J^*(B)+J_*(A-B)
$$

### 1.6.4	$\R^n$上的Lebesgue内测度

**定义1.6.4.1	$\R^n$上有界集的Lebesgue内测度**：对于有界集$A\sub R\sub\R^n$，其中$R$为有界长方体，定义
$$
m_*(A)=m(R)-m^*(R-A)
$$

**命题1.6.4.1	$\R^n$上有界集的Lebesgue内测度的性质**：

- $M_*(\O)=0$

- **单调性**：如果有界集$A\sub B$，那么$m_*(A)\le m_*(B)$。

- **超可加性**：如果无交集$A,B\sub R$，$R\sub\R^n$为有界长方体，那么
  $$
  m_*(A\sqcup B)\ge m_*(A)+m_*(B)
  $$

- **可数超可加性**：如果$A_1,A_2\sub R$两两无交，$R\sub\R^n$为有界长方体，那么
  $$
  m_*\left( \bigsqcup_{m=1}^{\infty}{A_m} \right)\ge\sum_{m=1}^{\infty}{m_*(A_m)}
  $$

---

**引理1.6.4.1	Lebesgue内、外测度与正则性的联系**：对于$A\sub R\sub\R^n$，其中$R$为有界长方体，成立
$$
\begin{align}
&m^*(A)=\inf\{ m(U):U\supset A{为开集} \}\\
&m_*(A)=\sup\{ m(K):K\sub A为紧集 \}
\end{align}
$$

**引理1.6.4.2	Lebesgue内测度与Lebesgue外测度的联系**：对于$A\sub R\sub\R^n$，其中$R$为有界长方体，成立

- $$
  m_*(A)\le m^*(A)
  $$

- $$
  A\in\mathscr{L}\iff m_*(A)=m^*(A)
  $$

**引理1.6.4.3	Lebesgue内测度与Jordan内容度的联系**：对于有界集$A\sub\R^n$，成立
$$
J_*(A)\le m_*(A)
$$

**命题1.6.4.2	Jordan可测集是Lebesgue可测的**：如果有界集$A\in\mathscr{J}$，那么$A\in\mathscr{L}$，且$m(A)=J(A)$，即$m$是$J$的一个延拓，或者
$$
J=m|_{\mathscr{J}}
$$

**命题1.6.4.3	有界集的Jordan内、外容度**：对于有界集$A\sub\R^n$，成立
$$
J_*(A)=m(\mathrm{Int}(A))
$$

$$
J^*(A)=m\left(\overline{A}\right)
$$

于是
$$
J^*(A)-J_*(A)=m(\part A)
$$
因此
$$
A\in\mathscr{J}\iff m(\part A)=0\iff J(\part A)=0
$$

**命题1.6.4.4**：如果$K\sub\R^n$为紧集，且$f:K\to\R$为连续函数，那么$f$的图像
$$
\Gamma(f)=\{ (x,f(x)):x\in K \}
$$
为一个Jordan零测集。

---

**引理1.6.4.4	Jordan零测集的$C^1$像是Jordan零测集**：如果$U,V\sub\R^n$为开集，同时$f:U\to V$为$C^1$的，且$A\sub U$为紧致的Jordan零测集，那么$f(A)$也是紧致的Jordan零测的。

**命题1.6.4.5**：如果有界集$A\sub\R^n$是Jordan可测的，$U,V\sub\R^n$为开集，同时$f:U\to V$为$C^1$的微分同胚，$\overline{A}\sub U$，那么$f(A)$是Jordan可测的。

# 第二章：Lebesgue积分

## 2.1	示性函数与简单函数的Lebesgue积分

### 2.1.1	示性函数的Lebesgue积分

**定义2.1.1.1	示性函数的Lebesgue积分**：对于$E\in\mathscr{L}$，定义示性函数$\chi_E$的Lebesgue积分为
$$
\int'{\chi_E}=m(E)
$$

### 2.1.2	简单函数的Lebesgue积分

**定义2.1.2.1	简单函数**：对于函数$f$，如果存在$E_1,\cdots,E_n\in\mathscr{L}$，$a_1,\cdots,a_n\in\R$（或$\in\C$），使得成立
$$
f=\sum_{k=1}^{n}{a_k\chi_{E_k}}
$$
那么称$f$为实值（复值）简单函数。

**定义2.1.2.2	简单函数的Lebesgue积分**：对于简单函数$f=\sum_{k=1}^{n}{a_k\chi_{E_k}}$，定义其Lebesgue积分为
$$
\int'{f}=\int'\left( \sum_{k=1}^{n}{a_k\chi_{E_k}} \right)=\sum_{k=1}^{n}{a_k m(E_k)}
$$

**引理2.1.2.1	简单函数的标准表示与简单函数的Lebesgue积分的良定义性**：如果$f=\sum_{k=1}^{n}{a_k\chi_{E_k}}$是简单函数，那么存在且存在唯一的两两不同的$b_1,\cdots,b_m\ne0$，以及存在且存在唯一的$F_1,\cdots,F_m\in\mathscr{L}$，使得成立
$$
f=\sum_{k=1}^{m}{b_k\chi_{F_k}}
$$

### 2.1.3	简单函数的Lebesgue积分的性质

**命题2.1.3.1	简单函数的Lebesgue积分的性质**：

- 如果$f,g$是简单函数，那么$f+g$是简单函数，并且
  $$
  \int'(f+g)=\int'{f}+\int'{g}
  $$

- 如果$f$是简单函数，$k$为常数，那么$kf$是简单函数，并且
  $$
  \int'(kf)=k\int'{f}
  $$

- 如果$f$是非负简单函数，那么
  $$
  \int'{f}\ge 0
  $$

- 如果$f,g$是实值简单函数，且$f\le g$，那么
  $$
  \int'{f}\le\int'{g}
  $$

- 如果$f$是复值简单函数，那么$|f|$是简单函数，并且
  $$
  |\int'{f}|\le\int'{|f|}
  $$

**命题2.1.3.2**：如果$f$是实值简单函数，那么对于任意$B\in\mathscr{B}(\R)$，成立
$$
f^{-1}(B)\in\mathscr{L}
$$

### 2.1.4	一般测度空间上的简单函数与积分

**定义2.1.4.1	简单函数**：对于测度空间$(X,M,\mu)$，如果存在$E_1,\cdots,E_n\in M$，$a_1,\cdots,a_n\in\R$或$\in\C$，使得成立
$$
f=\sum_{k=1}^{n}{a_k\chi_{E_k}}
$$
那么称$f$是$X$上的实值（复值）简单函数。

**定义2.1.4.2	简单函数的积分**：对于测度空间$(X,M,\mu)$，$f=\sum_{k=1}^{n}{a_k\chi_{E_k}}$是$X$上的简单函数，那么其积分为
$$
\int'{f}=\sum_{k=1}^{n}{a_k\mu(E_k)}
$$

## 2.2	$\R$上可测函数的Lebesgue积分

### 2.2.1	可测函数

**定义2.2.1.1	可测函数**：对于分别为$X,Y$上的$\sigma$-代数$M,N$，称$f:X\to Y$为一个$(M,N)$-可测函数，当且仅当对于任意$E\in N$，成立$f^{-1}(E)\in M$。

**命题2.2.1.1**：对于分别为$X,Y,Z$上的$\sigma$-代数$M,N,L$，如果$f:X\to Y$和$g:Y\to Z$分别是$(M,N)$-可测的和$(N,L)$-可测的，那么$g\circ f:X\to Z$是$(M,L)$-可测的。

**命题2.2.1.2	可测函数的充要条件**：对于分别为$X,Y$上的$\sigma$-代数$M,N$，$\mathscr{E}\sub N$满足$M(\mathscr{E})=N$，那么一下命题等价。

- $f$是$(M,N)$-可测的。
- 对于任意$E\in\mathscr{E}$，成立$f^{-1}(E)\in M$。

**命题2.2.1.3	连续函数是可测的**：对于拓扑空间$X,Y$，如果$\mathscr{B}(X),\mathscr{B}(Y)$分别是$X$和$Y$上的Borel$\sigma$-代数，那么对于任意连续映射$f:X\to Y$，$f$都是$(\mathscr{B}(X),\mathscr{B}(Y))$-可测的。

### 2.2.2	常见的Borel$\sigma$-代数和可测函数

**定义2.2.2.1	$\overline{\R}$上的Borel$\sigma$-代数**：$\overline{\R}$上的Borel$\sigma$-代数定义为
$$
\mathscr{B}\left(\overline{\R}\right)=\left\{ E\sub\overline{\R}:E\cap\R\in\mathscr{B}(\R) \right\}
$$

**命题2.2.2.1**：$\mathscr{B}\left(\overline{\R}\right)$是$\overline{\R}$上的一个$\sigma$-代数。

**定义2.2.2.2	$[0,\infty]$上的Borel$\sigma$-代数**：$[0,\infty]$上的Borel$\sigma$-代数定义为
$$
\mathscr{B}([0,\infty])=\left\{ E\cap[0,\infty]:E\in\mathscr{B}\left(\overline{\R}\right) \right\}
$$

**定义2.2.2.3	实值可测函数**：如果$f:\R\to\R$是$(\mathscr{L},\mathscr{B}(R))$-可测的，那么称$f$是实值Lebesgue可测函数，简称为实值可测函数。

**定义2.2.2.4	广义实值可测函数**：如果$f:\R\to\overline{\R}$是$\left(\mathscr{L},\mathscr{B}(\overline{\R})\right)$-可测的，那么称$f$是广义实值Lebesgue可测函数，简称为广义实值可测函数。

**定义2.2.2.5	非负可测函数**：如果$f:\R\to\overline{\R}$是$\left(\mathscr{L},\mathscr{B}([0,\infty])\right)$-可测的，那么称$f$是非负Lebesgue可测函数，简称非负可测函数。

---

**定义2.2.2.6	乘积$\sigma$-代数**：对于分别为$X,Y$上的$\sigma$-代数$M,N$，定义其乘积为
$$
M\otimes N=\mathscr{M}(M\times N)
$$

**命题2.2.2.2	乘积$\sigma$-代数的性质**：对于分别为$X,Y$上的$\sigma$-代数$M,N$，成立

- 映射投影$\pi_1:X\times Y\to X$是$(M\otimes N,M)$-可测的。

- 映射投影$\pi_2:X\times Y\to Y$是$(M\otimes N,N)$-可测的。

- $M\otimes N$是由$M$中可测集在$\pi_1$下的原像和$N$中可测集在$\pi_2$下的原像生成的$\sigma$-代数，即
  $$
  M\otimes N=\mathscr{M}\left( \left\{ \pi_1^{-1}(E):E\in M \right\}\cup\left\{ \pi_2^{-1}(F):F\in N \right\} \right)
  $$

**定义2.2.2.7	由映射族生成的$\sigma$-代数**：对于非空指标集$I$，以及任意$i\in I$，$M_i$是$X_i$上的$\sigma$-代数，$Y$是一个集合，$\{ f_i:X\to X_i \}_{i\in I}$是一族映射，那么称
$$
\mathscr{M}\left( \bigcup_{i\in I}\{ f^{-1}_i(E_i):E_i\in M_i \} \right)
$$
为由映射族$\{f_i\}_{i\in I}$生成的$\sigma$-代数。

**定义2.2.2.8**：设$M_k$分别为$X_k$上的$\sigma$-代数，其中$k=1,\cdots,n$，定义
$$
\bigotimes_{k=1}^{n}{M_k}=\mathscr{M}(\{ E_1\times\cdots\times E_n:E_k\in M_k,k=1,\cdots,n \})
$$

**定义2.2.2.9	任意乘积$\sigma$-代数**：对于非空指标集$I$，以及任意$i\in I$，$M_i$是$X_i$上的$\sigma$-代数，定义$\otimes_{i\in I}M_i$为由$\left\{ \pi_i:\prod_{k\in I}X_k\to X_i \right\}$生成的$\sigma$-代数。

**命题2.2.2.3	可数乘积$\sigma$-代数**：对于可数指标集$I$，以及任意$i\in I$，$M_i$是$X_i$上的$\sigma$-代数，那么
$$
\bigotimes_{i\in I}{M_i}=\mathscr{M}\left( \left\{ \prod_{i\in I}{E_i}:\forall i\in I,E_i\in M_i \right\} \right)
$$

**命题2.2.2.4	度量空间上的有限乘积$\sigma$-代数**：如果对于任意$i=1,\cdots,n$，$(X_i,d_i)$为度量空间，那么积空间$\prod_{k=1}^{n}X_k$是由开长方体生成的拓扑空间，并且
$$
\mathscr{B}\left( \prod_{k=1}^{n}{X_i} \right)\supset \bigotimes_{k=1}^{n}{\mathscr{B}(X_k)}
$$
特别的，如果$X_1,\cdots,x_n$都是可分空间，即存在可数稠密子集，那么
$$
\mathscr{B}\left( \prod_{k=1}^{n}{X_i} \right)=\bigotimes_{k=1}^{n}{\mathscr{B}(X_k)}
$$

**命运2.2.2.5	$\R^n$与$\C^n$上的Borel$\sigma$-代数**：对于$n\in\N^*$，成立
$$
\mathscr{B}(\R^n)\simeq  \bigotimes_{k=1}^{n}{\mathscr{B}(\R)}=\mathscr{B}(\R)^{\otimes n}
$$

$$
\mathscr{B}(\C^n)\simeq  \bigotimes_{k=1}^{2n}{\mathscr{B}(\R)}=\mathscr{B}(\R)^{\otimes 2n}
$$

---

**定义2.2.2.10	可测空间**：