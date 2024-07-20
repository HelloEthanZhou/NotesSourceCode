[TOC]
# 第一章	集合论和范畴论

## 1	朴素集合论

### 1.1	集合

集合：$\varnothing,\N,\Z,\Q,\R,\C$

量词：$\exists,\forall,\exists!$

### 1.2	集合的关系

包含：$\sub,\subseteq,\subsetneq$

势：$|S|$

幂集(power set)：$\mathscr{P}(S)=\{T\sub S\}$

### 1.3	集合的运算

运算：$\cup,\cap,\setminus,\sqcup,\times$

### 1.4	不交并与积

**不交并(disjoint union)**：
$$
A\sqcup B=(\{0\}\times A)\times(\{1\}\times B)
$$

**积(product)**：
$$
A\times B=\{ (a,b):a\in A,b\in B \}
$$

### 1.5	等价关系，划分与商

**关系(relation)**：定义集合$S$上的一个关系为$R\sub S\times S$，称$a$和$b$存在关系$R$，并记做记作$aRb$，如果$(a,b)\in R$。

**等价关系(equivalence relation)**：称集合$S$上的关系$\sim $为等价关系，如果其满足如下性质。

1. **自反性(reflexivity)**：$a\sim a$
2. **对称性(symmetry)**：$a\sim b\implies b\sim a$
3. **传递性(transitivity)**：$a\sim b,b\sim c\implies a\sim c$

**等价类(equivalence class)**：对于$a\in S$，定义$a$关于等价关系$\sim$的等价类为
$$
[a]_\sim=\{ s\in S:a\sim s \}
$$

对于$A\sub S$，定义$A$关于等价关系$\sim$的等价类为
$$
[A]_\sim=\{ s\in S:\exists a\in A,\text{ s.t. }a\sim s \}
$$
**等价类的性质**：
$$
\left[ \bigcup_{\lambda\in\Lambda}S_\lambda \right]_\sim
=\bigcup_{\lambda\in\Lambda}[S_\lambda]_\sim=\left[ \bigcup_{\lambda\in\Lambda}[S_\lambda]_\sim \right]_\sim,\qquad
\left[ \bigcap_{\lambda\in\Lambda}S_\lambda \right]_\sim
\sub \bigcap_{\lambda\in\Lambda}[S_\lambda]_\sim=\left[ \bigcap_{\lambda\in\Lambda}[S_\lambda]_\sim \right]_\sim
$$
**划分(partition)**：称集族$\mathcal{P}(S)\sub\mathscr{P}(S)$为集合$S$的一个划分，如果
$$
\bigsqcup_{T\in\mathcal{P}(S)}T=S
$$
定义集合$S$关于等价关系$\sim$的划分为
$$
\mathscr{P}_\sim=\{ [a]_\sim:a\in S \}
$$

> 事实上，我们可以按照等价关系对集合作划分；反之，集合的划分也对应于一个等价关系。

**商(quotient)**：定义集合$S$关于等价关系$\sim$的商为
$$
S/\sim=\mathscr{P}_\sim
$$

## 2	集合间的函数

### 2.1	定义

**函数(function)**：称$f$为定义域为$A$，陪域为$B$的函数，如果对于任意$a\in A$，存在且存在唯一$b\in B$，使得成立$f(a)=b$。记作
$$
\begin{align}
f: \begin{aligned}[t]
A&\longrightarrow B\\
a&\longmapsto f(a)
\end{aligned}
\end{align}
$$

或者以**图(diagram)**表示
$$
\xymatrix{
A \ar^f[r] &B
}
$$

**图像(graph)**：对于函数$f:A\to B$，定义其**图像**为
$$
\Gamma_f=\{ (a,b):a\in A,b=f(a) \}\sub A\times B
$$

**单位函数(identity function)**：
$$
\begin{align}
\mathbb{1}_A:\begin{aligned}[t]
A&\longrightarrow B\sub A\\
a&\longmapsto a
\end{aligned}
\end{align}
$$
**像(image)**：对于函数$f:A\to B$，定义其像为
$$
\text{im }f=\{ f(a):a\in A \}
$$
定义$A\to B$上的所有函数构成集合$B^A=\{ f:A\to B \}$。

对于函数$f:A\to B$，以及$S\sub A$，定义
$$
\begin{align}
f|_S:\begin{aligned}[t]
S&\longrightarrow B\\
s&\longmapsto f(s)
\end{aligned}
\end{align}
$$

### 2.2	例子：多重集合与指标集

**多重集合(multiset)**：定义元素可重复的集合为多重集合。事实上，多重集合可以函数的观点考虑，例如对于多重集合$M$，其中$m_k$出现了$n_k$次，那么$M$即与如下函数同构。
$$
\begin{align}
m:\begin{aligned}[t]
\{m_k:k\in\N^*\}&\longrightarrow\N^*\\
m_k&\longmapsto n_k
\end{aligned}
\end{align}
$$

**指标集(indexed set)**：数列$\{ a_n \}_{n=1}^{\infty}$的本质为如下函数。
$$
\begin{align}
a:\begin{aligned}[t]
\N^*&\longrightarrow\C\\
n&\longmapsto a_n
\end{aligned}
\end{align}
$$

### 2.3	复合函数

**复合函数(composition of function)**：对于函数$f:A\to B$和$g:B\to C$，定义其复合函数为
$$
\begin{align}
f\circ g:\begin{aligned}[t]
A&\longrightarrow C\\
a&\longmapsto g(f(a))
\end{aligned}
\end{align}
$$

交换图如下
$$
\xymatrix{
A \ar@/_1pc/[rr]_{g\circ f} \ar^f[r] &B \ar^g[r] &C
}\qquad \text{or}\qquad
\xymatrix{
A \ar^f[r]\ar_{g\circ f}[dr] &B \ar^g[d]\\
& C
}
$$

### 2.4	单射，满射与双射

**单射(injection)**：称函数$f:A\to B$是单的，如果$f(a_1)=f(a_2)$，那么$a_1=a_2$。单射记作$f:A\hookrightarrow B$。

**满射(surjection)**：称函数$f:A\to B$是满的，如果对于任意$b\in B$，存在$a\in A$，使得成立$f(a)=b$。满射记作$f:A\twoheadrightarrow B$。

**双射(bijection)**：称函数$f:A\to B$是双射，并记作$f:A\xrightarrow{\sim}B$，如果其既单又满。

**同构的(isomorphic)**：称集合$A$与$B$为同构的，并记做$A\cong B$，如果存在双射$f:A\to B$。

### 2.5	像与原像

**命题2.2**：对于函数$f:X\to Y$，如下命题成立。

- 如果$A\sub B\sub X$，那么
  $$
  f(A)\sub f(B)
  $$

- 如果$A\sub B\sub Y$，那么
  $$
  f^{-1}(A)\sub f^{-1}(B)
  $$

- 如果$B\sub Y$，那么
  $$
  f^{-1}(B^c)=(f^{-1}(B))^c
  $$

- 如果$B,D\sub Y$，那么
  $$
  f^{-1}(B\setminus D)=f^{-1}(B)\setminus f^{-1}(D)
  $$

- 如果$\{ B_\lambda \}_{\lambda\in\Lambda}\sub\mathscr{P}(Y)$，那么
  $$
  f^{-1}\left( \bigcup_{\lambda\in\Lambda}B_\lambda \right)=\bigcup_{\lambda\in\Lambda}f^{-1}(B_\lambda),\qquad 
  f^{-1}\left( \bigcap_{\lambda\in\Lambda}B_\lambda \right)=\bigcap_{\lambda\in\Lambda}f^{-1}(B_\lambda)
  $$

- 如果$\{ A_\lambda \}_{\lambda\in\Lambda}\sub\mathscr{P}(X)$，那么
  $$
  f\left( \bigcup_{\lambda\in\Lambda}A_\lambda \right)=\bigcup_{\lambda\in\Lambda}f(A_\lambda),\qquad 
  f\left( \bigcap_{\lambda\in\Lambda}[A_\lambda]_\sim \right)=\bigcap_{\lambda\in\Lambda}f(A_\lambda)
  $$
  
- 如果$B\sub Y$，那么
  $$
  f(f^{-1}(B))=B\cap\text{im }f
  $$
  
- 定义等价关系$x\sim y\iff f(x)=f(y)$。如果$A\sub X$，那么
  $$
  f^{-1}(f(A))=[A]_\sim
  $$

### 2.6	单射，满射与双射：再一次邂逅

**逆(inverse)**：对于双射$f:A\to B$，定义其逆为
$$
\begin{align}
f^{-1}:\begin{aligned}[t]
B&\longrightarrow A\\
f(a)&\longmapsto a
\end{aligned}
\end{align}
$$
交换图如下
$$
\xymatrix{
A \ar@/_1pc/[rr]_{\mathbb{1}_A} \ar^f[r] &B \ar^g[r] &A
},\qquad 
\xymatrix{
B \ar@/_1pc/[rr]_{\mathbb{1}_B} \ar^f[r] &A \ar^g[r] &B
}
$$

事实上，对于函数$f:A\to B$，以及$T\sub B$，定义
$$
f^{-1}(T)=\{ a\in A:f(a)\in T \}
$$
**左逆(left-inverse)**：对于函数$f:A\to B$，称函数$g$为$f$的左逆，如果成立$g\circ f=\mathbb{1}_A$。

**右逆(right-inverse)**：对于函数$f:A\to B$，称函数$g$为$f$的右逆，如果成立$f\circ g=\mathbb{1}_B$。

**命题2.1**：函数是双射，当且仅当其存在左逆和右逆。

### 2.7	单态射与满态射

**单态射(monomorphism)**：称函数$f:A\to B$是单态射，如果对于任意集合$Z$，以及任意函数$\alpha_1,\alpha_2:Z\to A$，成立
$$
f\circ \alpha_1=f\circ \alpha_2\implies\alpha_1=\alpha_2
$$
**满态射(epimorphism)**：称函数$f:A\to B$是满态射，如果对于任意集合$Z$，以及任意函数$\beta_1,\beta_2:B\to Z$，成立
$$
\beta_1\circ f=\beta_2\circ f\implies \beta_1=\beta_2
$$
**命题2.3**：如下命题等价。

1. $f$为单射。
2. $f$为单态射。
3. $f$存在左逆。

**命题2.4**：如下命题等价。

1. $f$为满射。
2. $f$为满态射。
3. $f$存在右逆。

### 2.8	基本例子

**自然投影(natural projection)**：对于集合$A$和$B$，定义其自然投影为
$$
\begin{align}
\pi_A: \begin{aligned}[t]
A\times B&\longrightarrow A\\
(a,b)&\longmapsto a
\end{aligned}
\end{align}
$$

$$
\begin{align}
\pi_B: \begin{aligned}[t]
A\times B\longrightarrow B\\
(a,b)\longmapsto B
\end{aligned}
\end{align}
$$

交换图如下
$$
\xymatrix{
  & A\times B\ar@{^{}->>}[ld]_{\pi_A} \ar@{->>}[rd]^{\pi_B} &\\
A &           & B
}
$$

### 2.9	正则分解

**正则分解(canonical decomposition)**：对于函数$f:A\to B$，以及等价关系$a_1\sim a_2\iff f(a_1)=f(a_2)$，$f$可作如下正则分解。
$$
\xymatrix@=9ex{
A \ar@/^2pc/[rrr]^{f} \ar@{->>}[r]_{a\mapsto[a]_{\sim}} & A/\sim \ar@{->}[r]_{[a]_\sim\mapsto f(a)}^{\sim} & \mathrm{im}f \ar@{^{(}->}[r]_{f(a)\mapsto f(a)} & B
}
$$
**例子**：取$f:\R\to\R$为$x\mapsto x^2$，等价关系$x\sim y\iff |x|=|y|$，那么$f$​可做如下正则分解。
$$
\xymatrix@=9ex{
\R \ar@/^2pc/[rrr]^{f} \ar@{->>}[r]_{x\mapsto|x|} & \R^2\cup\{0\} \ar@{->}[r]_{|x|\mapsto x^2}^{\sim} & \R^2\cup\{0\} \ar@{^{(}->}[r]_{x^2\mapsto x^2} & \R
}
$$

## 3	范畴

### 3.1	定义

**范畴(category)**：一个范畴$\textsf{C}$包含如下两类内容。

1. **对象(object)**：$\mathrm{Obj}(\mathsf{C})$

2. **态射(morphism)**：$\mathrm{Hom}_\mathsf{C}(A,B)$，满足如下公理。其中称$A$为**源(source)**，$B$为**目标(target)**。
   - **恒等态射**：对于任意对象$S\in\mathrm{Obj}(\mathsf{C})$，存在恒等态射$\mathbb{1}_S\in\mathrm{Hom}_\mathsf{C}(S,S)$。同时，对于任意态射$f\in \mathrm{Hom}_\mathsf{C}(A,B)$，成立$f\circ\mathbb{1}_A=f$和$\mathbb{1}_B\circ f=f$。
   
   - **态射复合**：对于任意对象$A,B,C\in\mathrm{Obj}(\mathsf{C})$，存在态射复合映射
     $$
     \begin{align}
     \circ :\begin{aligned}[t]
     \mathrm{Hom}_\mathsf{C}(A,B)\times \mathrm{Hom}_\mathsf{C}(B,C)&\longrightarrow \mathrm{Hom}_\mathsf{C}(A,C)\\
     (f,g)&\longmapsto g\circ f
     \end{aligned}
     \end{align}
     $$
   
   - **结合律**：对于任意态射$f\in \mathrm{Hom}_\mathsf{C}(A,B),g\in \mathrm{Hom}_\mathsf{C}(B,C),h\in \mathrm{Hom}_\mathsf{C}(C,D)$，成立$(h\circ g)\circ f=h\circ (g\circ f)$。

---

**不交性**：称态射$\mathrm{Hom}_\mathsf{C}(A,B)$和$\mathrm{Hom}_\mathsf{C}(C,D)$是不相交的，如果$A\ne C$或$B\ne D$。

**自态射(endormorphism)**：对于范畴$\mathsf{C}$，称态射$\mathrm{End}_\mathsf{C}(S)=\mathrm{Hom}_\mathsf{C}(S,S)$为对象$S\in\mathrm{Obj}(\mathsf{C})$的自态射。注意到，$\mathbb{1}_S\in \mathrm{End}_\mathsf{C}(S)$，且如果$f,g\in\mathrm{End}_\mathsf{C}(S)$，那么$g\circ f\in\mathrm{End}_\mathsf{C}(S)$。

**子范畴(subcategory)**：称$\mathsf{C}'$为范畴$\mathsf{C}$的子范畴，如果$\mathrm{Obj}(\mathsf{C'})\sub\mathrm{Obj}(\mathsf{C})$，且对于任意对象$A,B\in\mathsf{C'}$，成立$\mathrm{Hom}_\mathsf{C'}(A,B)\sub\mathrm{Hom}_\mathsf{C}(A,B)$。

**满的(full)**：称范畴$\mathsf{C}$的子范畴$\mathsf{C}'$是满的，如果对于任意对象$A,B\in\mathsf{C'}$，成立$\mathrm{Hom}_\mathsf{C'}(A,B)=\mathrm{Hom}_\mathsf{C}(A,B)$。

### 3.2	例子

**例1	集合范畴**：

1. $\mathrm{Obj}(\mathsf{Set})$：所有集合。
2. $\mathrm{Hom}_{\mathsf{Set}}(A,B)=B^A$

**例2	余范畴(opposite category)**：

1. $\mathrm{Obj}(\mathsf{C}^{\mathrm{op}})=\mathrm{Obj}(\mathsf{C})$
2. $\mathrm{Hom}_{\mathsf{C}^{\mathrm{op}}}(A,B)=\mathrm{Hom}_{\mathsf{C}}(B,A)$

**例3	点范畴**：令$*\in\mathsf{Set}$，定义如下由点$*$诱导的集合范畴$\mathsf{Set}^*$。

1. 对象：$\mathrm{Obj}(\mathsf{Set}^*)=(S,s)$，意指态射$\mathrm{Hom}_\mathsf{C}(\{*\},S)$将$*$映为$s\in S$。

2. 态射：
$$
  \mathrm{Hom}_{\mathsf{Set}^*}((S,s),(T,t))=\{ \sigma:S\to T\mid \sigma(s)=t \}
$$

**例4	关系范畴**：令$S$为一个集合，关系$\sim$满足自反性和传递性，定义如下由$S$以及$\sim$诱导的关系范畴$\mathsf{C}_{S,\sim}$。

1. 对象：$\mathrm{Obj}(\mathsf{C}_{S,\sim})=S$
2. 态射：
$$
  \mathrm{Hom}_{\mathsf{C}_{S,\sim}}(a,b)=\begin{cases}
  \{(a,b)\},\quad & a\sim b\\
  \varnothing,\quad & a\not\sim b
  \end{cases}
$$

**例5	切片范畴(slice category)和余切范畴(co-slice category)**：对于范畴$\mathsf{C}$，以及对象$S\in\mathrm{Obj}(\mathsf{C})$，定义如下由$S$诱导的切片范畴$\mathsf{C}_S$。

1. 对象：
$$
  \mathrm{Obj}(\mathsf{C}_S)=\{ (f,A):f\in\mathrm{Hom}_\mathsf{C}(A,S),A\in\mathrm{Obj}(\mathsf{C}) \}
$$
  通常以如下图表示
$$
  \xymatrix{
  A\ar_f[d]\\
  S
  }
$$

2. 态射：
$$
  \mathrm{Hom}_{\mathsf{C}_A}((f,A),(g,B))=\{ \sigma\in\mathrm{Hom}_\mathsf{C}(A,B):f=g\circ\sigma \}
$$
  通常以如下交换图表示
$$
  \xymatrix{
  A \ar[rr]^\sigma \ar[dr]_{f} & & B \ar[dl]^{g}\\
  &S
  }
$$


对于范畴$\mathsf{C}$，以及对象$S\in\mathrm{Obj}(\mathsf{C})$，定义如下由$S$诱导的余切范畴$\mathsf{C}^S$。

1. 对象：
$$
  \mathrm{Obj}(\mathsf{C}_S)=\{ (f,A):f\in\mathrm{Hom}_\mathsf{C}(S,A),A\in\mathrm{Obj}(\mathsf{C}) \}
$$
  通常以如下图表示
$$
  \xymatrix{
  S\ar_f[d]\\
  A
  }
$$

2. 态射：
$$
  \mathrm{Hom}_{\mathsf{C}_A}((f,A),(g,B))=\{ \sigma\in\mathrm{Hom}_\mathsf{C}(A,B):g=\sigma\circ f \}
$$
  通常以如下交换图表示
$$
  \xymatrix{
  &S\ar[dl]_{f} \ar[dr]^{g}&\\
  A \ar[rr]_\sigma  & & B 
  }
$$

**例6**：对于对象$A,B\in\mathsf{C}$，定义范畴$\mathsf{C}_{A,B}$如下。
$$
\mathrm{Obj}:\qquad
\xymatrix{
& A \\
Z\ar[ur]^f \ar[dr]_g \\
& B
}
\qquad\qquad 
\mathrm{Hom}:\qquad
\xymatrix{
& &A \\
Z_1 \ar[r]^{\sigma} \ar@/^/[urr]^{f_1} \ar@/_/[drr]_{g_1} & Z_2 \ar[ur]^{f_2} \ar[dr]_{g_2} \\
& &B
}
$$
对于对象$A,B\in\mathsf{C}$，定义范畴$\mathsf{C}^{A,B}$​如下。
$$
\mathrm{Obj}:\qquad
\xymatrix{
 A \ar[dr]^f&\\
&Z  \\
 B \ar[ur]_g&
}
\qquad\qquad 
\mathrm{Hom}:\qquad
\xymatrix{
A \ar[dr]^{f_1} \ar@/^/[drr]^{f_2} & & \\
 & Z_1 \ar[r]^\sigma & Z_2 \\
B \ar[ur]_{g_1} \ar@/_/[urr]_{g_2} & & \\
}
$$
**例7**：对于态射$\alpha:A\to C,\beta:B\to C$，定义范畴$\mathsf{C}_{\alpha,\beta}$​如下。
$$
\mathrm{Obj}:\qquad
\xymatrix{
& A \ar[dr]^\alpha \\
Z\ar[ur]^f \ar[dr]_g & & C\\
& B \ar[ur]_\beta
}

\qquad 

\mathrm{Hom}:\qquad
\xymatrix{
& &A \ar[dr]^\alpha\\
Z_1 \ar[r]^{\sigma} \ar@/^/[urr]^{f_1} \ar@/_/[drr]_{g_1} & Z_2 \ar[ur]^{f_2} \ar[dr]_{g_2} & & C\\
& &B \ar[ur]_\beta
}
$$
对于态射$\alpha:C\to A,\beta:C\to B$，定义范畴$\mathsf{C}^{\alpha,\beta}$​如下。
$$
\mathrm{Obj}:\qquad
\xymatrix{
& A \ar[dr]^f \\
C\ar[ur]^\alpha \ar[dr]_\beta & & Z\\
& B \ar[ur]_g
}

\qquad 

\mathrm{Hom}:\qquad
\xymatrix{
 & A \ar[dr]^{f_1} \ar@/^/[rrd]^{f_2} & & \\
C \ar[ur]^\alpha \ar[dr]_\beta & & Z_1 \ar[r]^\sigma & Z_2 \\
 & B \ar[ur]_{g_1} \ar@/_/[rru]_{g_2} & & \\
}
$$

## 4	态射

### 4.1	同构

**同构态射(isomorphism)**：对于范畴$\mathsf{C}$，以及对象$A,B\in\mathrm{Obj}(\mathsf{C})$，称态射$f\in\mathrm{Hom}_\mathsf{C}(A,B)$为同构态射，如果存在逆态射$g\in\mathrm{Hom}_\mathsf{C}(B,A)$，使得成立
$$
g\circ f=\mathbb{1}_A,\qquad f\circ g=\mathbb{1}_B
$$

**同构的(isomorphic)**：对于范畴$\mathsf{C}$，称对象$A,B\in\mathrm{Obj}(\mathsf{C})$是同构的，且记作$A\cong B$，如果存在同构态射$f\in\mathrm{Hom}_\mathsf{C}(A,B)$。

**自同构态射(automorphism)**：对于范畴$\mathsf{C}$，称同构态射$f\in\mathrm{Hom}_\mathsf{C}(S,S)$为对象$S\in\mathrm{Obj}(\mathsf{C})$的自同构态射。

**自同构态射群(automorphism group)**：对于范畴$\mathsf{C}$，对象$S\in\mathrm{Obj}(\mathsf{C})$的自同构态射构成自同构态射群$\mathrm{Aut}_\mathsf{C}(S)$。

**命题4.1**：

- 同构态射存在且存在唯一逆。
- 恒等态射$\mathbb{1}$为同构态射，且$\mathbb{1}^{-1}=\mathbb{1}$。
- 同构态射$f$的逆$f^{-1}$亦为同构态射，且$(f^{-1})^{-1}=f$。
- 如果$f,g$均为同构态射，那么$g\circ f$亦为同构态射，且$(g\circ f)^{-1}=f^{-1}\circ g^{-1}$。

### 4.2	单态射与满态射

**单态射(monomorphism)**：对于范畴$\mathsf{C}$，以及对象$A,B\in\mathrm{Obj}(\mathsf{C})$，称态射$f\in\mathrm{Hom}_\mathsf{C}(A,B)$为单态射，如果对于任意对象$Z\in\mathrm{Obj}(\mathsf{C})$，以及任意态射$\alpha_1,\alpha\in\mathrm{Hom}_\mathsf{C}(Z,A)$，成立
$$
f\circ \alpha_1=f\circ \alpha_2
\implies
\alpha_1=\alpha_2
$$

**满态射(epimorphism)**：对于范畴$\mathsf{C}$，以及对象$A,B\in\mathrm{Obj}(\mathsf{C})$，称态射$f\in\mathrm{Hom}_\mathsf{C}(A,B)$为满态射，如果对于任意对象$Z\in\mathrm{Obj}(\mathsf{C})$，以及任意态射$\beta_1,\beta\in\mathrm{Hom}_\mathsf{C}(B,Z)$，成立
$$
\beta_1\circ f=\beta_2\circ f
\implies
\beta_1=\beta_2
$$

## 5	万有性质

### 5.1	初始对象与终止对象

**初始对象(initial object)**：对于范畴$\mathsf{C}$，称对象$I\in\mathrm{Obj}(\mathsf{C})$为$\mathsf{C}$的初始对象，如果对于任意对象$S\in\mathrm{Obj}(\mathsf{C})$，存在且存在唯一$\mathsf{C}$中的态射$I\to S$​。
$$
\xymatrix{
I\ar[r]^{\exists!\varphi}&\forall S
}
$$

**终止对象(final object)**：对于范畴$\mathsf{C}$，称对象$F\in\mathrm{Obj}(\mathsf{C})$为$\mathsf{C}$的终结对象，如果对于任意对象$S\in\mathrm{Obj}(\mathsf{C})$，存在且存在唯一$\mathsf{C}$中的态射$S\to F$。
$$
\xymatrix{
S\ar[r]^{\exists!\varphi}&\forall F
}
$$

**终端对象(terminal object)**：初始对象和终止对象统称为终端对象。

**命题5.1**：对于范畴$\mathsf{C}$，终端对象至多同构。

- 如果$I_1,I_2$均为$\mathsf{C}$的初始对象，那么$I_1\cong I_2$，且同构态射为$I_1\to I_2$。
- 如果$F_1,F_2$均为$\mathsf{C}$的终结对象，那么$F_1\cong F_2$，且同构态射为$F_1\to F_2$。

### 5.2	万有性质

**万有性质(universal property)**：称结构(construction)满足万有性质，如果其可被视为一个范畴的终端对象。

### 5.3	商

令$\sim$为集合$S$上的等价关系，定义商范畴$\mathsf{C}_{\sim}^S$如下。

1. 对象：$\mathrm{Obj}(\mathsf{C}_{\sim}^S)=\{ (\varphi,T)\mid \varphi:S\to T,a\sim b\implies \varphi(a)=\varphi(b) \}$

2. 态射：$(\varphi,A)\to(\psi,B)$为如下交换图。
$$
\xymatrix{
  A \ar^\sigma[rr]& &B\\
  & S \ar[ul]^{\varphi} \ar[ur]_{\psi} &
  }
$$

**命题5.2**：对于如上范畴，$(\pi,S/\sim)$为其初始对象，交换图为
$$
\xymatrix{
  S/\sim \ar^{\exists!\sigma}[rr]& &\forall T\\
  & S \ar[ul]^{\pi} \ar[ur]_{\forall\varphi} &
  }
$$

### 5.4	积

对于对象$A,B\in\mathsf{C}$，定义范畴$\mathsf{C}_{A,B}$​如下。
$$
\mathrm{Obj}:\qquad
\xymatrix{
& A \\
Z\ar[ur]^f \ar[dr]_g \\
& B
}
\qquad\qquad 
\mathrm{Hom}:\qquad
\xymatrix{
& &A \\
Z_1 \ar[r]^{\sigma} \ar@/^/[urr]^{f_1} \ar@/_/[drr]_{g_1} & Z_2 \ar[ur]^{f_2} \ar[dr]_{g_2} \\
& &B
}
$$

**命题5.3**：对于如上范畴$\mathsf{C}_{A,B}$，如下对象是$\mathsf{C}_{A,B}$的终止对象。
$$
\xymatrix{
& A \\
A\times B\ar[ur]^{\pi_A} \ar[dr]_{\pi_B} \\
& B
}
$$

**积(product)**：称范畴$\mathsf{C}$存在积，如果对于任意对象$A,B\in\mathrm{Obj}(\mathsf{C})$，范畴$\mathsf{C}_{A,B}$存在终止对象。称该终止对象为$\mathsf{C}$关于$A$和$B$的积，记为$A\times B$，以及$A\times B\to A$和$A\times B\to B$。

- 集合范畴$\mathsf{Set}$中，$A\times B$表示$A$与$B$的Descartes积。
- 关系范畴$\mathsf{C}_{\R,\le}$中，$a\times b$表示$a$与$b$的最小值$\min(a,b)$。
- 群范畴$\mathsf{Grp}$中，$(G,*_G)\times (H,*_H)$表示直积$(G\times H,*_{G\times H})$。
- Abel群范畴$\mathsf{Ab}$中，$(G,*_G)\times (H,*_H)$表示直积$(G\times H,*_{G\times H})$。

### 5.5	余积

对于对象$A,B\in\mathsf{C}$，定义范畴$\mathsf{C}^{A,B}$​如下。
$$
\mathrm{Obj}:\qquad
\xymatrix{
 A \ar[dr]^f&\\
&Z  \\
 B \ar[ur]_g&
}
\qquad\qquad 
\mathrm{Hom}:\qquad
\xymatrix{
A \ar[dr]^{f_1} \ar@/^/[drr]^{f_2} & & \\
 & Z_1 \ar[r]^\sigma & Z_2 \\
B \ar[ur]_{g_1} \ar@/_/[urr]_{g_2} & & \\
}
$$
**命题5.4**：对于如上范畴$\mathsf{C}^{A,B}$，如下对象是$\mathsf{C}^{A,B}$​的初始对象。
$$
\xymatrix{
 A \ar[dr]^{i_A}&\\
&A\sqcup B  \\
 B \ar[ur]_{i_B}&
}
$$
**余积(coproduct)**：称范畴$\mathsf{C}$存在余积，如果对于任意对象$A,B\in\mathrm{Obj}(\mathsf{C})$，范畴$\mathsf{C}^{A,B}$存在初始对象。称该初始对象为$\mathsf{C}$关于$A$和$B$的余积，记为$A\sqcup B$，以及$A\sqcup B\to A$和$A\sqcup B\to B$。

- 集合范畴$\mathsf{Set}$中，$A\sqcup  B$表示$A$与$B$的不交并。
- 关系范畴$\mathsf{C}_{\R,\le}$中，$a\sqcup b$表示$a$与$b$的最大值$\max(a,b)$。
- 群范畴$\mathsf{Grp}$中，$(G,*_G)\sqcup (H,*_H)$表示自由积$G*H$。
- Abel群范畴$\mathsf{Ab}$中，$(G,*_G)\sqcup (H,*_H)$表示为直和$G\oplus H$。

# 第二章	群：初次邂逅

![群](D:\OneDrive - stu.hebut.edu.cn\文件\数学\源笔记\Algebra Chapter 0-Paolo Aluffi\图\群.svg)

|            |     原群     |     半群     |    幺半群    |      群      |    交换群    |
| :--------: | :----------: | :----------: | :----------: | :----------: | :----------: |
| **封闭性** | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
| **结合律** |              | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
| **单位元** |              |              | $\checkmark$ | $\checkmark$ | $\checkmark$ |
|  **逆元**  |              |              |              | $\checkmark$ | $\checkmark$ |
| **交换律** |              |              |              |              | $\checkmark$ |

## 1	群的定义

### 1.1	群和群胚

**群胚(groupoid)**：称范畴$\mathsf{C}$为群胚，如果其中任意态射均为同构态射。

**群(group)**：群是仅有一个对象的群胚。

### 1.2	定义

**原群(magma)**：称代数系统$(G,*)$为原群，如果$*$为二元运算$*:G\times G\to G$。

**半群(semigroup)**：称代数系统$(G,*)$为半群，如果二元运算$*:G\times G\to G$成立如下命题。

1. **结合律(associative)**：
   $$
   \forall g,h,k\in G,\quad (g*h)*k=g*(h*k)
   $$

**幺半群(monoid)**：称代数系统$(G,*)$为幺半群，如果二元运算$*:G\times G\to G$成立如下命题。

1. **单位元(identity element)**：
   $$
   \exists e\in G,\forall g\in G,\quad e*g=g*e=g
   $$
2. **结合律(associative)**：
   $$
   \forall g,h,k\in G,\quad (g*h)*k=g*(h*k)
   $$

**群(group)**：称代数系统$(G,*)$为群，如果二元运算$*:G\times G\to G$成立如下命题。

1. **单位元(identity element)**：
   $$
   \exists e\in G,\forall g\in G,\quad e*g=g*e=g
   $$
2. **逆元(inverse)**：
   $$
   \forall g\in G,\exists g^{-1},\quad g*g^{-1}=g^{-1}*g=e
   $$
3. **结合律(associative)**：
   $$
   \forall g,h,k\in G,\quad (g*h)*k=g*(h*k)
   $$

**交换群(commutative group)**：称代数系统$(G,*)$为交换群，如果二元运算$*:G\times G\to G$成立如下命题。

1. **单位元(identity element)**：
   $$
   \exists e\in G,\forall g\in G,\quad e*g=g*e=g
   $$
2. **逆元(inverse)**：
   $$
   \forall g\in G,\exists g^{-1},\quad g*g^{-1}=g^{-1}*g=e
   $$
3. **结合律(associative)**：
   $$
   \forall g,h,k\in G,\quad (g*h)*k=g*(h*k)
   $$
4. **交换律(commutative)**：
   $$
   \forall g,h\in G,\quad g*h=h*g
   $$

### 1.3	基本性质

**群的基本性质**：

- 单位元存在且存在唯一。
- 逆元存在且存在唯一。

### 1.4	消去律

**消去律(cancellation)**：对于群$(G,*)$，以及任意$a,g,h\in G$，成立
$$
a*g=a*h\implies g=h\\
g*a=h*a\implies g=h
$$

### 1.5	交换群

**交换群(commutative group)**：称群$(G,*)$是可交换的，如果对于任意$g,h\in G$，成立$g*h=h*g$。

### 1.6	阶

**元素的阶(order)**：对于群$(G,*)$，定义元素$g\in G$的阶为
$$
|g|=\begin{cases}
n,\qquad & g^n=e,\quad n\in\N^*\quad\text{and}\quad \forall 0<m<n,g^m\ne e\\
\infty,\qquad & \forall n\in\N^*,g^n\ne e
\end{cases}
$$

**群的阶(order)**：有限群$G$的阶$|G|$定义为其元素的个数，无限群$G$的阶定义为$|G|=\infty$。

**引理1.1**：对于群$(G,*)$，以及元素$g\in G$，如果$g^n=e$，那么$|g|\mid n$，其中$n\in\Z$。

**命题1.2**：对于群$(G,*)$，如果$|G|<\infty$，那么对于任意$g\in G$，成立$|g|<\infty$，且对于任意$n\in\N^*$，成立
$$
|g^n|=\frac{\mathrm{lcm}(n,|g|)}{n}=\frac{|g|}{\mathrm{gcd}(n,|g|)}
$$

**命题1.3**：对于群$(G,*)$，以及$g,h\in G$，如果$g*h=h*g$，那么$|g*h|\mid \mathrm{lcm}(|g|,|h|)$。

### 1.7	群结构

|                    阶数                    |                         Abel群                          |             非Abel群             |
| :----------------------------------------: | :-----------------------------------------------------: | :------------------------------: |
|                    $1$                     |                         $\{e\}$                         |                                  |
|                    $6$                     |                         $\Z_6$                          |              $D_3$               |
|                    $8$                     | $\Z_8$，$\Z_2\times \Z_4$，$\Z_2\times \Z_2\times \Z_2$ |           $D_4$，$Q_8$           |
|                    $12$                    |              $\Z_{12}$，$\Z_2\times \Z_6$               | $D_6$，$A_4$，$\Z_3\rtimes \Z_4$ |
|           $p:p\text{ is prime}$            |                         $\Z_p$                          |                                  |
|         $2p:p\text{ is odd prime}$         |                        $\Z_{2p}$                        |              $D_p$               |
|          $p^2:p\text{ is prime}$           |              $\Z_{p^2}$，$\Z_p\times\Z_p$               |                                  |
| $pq:p,q\text{ is prime},p>q,q\not\mid p-1$ |                        $\Z_{pq}$                        |                                  |
|      $pq:p,q\text{ is prime},p\ne q$       |                        $\Z_{pq}$                        |        $\Z_p\rtimes \Z_q$        |

## 2	群的例子

### 2.1	对称群

**对称群(symmetric group)/置换群(permutation group)**：对于集合$A$，定义由$A$诱导的对称群/置换群为
$$
S_A=\mathrm{Aut}_{\mathsf{Set}}(A)=\{ f:A\to A \}
$$
特别的，当$A=\{ 1,\cdots,n \}$时，由$A$诱导的对称群/置换群记为$S_n$。

### 2.2	二面体群

**二面体群(dihedral group)**：对于正$n$边形，令$\sigma$表示绕中心旋转$\frac{2\pi}{n}$，$\tau$表示关于某条对称轴的反射，那么正$n$边形的对称群为
$$
D_n=\{ \sigma^i \circ \tau^j:\sigma^n=\tau^2=\sigma \circ \tau \circ \sigma \circ \tau=\mathbb{1},0\le i <n,j\in\{0,1\} \}
$$

- $$
  \tau^{-1}=\tau,\qquad \sigma^{i}\circ\tau=\tau\circ\sigma^{-i}
  $$
- $$
  |\sigma^i\circ\tau^j|=2
  \iff
  i=0
  \quad \text{or} \quad
  i=\frac{n}{2}
  \quad \text{or} \quad
  j=1
  $$
- 非Abel群
- 换位子群：
  $$
  [D_{2n-1},D_{2n-1}]=\{ \sigma^i:0\le i \le 2n-2 \}\cong \Z/(2n-1)\Z
  $$

  $$
  [D_{2n},D_{2n}]=\{ \sigma^{2i}:0\le i\le n-1 \}\cong\Z/n\Z
  $$
- 中心：
  $$
  \mathrm{Cent}(D_{2n-1})=\{ \mathbb{1} \},\qquad 
  \mathrm{Cent}(D_{2n})=\{ \mathbb{1},\sigma^n \}
  $$

### 2.3	循环群与模运算

**循环群(cyclic group)**：称群$G$为$n$阶循环群，如果$G\cong C_n=\Z/n\Z$。

**模$n$群(group of modulo $n$)**：
$$
\Z/n\Z=\{ [k]_n:0\le k<n \}
$$

- Abel群
- 子群：$\Z/p\Z$，其中$p\mid n$。
- 正规子群：$\Z/p\Z$，其中$p\mid n$。
- 换位子群：$\Z/1\Z$

**模$n$单位群(group of units modulo $n$)**：
$$
(\Z/n\Z)^*=\{ [p]_n:\mathrm{gcd}(p,n)=1 \}
$$

- Abel群
- 换位子群：$\Z/1\Z$

**命题2.1**：对于循环群$(\Z/n\Z,+)$，成立
$$
|[m]_n|=\frac{n}{\mathrm{gcd}(m,n)}
$$

**推论2.2**：等价类$[m]_n$生成循环群$\Z/n\Z$，当且仅当$\mathrm{gcd}(m,n)=1$。

### 2.4	矩阵群

$$
\begin{align}
&\mathrm{GL}_n(\R)=\{ \text{invertible } n\times n \text{ matrices with entries in } \R \}\\
&\mathrm{SL}_n(\R)=\{ M\in \mathrm{GL}_n(\R):\det(M)=1\}\\
&\mathrm{Orb}_n(\R)=\{ M\in \mathrm{GL}_n(\R):MM^t=M^tM=I_n\}\\
&\mathrm{SO}_n(\R)=\{ M\in \mathrm{GL}_n(\R):\det(M)=1,MM^t =M^t M=I_n\}\\
\\
&\mathrm{GL}_n(\C)=\{ \text{invertible } n\times n \text{ matrices with entries in } \C \}\\
&\mathrm{SL}_n(\C)=\{ M\in \mathrm{GL}_n(\C):\det(M)=1\}\\
&\mathrm{U}_n(\C)=\{ M\in \mathrm{GL}_n(\C):MM^\dagger=M^\dagger M=I_n\}\\
&\mathrm{SU}_n(\C)=\{ M\in \mathrm{GL}_n(\C):\det(M)=1,MM^\dagger =M^\dagger M=I_n\}\\
\end{align}
$$

### 2.5	初等数论

**Euler函数**：
$$
\phi(n)=\text{the number of positive integers } <n  \text{ that are relatively prime to } n.
$$
**Euler函数的性质**：

- 解析表达式：
  $$
  \phi(N)
  =\phi(p_1^{r_1}\cdots p_n^{r_n})
  =\prod_{k=1}^{n}p_k^{r_k-1}(p_k-1)
  =N\prod_{\text{prime}\ p\mid N}\left(1-\frac{1}{p}\right)
  $$

- 如果$p$为素数，那么$\phi(p^n)=p^{n-1}(p-1)$；特别的，$\phi(p)=p-1$。

- 如果$\mathrm{gcd}(m,n)=1$，那么$\phi(mn)=\phi(m)\phi(n)$。

- 对于$n\in\N^*$且$n>1$，成立
  $$
  \sum_{\substack{\mathrm{gcd}(m,n)=1\\1\le m\le n}}m=\frac{n}{2}\phi(n),\qquad 
  \sum_{p\mid n}\phi(p)=n
  $$

---

**模$n$单位群(group of units modulo $n$)**：
$$
(\Z/n\Z)^*=\{ [p]_n:\mathrm{gcd}(p,n)=1 \}
$$

**$(\Z/n\Z)^*$的性质**：

- $|(\Z/n\Z)^*|=\phi(n)$

- $$
  p \text{ is prime}\iff (\Z/p\Z)^*\cong C_{p-1}
  $$

- $$
  (\Z/n\Z)^*\ \text{is cyclic}
  \iff n=1,2,4,p^r,2p^r, \text{ where } p  \text{ is odd prime}
  $$

---

**Fermat小定理**：对于素数$p$，如果$\mathrm{gcd}(a,p)=1$，那么
$$
a^{p-1}\equiv 1\mod p
$$
**Euler定理**：如果$\mathrm{gcd}(a,n)=1$，那么
$$
a^{\phi(n)}\equiv 1\mod n
$$

---

**指数**：对于$a,n\in\N^*$，如果$\mathrm{gcd}(a,n)=1$，那么定义$a$关于模$n$的指数
$$
\delta_n(a)=\min\{ r\in\N^*:a^r\equiv 1\mod n \}
$$

**原根**：对于$a,n\in\N^*$，如果$\mathrm{gcd}(a,n)=1$，那么称$a$为模$n$的原根，如果$\delta_n(a)=\phi(n)$，即对于任意$1\le r<\phi(n)$，成立$a^r\not\equiv 1\mod n$。

**原根存在的等价条件**：模$n$存在原根，当且仅当
$$
n=1,2,4,p^r,2p^r, \text{ where } p \text{ is odd prime}
$$
**$a$为模$n$的原根的等价条件**：

- 对于任意$1\le r<\phi(n)$，成立$a^r\not\equiv 1\mod n$。
- 对于任意与$n$互素的$m$，存在$r$，使得成立$a^r\equiv m\mod n$。
- $[a]_{n}$是模$n$单位群$(\Z/n\Z)^*$的生成元。

**原根存在性定理**：

- 如果模$n$存在原根，那么存在$\phi(\phi(n))$个原根。
- 如果$p$为素数，那么模$p$存在原根，且存在$\phi(p-1)$个原根。

**原根的性质**：

- 如果$\mathrm{gcd}(a,n)=1$，且$a^r\equiv 1\mod n$，那么$\delta_n(a)\mid r$。
- 如果$p$为素数，那么模$p$存在原根。
- 如果$p$为奇素数，那么对于任意$n\in\N^*$，模$p^n$存在原根。
- 如果$a$为模$n$的原根，那么$a^r$为模$n$的原根，当且仅当$\mathrm{gcd}(r,\phi(n))=1$。

**原根列表**：

|  $n$  |   原根   | $\phi(n)$ |
|:--:|:------:|:----:|
| $1$ |   $1$  |  $1$   |
| $2$ |   $1$   |  $1$   |
| $3$ |   $2$   |  $2$   |
| $4$ |   $3$   |  $2$   |
| $5$ |  $2,3$  |  $4$   |
| $6$ |   $5$   |  $2$   |
| $7$ |  $3,5$  |  $6$   |
| $8$ |         |  $4$   |
| $9$ |  $2,5$  |  $6$   |
| $10$ |  $3,7$  |  $4$   |
| $11$ |$2,6,7,8$|  $10$  |
| $12$ |         |  $4$   |
| $13$ |$2,6,7,11$|  $12$  |
| $14$ |  $3,5$  |  $6$   |
| $15$ |         |  $8$   |
| $16$ |         |  $8$   |
| $17$ |$3,5,6,7,10,11,12,14$| $16$|
| $18$ |  $5,11$ |  $6$   |
| $19$ |$2,3,10,13,14,15$|  $18$ |
| $20$ |         |  $8$   |

## 3	$\mathsf{Grp}$范畴

### 3.1	群同态映射

**群同态映射(group homomorphism)**：对于群$(G,*_G)$和$(H,*_H)$，定义群同态映射为$\varphi:(G,*_G)\to (H,*_H)$，其中$\varphi(g*_G h)=\varphi(g)*_H\varphi(h)$，交换图为
$$
\xymatrix{
G\times G \ar[r]^{\varphi\times\varphi} \ar[d]_{*G}& H\times H \ar[d]^{*H}\\
G \ar[r]_{\varphi}& H
}
$$

### 3.2	$\mathsf{Grp}$的定义

**$\mathsf{Grp}$范畴**：
$$
\begin{align}
&\mathrm{Obj}(\mathsf{Grp})=\{ \text{Group } (G,*_G) \}\\
&\mathrm{Hom}_\mathsf{Grp}((G,*_G),(H,*_H))=\{ \varphi:(G,*_G)\to (H,*_H)\mid \varphi(g*_G h)=\varphi(g)*_H\varphi(h)\}
\end{align}
$$

### 3.3	小小反思

**命题3.1**：对于群同态映射$\varphi:G\to H$，成立
$$
\begin{align}
&\varphi(e_G)=e_H\\
&\forall g\in G,\quad \varphi(g^{-1})=\varphi(g)^{-1}
\end{align}
$$

### 3.4	积

**命题3.2**：对于$\mathsf{Grp}$，平凡群即为初始对象，亦为终止对象。

**直积(direct product)**：对于群$(G,*_G)$和$(H,*_H)$，定义其直积为群$(G\times H,*_{G\times H})$，其中
$$
(g_1,h_1)*_{G\times H}(g_2,h_2)=(g_1*_Gg_2,h_1*_Hh_2)
$$
**$\mathsf{Grp}$的积**：群$(G,*_G)$与$(H,*_H)$的积$(G,*_G)\times (H,*_H)$为直积$(G\times H,*_{G\times H})$。

**$\mathsf{Grp}$的余积**：群$(G,*_G)$与$(H,*_H)$的余积$(G,*_G)\times (H,*_H)$记作$G*H$，称为自由积。

### 3.5	Abel群

**$\mathsf{Ab}$范畴**：
$$
\begin{align}
&\mathrm{Obj}(\mathsf{Grp})=\{ \text{Abelian Group } (G,*_G) \}\\
&\mathrm{Hom}_\mathsf{Grp}((G,*_G),(H,*_H))=\{ \varphi:(G,*_G)\to (H,*_H)\mid \varphi(g*_G h)=\varphi(g)*_H\varphi(h)\}
\end{align}
$$

**直和(direct sum)**：对于Abel群$(G,*_G)$和$(H,*_H)$，定义其直和$G\oplus H$为直积$(G\times H,*_{G\times H})$。

**$\mathsf{Ab}$的积**：Abel群$(G,*_G)$与$(H,*_H)$的积$(G,*_G)\times (H,*_H)$为直积$(G\times H,*_{G\times H})$。

**$\mathsf{Ab}$的余积**：Abel群$(G,*_G)$与$(H,*_H)$的余积$(G,*_G)\sqcup (H,*_H)$为直和$G\oplus H$​。
$$
\mathsf{Ab}:\text{direct product}=\text{direct sum}=\text{product}=\text{coproduct}
$$

## 4	群同态映射

### 4.1	例子

对于$m\mid n$，定义
$$
\begin{align}
\pi_m^n:\begin{aligned}[t]
\Z/n\Z&\to \Z/m\Z\\
[k]_n&\mapsto [k]_m
\end{aligned}
\end{align}
$$
交换图为
$$
\xymatrix{
\Z \ar[d]_{\pi_n} \ar[rd]^{\pi_m}\\
\Z/n\Z \ar[r]_{\pi_m^n} & \Z/m\Z
}
$$

### 4.2	同态映射与阶

**命题4.1**：对于群同态映射$\varphi:G\to H$，以及任意元素$g\in G$，如果$|g|<\infty$，那么$|\varphi(g)|\mid |g|$。

### 4.3	群同构映射

**群同构映射(group isomorphism)**：称群同态映射$\varphi:G\to H$为群同构映射，如果存在群同态映射$\psi:H\to G$，使得成立
$$
\psi\circ \varphi=\mathbb{1}_{G},\qquad
\varphi\circ \psi=\mathbb{1}_{H}
$$

**群同构的(group isomorphic)**：称群$G$和$H$是同构的，且记作$G\cong H$，如果存在群同构映射$\varphi:G\to H$。

**群自同构映射(group automorphism)**：群$G$的自同构映射为群同构映射$\varphi:G\to G$。

**群内自同构映射(group inner automorphism)**：对于群$(G,*)$，以及$\mathscr{g}\in G$，定义群$G$的内自同构映射为自同构映射$\gamma_\mathscr{g}:G\to G,\quad g\mapsto \mathscr{g}*g*\mathscr{g}^{-1}$。

**群自同构映射群(group automorphism group)**：群$G$的自同构映射构成自同构映射群$\mathrm{Aut}_{\mathsf{Grp}}(G)$。

- 单位元为$\mathbb{1}_G$。
- $\varphi^{-1}\circ \varphi=\varphi\circ\varphi^{-1}=\mathbb{1}_G$

**群内自同构映射群(group inner automorphism group)**：群$(G,*)$的内自同构映射构成群$\mathrm{Inn}_{\mathsf{Grp}}(G)=\{ \gamma_\mathscr{g}:\mathscr{g}\in G \}$。

- $\gamma_{\mathscr{g}}\circ \gamma_{\mathscr{h}}=\gamma_{\mathscr{g}*\mathscr{h}}$

- 单位元为$\gamma_{e}=\mathbb{1}_G$。

- $\gamma_{\mathscr{g}}\circ \gamma_{\mathscr{g}^{-1}}=\gamma_{\mathscr{g}^{-1}}\circ \gamma_{\mathscr{g}}=\gamma_{e}$

- $\mathrm{Inn}_{\mathsf{Grp}}(G)\lhd \mathrm{Aut}_{\mathsf{Grp}}(G)$：
  $$
  \begin{align}
  \pi:\begin{aligned}[t]
  \mathrm{Aut}_{\mathsf{Grp}}(G)&\xtwoheadrightarrow{\hspace{0.3cm}} \mathrm{Aut}_{\mathsf{Grp}}(G)/ \mathrm{Inn}_{\mathsf{Grp}}(G)\\
  \varphi&\longmapsto \varphi\circ \mathrm{Inn}_{\mathsf{Grp}}(G)
  \end{aligned}
  \end{align}
  $$

**命题4.2**：对于群同态映射$\varphi:G\to H$，$\varphi$为群同构映射，当且仅当$\varphi$为双射。

**命题4.3**：对于群同构映射$\varphi:G\to H$，以及任意$g\in G$，成立$|\varphi(g)|=|g|$。

**命题4.4**：对于群$G$和$H$，如果$G\cong H$​，那么
$$
G \text{ is commutative}\iff
H \text{ is commutative}\\
G \text{ is cyclic}\iff
H \text{ is cyclic}
$$

**命题4.5**：对于循环群群$G$和$H$，如果$G\cong H$，那么任取生成元$g\in G,h\in H$，群同构映射$\varphi:G\to H$由等式$\varphi(g)=h$决定且唯一决定。

**命题4.6	群同态映射基本定理**：如果态射$\varphi:G\to H$为群同态映射，那么$G/\varphi^{-1}(e_H)\cong\varphi(G)$。

### 4.4	Abel群的同态映射

**命题4.7**：对于群$G$和交换群$H$，$\mathrm{Hom}_{\mathsf{Grp}}(G,H)$关于$+$运算构成交换群。

**命题4.8**：对于任意集合$S$和交换群$G$，$\mathrm{Hom}_{\mathsf{Set}}(S,G)$构成群。

## 5	自由群

### 5.1	生成元集

**生成子群(generated subgroup)**：对于群$(G,*)$，由子集$S\sub G$生成的子群$\lang S \rang$的等价定义如下。

1. $\lang S \rang$为包含$S$的最小的$G$的子群，即$\displaystyle\lang S \rang =\bigcap_{S\sub H<G}H$。
2. $\lang S \rang=\{ s_1^{r_1}*\cdots*s_n^{r_n}:s_k\in S,r_k\in\Z ,n\in\N\}$

**生成正规子群(generated normal subgroup)**：对于群$(G,*)$，由子集$S\sub G$生成的正规子群$[S]$的等价定义如下。

1. $[S]$为包含$S$的最小的$G$的正规子群，即$\displaystyle[S]=\bigcap_{S\sub N\lhd G}N$。
2. $[S]=\{ (g_1*s_1^{r_1}*g_1^{-1})*\cdots *(g_n*s_n^{r_n}*g_n^{-1}):s_k\in S,g_k\in G,r_k\in\Z,n\in\N \}$

**生成元集(set of generators)**：对于群$(G,*)$，称子集$S\sub G$为$G$的生成元集，如果$\lang S \rang =G$。

**自由生成元集(free set of generators)**：对于群$(G,*)$，称$G$的生成元集$S\sub G$为$G$的一个自由生成元集，如果对于任意$s_1,\cdots,s_n\in S$，以及$r_1,\cdots,r_n\in\Z\setminus\{0\}$，成立$s_1^{r_1}*\cdots*s_n^{r_n}\ne e$。

**自由群(free group)**：称群$(G,*)$为自由群，如果其存在自由生成元集。

### 5.2	万有性质

**自由群(free group)**：对于集合$S$，定义由$S$生成的自由群$F(S)$为由$S$诱导的范畴$\mathscr{F}^S$的初始对象$(j,F(S))$的群分量，其中定义范畴$\mathscr{F}^S$如下。

1. 对象：$\mathrm{Obj}(\mathscr{F}^S)=(j,G)$，其中$G$为群，且$j:S\to G$为集合函数。

2. 态射：$\mathrm{Hom}_{\mathscr{F}^S}((j_1,G_1),(j_2,G_2))=\{ \varphi\in\mathrm{Hom}_{\mathsf{Grp}}(G_1,G_2): \varphi\circ j_1=j_2 \}$，其交换图为
$$
  \xymatrix{
  G_1 \ar[r]^{\varphi} & G_2\\
  S \ar[u]^{j_1} \ar[ur]_{j_2}
  }
$$

换言之，对于集合$S$，称$F(S)$为由$S$生成的自由群，如果存在集合函数$j:S\to F(S)$，使得对于任意群$G$和集合函数$f:S\to G$，存在且存在唯一群同态映射$\varphi:F(S)\to G$，使得成立$\varphi\circ j=f$，其交换图为
$$
\xymatrix{
F(S) \ar[r]^{\varphi} & G\\
S \ar[u]^{j} \ar[ur]_{f}
}
$$

由初始对象的性质，由$S$生成的自由群至多同构。

**单点集的自由群**：
$$
F(\{s\})\cong \Z
$$

### 5.3	具体结构

对于集合$S$，通过如下过程构造由$S$生成的自由群$F(S)$，以及范畴$\mathscr{F}^S$的初始对象$(j,F(S))$。

1. 定义**集合**$S'=\{ s^{-1}:s^{-1} \text{ is the inverse of } s \in S \text{ and corresponds to } s\in S \}$。
2. 通过**并置(juxtaposition)**定义由有限有序列表$(s_1,s_2,\cdots,s_n)$生成$S$中的**字**为$w=s_1s_2\cdots s_n$，其中对于每一个$s_k$，或$s_k\in S$，或$s_k\in S'$。特别的，空字$()\in S$。
3. 定义$S$中全部字构成**集合**$W(S)$。
4. 定义**初等化简映射**$r:W(S)\to W(S)$，对于$w\in W(S)$，从左向右找到第一个形如$ss^{-1}$或$s^{-1}s$的符号对，并移除次符号对，构成单词$r(w)\in W(S)$；如果找不到，那么$r(w)=w\in W(S)$。
5. 容易知道，记$w\in W(S)$的长度为$|w|\in\N$，那么$r^{\lfloor |w|/2 \rfloor}(w)$为最简字，即不含形如$ss^{-1}$或$s^{-1}s$的符号对。
6. 定义**化简映射**$R:W(S)\to W(S)$为$R(w)=r^{\lfloor |w|/2 \rfloor}(w)$。
7. 定义由$S$生成的的**自由群**$F(S)=R(W(S))$，**二元运算**为$w_1*w_2=R(w_1w_2)$。
8. 定义范畴$\mathscr{F}^S$的初始对象$(j,F(S))$的**映射分量**$j:S\to F(S)$为$j(s)=s$。

### 5.4	关系与表示

**关系(relationship)**：称群$(G,*)$中的元素$\{ g_k \}_{k=1}^{n}$间的关系是字$r\in F(S)$，其在$G$中成立$w=e$。

**表示(presentation)**：对于集合$S$，$F(S)$为由集合$S$生成的自由群，$R\sub F(S)$为关系集合，由$S$生成的子群为商群$\lang S\mid R \rang=F(S)/[R]$。

### 5.5	自由Abel群

**自由Abel群(free abelian group)**：对于集合$S$，定义由$S$生成的自由Abel群$F^{\mathrm{ab}}(S)$为由$S$诱导的范畴$\mathscr{F}^{\mathrm{ab}S}$的初始对象$(j,F^{\mathrm{ab}}(S))$的群分量，其中定义范畴$\mathscr{F}^{\mathrm{ab}S}$如下。

1. 对象：$\mathrm{Obj}(\mathscr{F}^{\mathrm{ab}S})=(j,G)$，其中$G$为Abel群，且$j:S\to G$为集合函数。

2. 态射：$\mathrm{Hom}_{\mathscr{F}^{\mathrm{ab}S}}((j_1,G_1),(j_2,G_2))=\{ \varphi\in\mathrm{Hom}_{\mathsf{Ab}}(G_1,G_2): \varphi\circ j_1=j_2 \}$，其交换图为

$$
  \xymatrix{
  G_1 \ar[r]^{\varphi} & G_2\\
  S \ar[u]^{j_1} \ar[ur]_{j_2}
  }
$$

换言之，对于集合$S$，称$F^{\mathrm{ab}}(S)$为由$S$生成的自由Abel群，如果存在集合函数$j:S\to F^{\mathrm{ab}}(S)$，使得对于任意Abel群$G$和集合函数$f:S\to G$，存在且存在唯一群同态映射$\varphi:F^{\mathrm{ab}}(S)\to G$，使得成立$\varphi\circ j=f$，其交换图为
$$
\xymatrix{
F^{\mathrm{ab}}(S) \ar[r]^{\varphi} & G\\
S \ar[u]^{j} \ar[ur]_{f}
}
$$

由初始对象的性质，由$S$生成的Abel自由群至多同构。

**单点集的自由Abel群**：
$$
F^{\mathrm{ab}}(\{s\})=F(\{s\})\cong \Z
$$

**由有限集生成的自由Abel群**：对于有限集$S=\{1,\cdots,n\}$，$\Z^{\oplus n}=\underbrace{\Z\oplus\cdots\oplus\Z}_{n\text{ times}}=\Z^n$为$S$生成的自由Abel群$F^{\mathrm{ab}}(S)$，且范畴$\mathscr{F}^{\mathrm{ab}S}$的初始对象$(j,F^{\mathrm{ab}}(S))$的映射分量$j:S\to \Z^{\oplus n}$为$j(k)=(0,\cdots,0,1,0,\cdots,0)$，其中$1$处于第$k$个位置。

**由一般集合生成的自由Abel群**：对于一般的集合$S$，以及Abel群$G$，定义
$$
G^{\oplus S}=\{ f:S\to G:f(s)\ne e \text{ for only finitely many elements } s\in S \}
$$
注意到，$G^{\oplus S}$为$G^S$的子群，且当$S$有限时，$G^{\oplus S}=G^S$，同时当$S=\{1,\cdots,n\}$时，$\Z^{\oplus S}\cong\Z^{\oplus n}$。

对于集合$S$，成立$F^{\mathrm{ab}}(S)\cong \Z^{\oplus S}$，且范畴$\mathscr{F}^{\mathrm{ab}S}$的初始对象$(j,F^{\mathrm{ab}}(S))$的映射分量$j:S\to \Z^{\oplus S}$为$j(s)=j_s$，其中
$$
\begin{align}
j_s:\begin{aligned}[t]
S&\longrightarrow\Z\\
t&\longmapsto\begin{cases}
1,\quad & t=s\\
0,\quad & t\in S\setminus\{s\}
\end{cases}
\end{aligned}
\end{align}
$$

## 6	子群

### 6.1	定义

**子群(subgroup)**：称群$(H,*)$为$(G,*)$的子群，并记作$H< G$，如果成立如下命题之一。

1. $H\sub G$，且包含映射$i:H\hookrightarrow G$为群同态映射。
2. $H\sub G$，且对于任意$g,h\in H$，成立$g*h^{-1}\in H$。

**命题6.1**：子群的交为子群。

**命题6.2**：对于群同态映射$\varphi:G\to H$，成立
$$
I<G\implies \varphi(I)<\text{im }\varphi
$$
**命题6.3**：对于群同态映射$\varphi:G\to H$，成立
$$
J<\text{im }\varphi\implies \ker\varphi\sub \varphi^{-1}(J)<G
$$
**命题6.4**：对于群同态映射$\varphi:G\to H$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ I:\ker\varphi\sub I<G \}&\longrightarrow \{ J<\text{im }\varphi \}\\
I&\longmapsto \varphi(I)
\end{aligned}
\end{align}
$$

**命题6.5**：对于群同态映射$\varphi:G\to H$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ J<\text{im }\varphi \}&\longrightarrow \{ I:\ker\varphi\sub I<G \}\\
J&\longmapsto \varphi^{-1}(J)
\end{aligned}
\end{align}
$$
**命题6.6**：对于群$(G,*)$，如果$N$为$G$的正规子群，那么
$$
\{ N*H:H <G \}=\{ H:N\sub H<G\}
$$

### 6.2	核与像

**核(kernel)**：定义群同态映射$\varphi:G\to H$的核为
$$
\ker\varphi=\{ g\in G:\varphi(g)=e_H \}=\varphi^{-1}(e_H)
$$

**像(image)**：定义群同态映射$\varphi:G\to H$的像为
$$
\text{im }\varphi=\{ \varphi(g)\in H:g\in G \}=\varphi(G)
$$

**命题6.7**：对于群同态映射$\varphi:G\to H$，满足$\varphi\circ\alpha$为平凡映射的群同态映射$\alpha:K\to G$唯一**因子通过(factor through)**$\ker\varphi$，其交换图如下。
$$
\xymatrix{
K \ar[r]_{\alpha} \ar[dr]_{\exists!\overline{\alpha}} \ar@/^1pc/[rr]^0 &G \ar[r]_{\varphi} &H\\
&\ker\varphi \ar@{^{(}->}[u]
}
$$

**命题6.8**：对于任意集合函数$\varphi:G\to H$，满足$\varphi\circ\alpha=\mathbb{1}_{K}$的集合函数$\alpha:K\to G$因子通过$\ker\varphi$。

### 6.3	由子集生成的子群

**由子集生成的子群(subgroup generated by subset)**：对于群$(G,*)$，子集$S\sub G$生成自由群$F(S)$，那么存在且存在唯一群同态映射$\varphi:F(S)\to G$，因此记$\lang S \rang=\varphi(F(S))$为由子集$S$生成的子群。事实上，$\lang S \rang$的显性表达式如下
$$
\lang S \rang=\{ s_1^{r_1}*\cdots*s_n^{r_n}:s_k\in S,r_k\in\Z \}
$$

**命题6.9**：
$$
\lang S \rang=\bigcap_{S\sub H< G}H
$$

**有限生成群(finitely generated group)**：称群$G$为有限生成的，如果存在有限子集$S\sub G$，使得成立$\lang S \rang=G$。

**命题6.10**：群$G$为有限生成群$\iff$存在$n\in\N^*$，以及满射$F(\{1,\cdots,n\})\twoheadrightarrow G$。

**对易子群(commutator subgroup)**：对于群$(G,*)$，定义其对易子群为$[G,G]=\lang g*h*g^{-1}*h^{-1}:g,h\in G \rang$。

### 6.4	循环群的子群

**命题6.11**：
$$
G< \Z\iff \exists k\ge 0,\text{ s.t. }G=k\Z=\lang k \rang
$$

**命题6.12**：
$$
G<\Z/n\Z\iff \exists p ,\text{ s.t. }p\mid n \text{ and } G=\lang [p]_n \rang
$$

### 6.5	单态射与满态射

**命题6.13**：对于群同态映射$\varphi:G\to H$，如下命题等价。

- $\varphi:G\to H$为单态射。
- $\ker\varphi=\{e_G\}$
- $\varphi:G\to H$为单的函数映射。

**命题6.14**：对于Abel群同态映射$\varphi:G\to H$，如下命题等价。

- $\varphi:G\to H$为满态射。
- $\text{coker }\varphi$是平凡的。
- $\varphi:G\to H$为满的函数映射。

## 7	商群

### 7.1	正规子群

**正规子群(normal subgroup)**：称群$(G,*)$的子群$(N,*)$为正规子群，并记做$N \lhd  G$，如果成立如下命题之一。

1. 对于任意$g\in G$，以及$n\in N$，成立$g*n*g^{-1}\in N$。
2. 对于任意$g\in G$，成立$g*N=N*g$。
3. 对于任意$g\in G$，成立$g*N\sub N*g$。
4. 对于任意$g\in G$，成立$N*g\sub g*N$。
5. 对于任意$g\in G$，成立$g*N*g^{-1}=N$。
6. 对于任意$g\in G$，成立$g*N*g^{-1}\sub N$。
7. 对于任意$g\in G$，成立$N\sub g*N*g^{-1}$。

**命题7.1**：Abel群的子群为正规子群。

**命题7.2**：对于群同态映射$\varphi:G\to H$，$\ker\varphi$为$G$的正规子群。

**命题7.3**：如果$N \lhd G$，且$N\sub H< G$，那么$N \lhd H$。

**命题7.4**：对于群同态映射$\varphi:G\to H$，成立
$$
N\lhd G\implies \varphi(N)\lhd \text{im }\varphi
$$
**命题7.5**：对于群同态映射$\varphi:G\to H$，成立
$$
M\lhd \text{im }\varphi\implies \ker\varphi\sub \varphi^{-1}(M)\lhd G
$$
**命题7.6**：对于群$(G,*)$，如果$N$为$G$的正规子群，那么
$$
\{ M*N:M\text{ is normal} \}=\{ M\supset N\text{ is normal}\}
$$

**命题7.7**：对于群同态映射$\varphi:G\to H$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ N:\ker\varphi\sub N\lhd G \}&\longrightarrow \{ M\lhd \text{im }\varphi \}\\
N&\longmapsto \varphi(N)
\end{aligned}
\end{align}
$$

**命题7.8**：对于群同态映射$\varphi:G\to H$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ M\lhd \text{im }\varphi \}&\longrightarrow \{ N:\ker\varphi\sub N\lhd G \}\\
M&\longmapsto \varphi^{-1}(M)
\end{aligned}
\end{align}
$$

### 7.2	商群

**命题7.9**：对于群$(G,*)$，$\sim$为$G$上的等价关系，定义群$(G/\sim,\bullet)$，运算$[a]\bullet[b]=[a*b]$是定义良好的$\iff$对于任意$a,b,g\in G$，如果$a\sim b$，那么$a*g\sim b*g$且$g*a\sim g*b$。在此情况下，商映射$\pi:G\to G/\sim$为群同态映射，且$(\pi,G/\sim)$为商范畴$\mathsf{C}_{\sim}^{G}$的初始对象，其中商范畴$\mathsf{C}_{\sim}^{G}$如下。

1. 对象：$\mathrm{Obj}(\mathsf{C}_{\sim}^{G})=\{ (\varphi,H)\mid \varphi:G\to H\text{ is group homomorphism and }a\sim b\implies \varphi(a)=\varphi(b) \}$

2. 态射：$(\varphi,H)\to(\psi,K)$为如下交换图。
   $$
   \xymatrix{
   H \ar^\sigma[rr]& &K\\
   & G \ar[ul]^{\varphi} \ar[ur]_{\psi} &
   }
   $$

换言之，如果对于任意$a,b,g\in G$，成立$a\sim b\implies a*g\sim b*g\text{  and  }g*a\sim g*b$，那么对于任意满足$a\sim b\implies \varphi(a)=\varphi(b)$的群同态映射$\varphi:G\to H$，存在且存在唯一群同态映射$\overline{\varphi}:G/\sim\to H$，使得成立$\varphi=\overline{\varphi}\circ\pi$，交换图为
$$
\xymatrix{
  G/\sim \ar^{\exists!\overline{\varphi}}[rr]& &\forall H\\
  & G \ar[ul]^{\pi} \ar[ur]_{\forall\varphi} &
  }
$$

**商群(quotient group)**：称$(G/\sim,\bullet)$为群$(G,*)$关于等价关系$\sim$的商群，其中$[a]\bullet[b]=[a*b]$，如果对于任意$a,b,g\in G$，成立$a\sim b\implies a*g\sim b*g\text{  and  }g*a\sim g*b$。

### 7.3	陪集

**左陪集(left-coset)**：定义群$(G,*)$关于子群$(H,*)$的左陪集为$(G/H)_L=\{ g*H:g\in G \}$，简写为$G/H$。

**右陪集(right-coset)**：定义群$(G,*)$关于子群$(H,*)$的右陪集为$(G/H)_R=\{ H*g:g\in G \}$。

**左等价关系**：定义群$(G,*)$关于子群$(H,*)$的左等价关系$\sim_L$为
$$
a\sim_L b \iff
a^{-1}*b\in H \iff
b\in a*H \iff
a*H=b*H
$$

**右等价关系**：定义群$(G,*)$关于子群$(H,*)$的右等价关系$\sim_R$为
$$
a\sim_R b \iff
a*b^{-1}\in H \iff
a\in H*b \iff
H*a=H*b
$$

**左商群(left-quotient group)**：定义群$(G,*)$关于子群$(H,*)$的左商群为$G/\sim_L=\{ g*H:g\in G \}$。

**右商群(right-quotient group)**：定义群$(G,*)$关于子群$(H,*)$的右商群为$G/\sim_R=\{ H*g:g\in G \}$。

**命题7.10**：对于群$(G,*)$关于子群$(H,*)$的陪集，成立$(G/H)_L \cong (G/H)_R$，群同构映射为$g*H\mapsto H*g^{-1}$。

**命题7.11**：对于群$(G,*)$的左等价关系$\sim_L$与右等价关系$\sim_R$​，成立
$$
a\sim_L b\implies g*a\sim_L g*b,\qquad
a\sim_R b\implies a*g\sim_R b*g
$$

### 7.4	正规子群的商

**命题7.12**：对于群$G$中关于子群$N$的左等价关系$\sim_L$与右等价关系$\sim_R$，成立$\sim_L=\sim_R\iff N$为正规子群。

**模$N$商群(quotient group modulo $N$)**：对于群$(G,*)$的正规子群$(N,*)$，称群$(G/N,\bullet)$为$(G,*)$的模$N$商群，其中$G/N=\{ g*N:g\in G \}$，$(g*N) \bullet (h*N)=(g*h)*N$；亦记作$\frac{G}{N}$。

**定理7.13**：如果$(N,*)$为群$(G,*)$的正规子群，那么对于任意满足$N\sub\ker\varphi$的群同态映射$\varphi:G\to H$，存在且存在唯一群同态映射$\overline{\varphi}:G/N\to H$，使得成立$\varphi=\overline{\varphi}\circ\pi$，其中$\pi:G\twoheadrightarrow G/N,\quad g\mapsto g*N$，交换图为
$$
\xymatrix{
  G/N \ar^{\exists!\overline{\varphi}}[rr]& &\forall H\\
  & G \ar[ul]^{\pi} \ar[ur]_{\forall\varphi} &
  }
$$

**例子**：取$\varphi:\Z/4\Z\to\Z/2\Z$为$[n]_4\mapsto[n]_2$，那么$\ker\varphi=\{ [0]_4,[2]_4 \}$，令$N=\{ [0]_4,[2]_4 \}$，于是$(\Z/4\Z)/N=\{ \{ [0]_4,[2]_4 \},\{ [1]_4,[3]_4 \} \}$，因此$\pi:\Z/4\Z\to (\Z/4\Z)/N$为$[n]_4\mapsto\{ [n]_4,[n+2]_4 \}$，进而存在且存在唯一$\overline{\varphi}:(\Z/4\Z)/N\to\Z/2\Z$为$\{ [n]_4,[n+2]_4 \}\mapsto [n]_2$​。
$$
\xymatrix{
  \{ \{ [0]_4,[2]_4 \},\{ [1]_4,[3]_4 \} \} \ar^{\exists!\overline{\varphi}}[rr]& & \{ [0]_2,[1]_2 \}\\
  & \{ [0]_4,[1]_4,[2]_4,[3]_4 \} \ar[ul]^{\pi} \ar[ur]_{\varphi} &
  }
$$

### 7.5	Kernel$\iff$Normal

**定理7.14**：$N$是群$G$的正规子群$\iff $存在群同态映射$\varphi:G\to H$，使得成立$N=\ker\varphi$。

**正规子群是群同态的核；群同态的核是正规子群**：对于群$G$的正规子群$N$，成立$\ker\pi=N$，其中$\pi:G\twoheadrightarrow G/N$为满的群同态映射；对于群同态映射$\varphi:G\to H$，$\ker\varphi$为$G$的正规子群。因此：
$$
\text{Kernel}\iff\text{Normal}
$$

### 7.6	单群与换位子群

**单群(simple group)**：称仅存在平凡正规子群的群为单群。

**换位子群(commutator group)/导群(derived group)**：对于群$(G,*)$，定义其换位子群为
$$
[G,G]=\lang g*h*g^{-1}*h^{-1}:g,h\in G \rang
$$

**导群列(derived groups series)**：对于群$(G,*)$，定义$G^{(1)}=[G,G]$，$G^{(n+1)}=[G^{(n)},G^{(n)}]$，可得递减次正规列$\cdots\lhd G^{(2)}\lhd G^{(1)}\lhd G$。

**可解群(solvable group)**：称群$(G,*)$为可解群，如果存在$n\in\N^*$，使得成立$G^{(n)}=\{e\}$。

**命题7.15**：Abel群$G$为单群$\iff G$为素数阶群。

**命题7.16**：群$G$为Abel群$\iff [G,G]=\{e\}$

**命题7.17**：对于群$G$，成立$[G,G]\lhd G$，且$G/[G,G]$为Abel群。

**命题7.18**：对于群同态映射$\varphi:G\to H$，成立
$$
\text{im }\varphi \text{ is Abelian group}\iff [G,G]\sub\ker\varphi
$$

**命题7.19**：如果$N$为群$G$的正规子群，那么
$$
\frac{G}{N} \text{ is Abelian group}\iff [G,G]\sub N
$$

**命题7.20**：非Able群可解群不为单群。

## 8	正则分解与Lagrange定理

### 8.1	同构定理

**第一同构定理(first isomorphism theorem)**：
$$
\varphi:G\to H\text{ is group homomorphism}\implies G/\ker\varphi \cong \text{im }\varphi
$$
**第二同构定理(second isomorphism theorem)**：
$$
H< G \text{ and } N\lhd G\implies N\lhd H*N < G \text{ and } (H\cap N)\lhd H \text{ and } \frac{H}{H\cap N}\cong \frac{H*N}{N}
$$
**第三同构定理(third isomorphism theorem)**：
$$
N\sub H \text{ and } N,H\lhd G \implies \frac{H}{N} \lhd \frac{G}{N} \text{ and } \frac{G/N}{H/N}\cong\frac{G}{H}
$$

### 8.2	正则分解

**群同态映射的正则分解(canonical decomposition)**：群同态映射$\varphi:G\to H$的正则分解如下。
$$
\xymatrix@=13ex{
G \ar@/^2pc/[rrr]^{\varphi} \ar@{->>}[r]_{g\mapsto g\ker\varphi} & G/\ker\varphi \ar@{->}[r]_{\overline{\varphi}:g\ker\varphi\mapsto \varphi(g)}^{\sim} & \mathrm{im}\varphi \ar@{^{(}->}[r]_{\varphi(g)\mapsto \varphi(g)} & H
}
$$

**第一同构定理(first isomorphism theorem)**：对于群同态映射$\varphi:G\to H$，成立
$$
G/\ker\varphi \cong \text{im }\varphi
$$

**推论8.1**：如果$N_1\sub G_1$和$N_2\sub G_2$是正规子群，那么$N_1\times N_2\sub G_1\times G_2$是正规子群，且
$$
\frac{G_1\times G_2}{N_1\times N_2}\cong\frac{G_1}{N_1}\times\frac{G_2}{N_2}
$$

**命题8.2**：对于群同态映射$\varphi:G\to H$，如果$I$为$G$的子群，那么
$$
\frac{G}{\ker\varphi*I}\cong\frac{\text{im }\varphi}{\varphi(I)}
$$
**命题8.3**：对于群同态映射$\varphi:G\to H$，如果$I\supset\ker\varphi$为$G$的子群，那么
$$
\frac{G}{I}\cong\frac{\text{im }\varphi}{\varphi(I)}
$$

### 8.3	表示

**表示(presentation)**：群$(G,*)$的表示为同构$G\cong F(S)/\ker \rho$，其中$\rho:F(S)\twoheadrightarrow G$。

**表示(presentation)**：对于$\C$上的有限维向量空间$V$，记线性映射群$\mathrm{GL}(V)=\{ f:V\to V \text{ is a reversible linear map} \}$，定义有限群$G$的表示是群同态映射$\varphi:G\to\mathrm{GL}(V)$。

### 8.4	商的子群与正规子群

**命题8.4**：如果$N$为群$(G,*)$的正规子群，那么如下集合函数为双射。
$$
\begin{align}
\varphi:\begin{aligned}[t]
\{ H:N\sub H < G \}&\longrightarrow \{ K< G/N \}\\
H&\longmapsto H/N
\end{aligned}
\end{align}
$$

**命题8.5**：如果$N$为群$(G,*)$的正规子群，那么如下集合函数为双射。
$$
\begin{align}
\varphi:\begin{aligned}[t]
\{ M:N\sub M \lhd G \}&\longrightarrow \{ L\lhd G/N \}\\
M&\longmapsto M/N
\end{aligned}
\end{align}
$$

**命题8.6**：如果$N\lhd G$，且$N\sub H\sub K$，同时$H,K< G$，那么$H/N\sub K/N$。

**第三同构定理(third isomorphism theorem)**：如果$N\lhd G$，且$N< H < G$，那么$H \lhd G\iff H/N\lhd G/N$，此时成立
$$
\frac{G/N}{H/N}\cong\frac{G}{H}
$$

### 8.5	$HK/H \text{ v.s. } K/(H\cap K)$

**第二同构定理(second isomorphism theorem)**：如果$H< G$，且$N\lhd G$，那么$N\lhd H*N < G$，且$(H\cap N)\lhd H$，同时成立
$$
\frac{H}{H\cap N}\cong \frac{H*N}{N}
$$

### 8.6	指数与Lagrange定理

**指数(index)**：定义群$G$的子群$H$的指数为$[G:H]=|G/H|$。

**引理8.7**：对于群$(G,*)$的子群$(H,*)$，以及任意$g\in G$，如下映射为双射。
$$
H\to g*H,\qquad h\mapsto g*h\\
H\to H*g,\qquad h\mapsto h*g
$$

**Lagrange定理**：对于群$(G,*)$的子群$(H,*)$，如果$|G|<\infty$，那么$|G|=[G:H]|H|$。

- 对于任意$g\in G$，成立$|p|\mid |G|$。
- 素数阶群为循环群。
- **Fermat小定理**：对于素数$p$，如果$p\nmid a$，那么$a^{p-1}\equiv 1\mod p$。

### 8.7	余核与余像

**余核(co-kernel)**：定义群同态映射$\varphi:G\to H$的余核为
$$
\text{coker }\varphi=H/\text{im }\varphi
$$
**余像(co-image)**：定义群同态映射$\varphi:G\to H$的余像为
$$
\text{cokim }\varphi=G/\ker\varphi
$$

## 9	群作用

### 9.1	作用

**群作用(group action)**：定义群$(G,*)$关于范畴$\textsf{C}$中的对象$S$的作用为群同态映射$\Psi:G\to \mathrm{Aut}_{\mathsf{C}}(S)$。

**忠实的(faithful)/有效的(effective)**：称群$G$关于范畴$\textsf{C}$中的对象$S$的作用$\Psi:G\to \mathrm{Aut}_{\mathsf{C}}(S)$为忠诚的/有效的，如果$\Psi$是单态射。

### 9.2	集合作用

**(关于集合的)作用(action)**：定义群$(G,*)$关于集合$S$的作用为集合函数$\bullet:G\times S\to S$，其中
$$
\mathscr{e}\bullet s=s,\qquad
(\mathscr{g}*\mathscr{h})\bullet s=\mathscr{g}\bullet(\mathscr{h}\bullet s)
$$
**(关于集合的)作用的一般性**：群作用$\iff$群同态映射

- 如果$\bullet:G\times S\to S$为群$(G,*)$关于集合$S$的作用，那么可定义群同态映射$\Psi:G\to \mathrm{Aut}_{\mathsf{Set}}(S),\quad \mathscr{g}\mapsto \psi_{\mathscr{g}}$，其中集合函数$\psi_{\mathscr{g}}:S\to S,\quad s\mapsto \mathscr{g}\bullet s$。
- 如果$\Psi:G\to \mathrm{Aut}_{\mathsf{Set}}(S),\quad \mathscr{g}\mapsto \psi_{\mathscr{g}}$为群同态映射，那么可定义群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S,\quad (\mathscr{g},s)\mapsto \psi_{\mathscr{g}}(s)$。

**作用的核**：定义群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$的核$\ker\bullet$为群同态映射$\Psi:G\to \mathrm{Aut}_{\mathsf{Set}}(S),\quad \mathscr{g}\mapsto \psi_{\mathscr{g}}$的核$\ker\Psi$，其中集合函数$\psi_{\mathscr{g}}:S\to S,\quad s\mapsto \mathscr{g}\bullet s$。事实上
$$
\ker\bullet=\ker\Psi=\{ \mathscr{g}\in G:\psi_{\mathscr{g}}=\mathbb{1}_S \}=\{ \mathscr{g}\in G:\mathscr{g}\bullet s= s,\forall s\in S \}
$$

**忠实的(faithful)/有效的(effective)**：称群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$为忠诚的/有效的，如果成立如下命题之一。

1. $\bullet$是单的。
2. 作用$\bullet:G\times S\to S$对应的群同态映射$\Psi:G\to \mathrm{Aut}_{\mathsf{Set}}(S),\quad \mathscr{g}\mapsto \psi_{\mathscr{g}}$为单态射，其中集合函数$\psi_{\mathscr{g}}:S\to S,\quad s\mapsto \mathscr{g}\bullet s$。
3. $\ker\bullet=\ker\Psi=\{e\}$
4. $\{ \mathscr{g}\in G:\mathscr{g}\bullet s= s,\forall s\in S \}=\{e\}$

**可传递(transitive)作用**：称群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$为可传递的，如果对于任意$s,t\in S$，存在$\mathscr{g}\in G$，使得成立$t=\mathscr{g}\bullet s$。

**(关于群的)左作用**：群$(G,*)$关于集合$G$的忠实的左作用为$(\mathscr{g},g)\mapsto \mathscr{g}*g$。

**(关于群的)右作用**：群$(G,*)$关于集合$G$的忠实的右作用为$(\mathscr{g},g)\mapsto g*\mathscr{g}$。

**(关于左商集的)左作用**：群$(G,*)$关于左商集$(G/H)_L$的左作用为$(\mathscr{g},g*H)\mapsto (\mathscr{g}*g)*H$。

**(关于右商集的)右作用**：群$(G,*)$关于右商集$(G/H)_R$的右作用为$(\mathscr{g},H*g)\mapsto H*(g*\mathscr{g})$。

**(关于群的)共轭作用(conjugation action)**：群$(G,*)$关于集合$G$的共轭作用为$(\mathscr{g},g)\mapsto \mathscr{g}*g*\mathscr{g}^{-1}$。

**(关于幂集的)共轭作用(conjugation action)**：群$(G,*)$关于幂集$\mathscr{P}(G)$的共轭作用为$(\mathscr{g},S)\mapsto \mathscr{g}*S*\mathscr{g}^{-1}$。

**Cayley定理**：群同构于对称群的子群。

- 事实上，给定群$(G,*)$，可诱导忠实作用，即群同态映射$\Psi:G\to \mathrm{Aut}_{\mathsf{Set}}(G),\quad \mathscr{g}\mapsto \psi_{\mathscr{g}}$，其中集合函数$\psi_{\mathscr{g}}:G\to G,\quad g\mapsto \mathscr{g}* g$。
- 由于$\Psi$为单态射，那么$G\cong \text{im }\Psi< \mathrm{Aut}_{\mathsf{Set}}(G)$。

### 9.3	轨道-稳定化子定理与范畴$G$-$\mathsf{Set}$

**轨道(orbit)**：对于群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$，定义$s\in S$的轨道为
$$
\mathrm{Orb}_G(s)=\{ \mathscr{g}\bullet s:\mathscr{g}\in G \}
$$
**稳定化子(stabilizer)**：对于群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$，定义$s\in S$的稳定化子为
$$
\mathrm{Stab}_G(s)=\{ \mathscr{g}\in G:\mathscr{g}\bullet s=s \}
$$

**命题9.1**：对于群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$，以及任意$s,t\in S$，成立或$\mathrm{Orb}_G(s)=\mathrm{Orb}_G(t)$，或$\mathrm{Orb}_G(s)\cap \mathrm{Orb}_G(t)=\varnothing$。

**命题9.2**：对于群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$，以及任意$s\in S$，$\mathrm{Stab}_G(s)$为$G$的子群。

**轨道-稳定化子定理(orbital-stabilizer theorem)**：对于群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$，以及任意$s\in S$，存在双射$(G/\mathrm{Stab}_G(s))_L\to\mathrm{Orb}_G(s)$；特别的，对于有限群$G$，成立
$$
|G|=|\mathrm{Stab}_G(s)||\mathrm{Orb}_G(s)|
$$
事实上，可定义双射
$$
\begin{align}
\varphi:\begin{aligned}[t]
(G/\mathrm{Stab}_G(s))_L&\longrightarrow\mathrm{Orb}_G(s)\\
g*\mathrm{Stab}_G(s)&\longmapsto g\bullet s
\end{aligned}
\end{align}
$$

**命题9.3**：对于群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$，以及$s,t\in S$，且$g\in G$，如果$t=\mathscr{g}\bullet s$，那么
$$
\mathrm{Stab}_G(t)=\mathscr{g}*\mathrm{Stab}_G(s)*\mathscr{g}^{-1}
$$

**范畴$G$-$\mathsf{Set}$**：

1. 对象：$(\bullet,S)$，其中$\bullet:G\times S\to S$为群$(G,*)$关于集合$S$的作用。

2. 态射：$(\boxdot,S)\to (\triangle,T)$的态射定义为集合函数$\varphi:S\to T$，满足$\boxdot \circ \varphi=(\mathbb{1}_G\times \varphi)\circ \triangle$，交换图如下。
   $$
   \xymatrix{
   G\times S \ar[r]^{\mathbb{1}_G\times \varphi} \ar[d]_{\boxdot} & G\times T \ar[d]^{\triangle}\\
   S \ar[r]_{\varphi} & T
   }
   $$

## 10	范畴中的群对象

### 10.1	范畴论的观点

**群对象(group object)**：对于存在有限积和终止对象$1$的范畴$\mathsf{C}$，称$(G,*,e, i )$为范畴$\mathsf{C}$的群对象，其中$G$为范畴$\mathsf{C}$的对象，$*:G\times G\to G$，$e:1\to G$，以及$ i :G\to G$为范畴$\mathsf{C}$​的态射，且使得如下交换图成立。
$$
\xymatrix{
(G\times G)\times G \ar[r]^{*\times\mathbb{1}_G} \ar[d]_{\cong} & G\times G \ar[d]^{*}\\
G\times (G\times G) \ar[r]^{\mathbb{1}_{G}\times *} & G
}
$$

$$
\xymatrix{
1\times G \ar[r]^{e\times \mathbb{1}_G} \ar[dr]_{\cong} & G\times G \ar[d]^{*}\\
&G 
}
\qquad\qquad
\xymatrix{
G\times 1 \ar[r]^{\mathbb{1}_G\times e} \ar[dr]_{\cong} & G\times G \ar[d]^{*}\\
&G 
}
$$

$$
\xymatrix{
G \ar[r]^{\mathbb{1}_G\times\mathbb{1}_G} \ar[d] & G\times G \ar[r]^{\mathbb{1}_G\times i } & G\times G \ar[d]^{*} \\
1 \ar[rr]^{e} & & G
}
\qquad\qquad
\xymatrix{
G \ar[r]^{\mathbb{1}_G\times\mathbb{1}_G} \ar[d] & G\times G \ar[r]^{ i \times\mathbb{1}_G} & G\times G \ar[d]^{*} \\
1 \ar[rr]^{e} & & G
}
$$

# 第三章	环与模

![环](D:\OneDrive - stu.hebut.edu.cn\文件\数学\源笔记\Algebra Chapter 0-Paolo Aluffi\图\环.svg)

|                |      环      |    交换环    |  无零因子环  |     整环     |     除环     |      域      |
| :------------: | :----------: | :----------: | :----------: | :----------: | :----------: | :----------: |
| **加法封闭性** | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
| **乘法封闭性** | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
| **加法单位元** | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
| **乘法单位元** | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
|  **加法逆元**  | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
| **加法交换律** | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
| **加法结合律** | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
| **乘法结合律** | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
|   **分配律**   | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
|   **非零性**   |              |              | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
|   **消去律**   |              |              | $\checkmark$ | $\checkmark$ | $\checkmark$ | $\checkmark$ |
| **乘法交换律** |              | $\checkmark$ |              | $\checkmark$ |              | $\checkmark$ |
|  **乘法逆元**  |              |              |              |              | $\checkmark$ | $\checkmark$ |

## 1	环的定义

### 1.1	定义

**零环(zero-ring)**：$\{0\}$

**非零环(non-zero-ring)**：称环$(R,+,\;\cdot\;)$为非零环，如果$0\ne 1$。

**环(ring)**：称代数系统$(R,+,\;\cdot\;)$为环，如果加法运算$+:R\times R\to R$和乘法运算$\cdot :R\times R\to R$成立如下命题。

1. **加法单位元(addition identity element)**：
   $$
   \exists 0\in R,\forall r\in R,\quad 0+r=r+0=r
   $$

2. **乘法单位元(multiplication identity element)**：
   $$
   \exists 1\in R,\forall r\in R,\quad 1\cdot r=r\cdot 1=r
   $$

3. **加法逆元(addition inverse)**：
   $$
   \forall r\in R,\exists-r\in R,\quad r+(-r)=(-r)+r=0
   $$

4. **加法结合律(addition associative)**：
   $$
   \forall r,s,t\in R,\quad (r+s)+t=r+(s+t)
   $$

5. **乘法结合律(multiplication associative)**：
   $$
   \forall r,s,t\in R,\quad (r\cdot s)\cdot t=r\cdot (s\cdot t)
   $$

6. **加法交换律(addition commutative)**：
   $$
   \forall r,s\in R,\quad r+s=s+r
   $$

7. **分配律(distributive)**：
   $$
   \begin{align}
   &\forall r,s,t\in R,\quad (r+s)\cdot t=r\cdot t+s\cdot t\\
   &\forall r,s,t\in R,\quad r\cdot(s+t)=r\cdot s+r\cdot t
   \end{align}
   $$

> 环$(R,+,\;\cdot\;)$包括交换群$(R,+)$和幺半群$(R,\cdot )$，并且满足分配律。

**交换环(commutative ring)**：称代数系统$(R,+,\;\cdot\;)$为交换环，如果加法运算$+:R\times R\to R$和乘法运算$\cdot :R\times R\to R$成立如下命题。

1. **加法单位元(addition identity element)**：
   $$
   \exists 0\in R,\forall r\in R,\quad 0+r=r+0=r
   $$
2. **乘法单位元(multiplication identity element)**：
   $$
   \exists 1\in R,\forall r\in R,\quad 1\cdot r=r\cdot 1=r
   $$
3. **加法结合律(addition associative)**：
   $$
   \forall r,s,t\in R,\quad (r+s)+t=r+(s+t)
   $$
4. **乘法结合律(multiplication associative)**：
   $$
   \forall r,s,t\in R,\quad (r\cdot s)\cdot t=r\cdot (s\cdot t)
   $$
5. **加法逆元(addition inverse)**：
   $$
   \forall r\in R,\exists-r\in R,\quad r+(-r)=(-r)+r=0
   $$
6. **加法交换律(addition commutative)**：
   $$
   \forall r,s\in R,\quad r+s=s+r
   $$
7. **乘法交换律(multiplication commutative)**：
   $$
   \forall r,s\in R,\quad r\cdot s=s\cdot r
   $$
8. **分配律(distributive)**：
   $$
   \begin{align}
   &\forall r,s,t\in R,\quad (r+s)\cdot t=r\cdot t+s\cdot t\\
   &\forall r,s,t\in R,\quad r\cdot(s+t)=r\cdot s+r\cdot t
   \end{align}
   $$

**无零因子环(without zero-divisor ring)**：称代数系统$(R,+,\;\cdot\;)$为无零因子环，如果加法运算$+:R\times R\to R$和乘法运算$\cdot :R\times R\to R$成立如下命题。

1. **加法单位元(addition identity element)**：
   $$
   \exists 0\in R,\forall r\in R,\quad 0+r=r+0=r
   $$

2. **乘法单位元(multiplication identity element)**：
   $$
   \exists 1\in R\setminus\{0\},\forall r\in R,\quad 1\cdot r=r\cdot 1=r
   $$

3. **加法逆元(addition inverse)**：
   $$
   \forall r\in R,\exists-r\in R,\quad r+(-r)=(-r)+r=0
   $$

4. **加法结合律(addition associative)**：
   $$
   \forall r,s,t\in R,\quad (r+s)+t=r+(s+t)
   $$

5. **乘法结合律(multiplication associative)**：
   $$
   \forall r,s,t\in R,\quad (r\cdot s)\cdot t=r\cdot (s\cdot t)
   $$

6. **加法交换律(addition commutative)**：
   $$
   \forall r,s\in R,\quad r+s=s+r
   $$

7. **消去律(cancellation)**：
   $$
   \forall r,s\in R,\quad r\cdot s=0\implies r=0\text{ or }s=0
   $$

8. **分配律(distributive)**：
   $$
   \begin{align}
   &\forall r,s,t\in R,\quad (r+s)\cdot t=r\cdot t+s\cdot t\\
   &\forall r,s,t\in R,\quad r\cdot(s+t)=r\cdot s+r\cdot t
   \end{align}
   $$

**整环(integral domain)**：称代数系统$(R,+,\;\cdot\;)$为整环，如果加法运算$+:R\times R\to R$和乘法$\cdot :R\times R\to R$成立如下命题。

1. **加法单位元(addition identity element)**：
   $$
   \exists 0\in R,\forall r\in R,\quad 0+r=r+0=r
   $$

2. **乘法单位元(multiplication identity element)**：
   $$
   \exists 1\in R\setminus\{0\},\forall r\in R,\quad 1\cdot r=r\cdot 1=r
   $$

3. **加法逆元(addition inverse)**：
   $$
   \forall r\in R,\exists-r\in R,\quad r+(-r)=(-r)+r=0
   $$

4. **加法结合律(addition associative)**：
   $$
   \forall r,s,t\in R,\quad (r+s)+t=r+(s+t)
   $$

5. **乘法结合律(multiplication associative)**：
   $$
   \forall r,s,t\in R,\quad (r\cdot s)\cdot t=r\cdot (s\cdot t)
   $$

6. **加法交换律(addition commutative)**：
   $$
   \forall r,s\in R,\quad r+s=s+r
   $$

7. **乘法交换律(multiplication commutative)**：
   $$
   \forall r,s\in R,\quad r\cdot s=s\cdot r
   $$

8. **消去律(cancellation)**：
   $$
   \forall r,s\in R,\quad r\cdot s=0\implies r=0\text{ or }s=0
   $$

9. **分配律(distributive)**：
   $$
   \begin{align}
   &\forall r,s,t\in R,\quad (r+s)\cdot t=r\cdot t+s\cdot t\\
   &\forall r,s,t\in R,\quad r\cdot(s+t)=r\cdot s+r\cdot t
   \end{align}
   $$

**除环(division ring)**：称代数系统$(R,+,\;\cdot\;)$为除环，如果加法运算$+:R\times R\to R$和乘法$\cdot :R\times R\to R$成立如下命题。

1. **加法单位元(addition identity element)**：
   $$
   \exists 0\in R,\forall r\in R,\quad 0+r=r+0=r
   $$

2. **乘法单位元(multiplication identity element)**：
   $$
   \exists 1\in R\setminus\{0\},\forall r\in R,\quad 1\cdot r=r\cdot 1=r
   $$

3. **加法逆元(addition inverse)**：
   $$
   \forall r\in R,\exists-r\in R,\quad r+(-r)=(-r)+r=0
   $$

4. **乘法逆元(multiplication inverse)**：
   $$
   \forall r\in R\setminus\{0\},\exists r^{-1}\in R,\quad r\cdot r^{-1}=r^{-1}\cdot r=1
   $$

5. **加法结合律(addition associative)**：
   $$
   \forall r,s,t\in R,\quad (r+s)+t=r+(s+t)
   $$

6. **乘法结合律(multiplication associative)**：
   $$
   \forall r,s,t\in R,\quad (r\cdot s)\cdot t=r\cdot (s\cdot t)
   $$

7. **加法交换律(addition commutative)**：
   $$
   \forall r,s\in R,\quad r+s=s+r
   $$

8. **分配律(distributive)**：
   $$
   \begin{align}
   &\forall r,s,t\in R,\quad (r+s)\cdot t=r\cdot t+s\cdot t\\
   &\forall r,s,t\in R,\quad r\cdot(s+t)=r\cdot s+r\cdot t
   \end{align}
   $$

> 除环$(R,+,\;\cdot\;)$包括交换群$(R,+)$和群$(R,\cdot )$，并且满足分配律。

**域(field)**：称代数系统$(F,+,\cdot)$为域，如果加法运算$+:F\times F\to F$和乘法运算$\cdot :F\times F\to F$成立如下命题。

1. **加法单位元(addition identity element)**：
   $$
   \exists 0\in F,\forall f\in F,\quad 0+f=f+0=f
   $$

2. **乘法单位元(multiplication identity element)**：
   $$
   \exists 1\in F\setminus\{0\},\forall f\in F,\quad 1\cdot f=f\cdot 1=f
   $$

3. **加法逆元(addition inverse)**：
   $$
   \forall f\in F,\exists-f\in F,\quad f+(-f)=(-f)+f=0
   $$

4. **乘法逆元(multiplication inverse)**：
   $$
   \forall f\in F\setminus\{0\},\exists f^{-1}\in F,\quad f\cdot f^{-1}=f^{-1}\cdot f=1
   $$

5. **加法交换律(addition commutative)**：
   $$
   \forall f,g\in F,\quad f+g=g+f
   $$

6. **乘法交换律(multiplication commutative)**：
   $$
   \forall f,g\in F,\quad f\cdot g=g\cdot f
   $$

7. **加法结合律(addition associative)**：
   $$
   \forall f,g,h\in F,\quad (f+g)+h=f+(g+h)
   $$

8. **乘法结合律(multiplication associative)**：
   $$
   \forall f,g,h\in F,\quad (f\cdot g)\cdot h=f\cdot (g\cdot h)
   $$

9. **分配律(distributive)**：
   $$
   \begin{align}
   &\forall f,g,h\in F,\quad (f+g)\cdot h=f\cdot h+g\cdot h\\
   &\forall f,g,h\in F,\quad f\cdot(g+h)=f\cdot g+f\cdot h
   \end{align}
   $$

> 域$(F,+,\cdot)$包括交换群$(F,+)$和交换群$(F,\cdot )$，并且满足分配律。

---

**减法(subtraction)**：定义环$(R,+,\;\cdot\;)$的减法为$r-s=r+(-s)$。

**整数数乘(integer multiplication)**：定义环$(R,+,\;\cdot\;)$的整数数乘运算为
$$
\begin{align}
\Z\times R&\longrightarrow R\\
(n,r)&\longmapsto nr=\begin{cases}
\underbrace{r+\cdots +r}_{n\text{ times}},\qquad & n\in\N^*\\
0,\qquad & n=0\\
(-n)r,\qquad & n\in-\N^*
\end{cases}
\end{align}
$$

**非负整数幂(non-negative Integer power)**：定义环$(R,+,\;\cdot\;)$的非负整数幂运算为
$$
\begin{align}
\N\times R\setminus\{(0,0)\}&\longrightarrow R\\
(n,r)&\longmapsto r^n=\begin{cases}
\underbrace{r\cdots r}_{n\text{ times}},\qquad & n\in\N^*\\
1,\qquad & n=0\\
\end{cases}
\end{align}
$$

**环的简单性质**：

- $-(-r)=r$
- $0r=0\cdot r=r\cdot 0=0$
- $-r=(-1)r=0-r=-1\cdot r=r\cdot(-1)$
- $(-r)\cdot(-s)=r\cdot s$

**整数环**：$(\Z/n\Z,+,\cdot)$，其中$[a]_n+[b]_n=[a+b]_n$，$[a]_n\cdot [b]_n=[ab]_n$。

**矩阵环**：
$$
\begin{align}
&\mathfrak{gl}_n(\R)=\{ n\times n \text{ matrices with entries in } \R \}\\
&\mathfrak{sl}_n(\R)=\{ M\in \mathfrak{gl}_n(\R):\tr(M)=0\}\\
&\mathfrak{so}_n(\R)=\{ M\in \mathfrak{gl}_n(\R):\tr(M)=1,M+M^t =0\}\\
\\
&\mathfrak{gl}_n(\C)=\{ n\times n \text{ matrices with entries in } \C \}\\
&\mathfrak{sl}_n(\C)=\{ M\in \mathfrak{gl}_n(\C):\tr(M)=0\}\\
&\mathfrak{su}_n(\C)=\{ M\in \mathfrak{gl}_n(\C):\tr(M)=0,M+M^\dagger =0\}\\
\end{align}
$$

### 1.2	零因子与单位

**左零因子(left-zero-divisor)**：称$e\in R$为环$(R,+,\;\cdot\;)$的左零因子，如果存在非零元$u\in R$，使得成立$e\cdot u=0$；换言之
$$
\exists u\in R\setminus\{0\},\quad e\cdot u=0
$$
**右零因子(right-zero-divisor)**：称$e\in R$为环$(R,+,\;\cdot\;)$的右零因子，如果存在非零元$v\in R$，使得成立$v\cdot e=0$；换言之
$$
\exists v\in R\setminus\{0\},\quad v\cdot e=0
$$
**零因子(zero-divisor)**：称$e\in R$为环$(R,+,\;\cdot\;)$的零因子，如果存在非零元$r\in R$，使得成立$e\cdot r=0$或$r\cdot e=0$；换言之
$$
\exists r\in R\setminus\{0\},\quad e\cdot r=0\text{ or }r\cdot e=0
$$
**非零因子(non-zero-divisor)**：称$e\in R$为环$(R,+,\;\cdot\;)$的非零因子，如果成立如下命题之一。

1. $e$不为零因子。

2. 对于任意非零元$r\in R$，成立$e\cdot r\ne0$且$r\cdot e\ne0$​；换言之
   $$
   \forall r\in R\setminus\{0\},\quad e\cdot r\ne0\text{ and }r\cdot e\ne0
   $$

3. 对于任意$r\in R$，如果$e\cdot r=0$或$r\cdot e=0$，那么$r=0$​；换言之
   $$
   \forall r\in R,\quad e\cdot r=0\text{ or }r\cdot e=0\implies r=0
   $$

**无零因子环(without zero-divisor ring)**：称无非平凡零因子的非零环为无零因子环；换言之，称非零环$(R,+,\;\cdot\;)$​为无零因子环，如果
$$
\forall r,s\in R,\quad r\cdot s=0\implies r=0\text{ or }s=0
$$

**整环(integral domain)**：称无零因子非零交换环为整环；换言之，称非零环$(R,+,\;\cdot\;)$为整环，如果
$$
\begin{align}
&\forall r,s\in R,&& r\cdot s=s\cdot r\\
&\forall r,s\in R,&& r\cdot s=0\implies r=0\text{ or }s=0
\end{align}
$$

**命题1.2**；对于环$(R,+,\;\cdot\;)$，$e\in R$不为左零因子$\iff$左乘$e$函数$R\to R$为单射。

**命题1.3**：整环$(R,+,\;\cdot\;)$的非零元为非零因子。

**消去律(cancellation)**：环$(R,+,\;\cdot\;)$的非零因子$e\in R$满足对于任意$r,s\in R$，成立
$$
e\cdot r=e\cdot s\implies r=s\\
r\cdot e=s\cdot e\implies r=s
$$

---

**左单位(left-unit)/左可逆元(left-invertible element)**：称$e\in R$为环$(R,+,\;\cdot\;)$的左单位/左可逆元，如果存在$u\in R$，使得成立$e\cdot u=1$​；换言之
$$
\exists u\in R,\quad e\cdot u=1
$$

**右单位(right-unit)/右可逆元(right-invertible element)**：称$e\in R$为环$(R,+,\;\cdot\;)$的右单位/右可逆元，如果存在$v\in R$，使得成立$v\cdot e=1$；换言之
$$
\exists v\in R,\quad v\cdot e=1
$$

**单位(unit)/可逆元(invertible element)**：称$e\in R$为环$(R,+,\;\cdot\;)$的单位/可逆元，如果存在$e^{-1}\in R$，使得成立$e\cdot e^{-1}=e^{-1}\cdot e=1$​；换言之
$$
\exists e^{-1}\in R,\quad e\cdot e^{-1}=e^{-1}\cdot e=1
$$

**单位群(group of units)**：称环$(R,+,\;\cdot\;)$的单位/可逆元依乘法运算$\cdot:R\times R\to R$构成的群为单位群$(R^*,\;\cdot\;)$。

**单位的性质**：

- $e\in R$为环$(R,+,\;\cdot\;)$的左单位$\iff$左乘$e$函数$R\to R$为满射。
- 如果$e\in R$为环$(R,+,\;\cdot\;)$的左单位，那么右乘$e$函数$R\to R$为单射，即$e$不为右零因子。
- 单位的加法逆元为单位。
- 单位的乘法逆元为单位。

**除环(division ring)**：称非零元为单位的非零环为除环；换言之，称非零环$(R,+,\;\cdot\;)$为除环，如果
$$
\forall r\in R\setminus\{0\},\exists r^{-1}\in R,\quad r\cdot r^{-1}=r^{-1}\cdot r=1
$$

**域(field)**：称交换除环为域；换言之，称非零环$(R,+,\;\cdot\;)$​为域，如果
$$
\begin{align}
&\forall r,s\in R,&&r\cdot s=s\cdot r \\
&\forall r\in R\setminus\{0\},\exists r^{-1}\in R,&& r\cdot r^{-1}=r^{-1}\cdot r=1
\end{align}
$$

**命题1.4**：对于非零环$(R,+,\;\cdot\;)$，$R$为除环$\iff R$仅存在平凡左理想$\iff R$仅存在平凡右理想。

- 如果$R$为除环，任取$R$的非零左理想$I$，那么存在$r\in I\setminus\{0\}$，而$R$为除环，因此$1=r^{-1}\cdot r\in I$，那么$I=R$，进而$R$仅存在平凡左理想。同理对于$R$的右理想。
- 如果$R$不为除环，那么存在$r_0\in R\setminus\{0\}$，使得对于任意$r\in R$，成立$r\cdot r_0\ne1$且$r_0\cdot r\ne 1$。考虑子集$R\cdot r_0$，注意到$(R\cdot r_0,+)$为群$(R,+)$的子群，且对于任意$r\in R$，成立$r\cdot R\cdot r_0\sub R \cdot r_0$，因此$R\cdot r_0$为环$R$的左理想。由条件假设，$1\notin R\cdot r_0$，因此$\{0\}\subsetneq R\cdot r_0 \subsetneq R$，进而$R$存在非平凡左理想$R\cdot r_0$。同理对于$R$的右理想。

**命题1.5**：对于非零交换环$(R,+,\;\cdot\;)$，$R$为域$\iff R$仅存在平凡理想。

- 如果$R$为域，任取$R$的非零理想$I$，那么存在$r\in I\setminus\{0\}$，而$R$为域，因此$1=r^{-1}\cdot r\in I$，那么$I=R$，进而$R$仅存在平凡理想。
- 如果$R$不为域，那么存在$r_0\in R\setminus\{0\}$，使得对于任意$r\in R$，成立$r_0\cdot r\ne1$。考虑主理想$(r_0)=r_0\cdot R$，由条件假设，$1\notin I$，因此$\{0\}\subsetneq (r_0) \subsetneq R$，进而$R$存在非平凡理想$(r_0)$。

**命题1.6**：对于有限环$(R,+,\;\cdot\;)$，$R$为整环$\iff R$为域。

- 充分性显然。
- 对于必要性，如果$R$为有限整环，那么任取$r\in R\setminus\{0\}$，考虑$r\cdot R\sub R$。如果$|r\cdot R|<|R|$，那么存在互异元素$a,b\in R$，使得成立$a\cdot r=b\cdot r$。由消去律，$a=b$，矛盾！因此$|r\cdot R|=|R|$，那么$r\cdot R=R$。注意到$1\in R=r\cdot R$，那么存在$s\in R$，使得成立$r\cdot s=s\cdot r=1$，进而$R$为域。

**命题1.7**：$\Z/p\Z$为整环$\iff \Z/p\Z$为域$\iff p$为素数。

### 1.3	多项式环

**多项式环(polynomial ring)**：对于环$R$，定义多项式环
$$
R[x]=\left\{ \sum_{k=0}^{n}a_kx^k:a_k\in R,n\in\N \right\}
$$

**次数(degree)**：对于多项式环$R[x]$，定义多项式$\displaystyle f(x)=\sum_{k=0}^{n}a_kx^k\in R[x]$的次数为$\deg(f(x))=\max\{ k:a_k\ne 0,0\le k \le n \}$；特别的，定义$\deg(0)=-\infty$。

**幂级数环(ring of power series)**：对于环$R$​，定义幂级数环
$$
R[[x]]=\left\{ \sum_{n=0}^{\infty}a_nx^n:a_n\in R \right\}
$$

**多元多项式环(multivariate polynomial rings)**：对于环$R$，定义多元多项式环
$$
R[x_1,\cdots,x_n]=\left\{ \sum_{k=0}^{m}\sum_{r_1+\cdots+r_n=k}a_{r_1,\cdots,r_n}x_1^{r_1}\cdots x_n^{r_n}:a_{r_1,\cdots,r_n}\in R,r_s\in \N,m\in\N \right\}\\
$$

$$
\small{
R[x_1,x_2\cdots]=\left\{ \sum_{k=0}^{n}\sum_{r_{s_1}+\cdots+r_{s_m}=k}a^{(s_1,\cdots,r_m)}_{r_{s_1},\cdots,r_{s_m}}x_{s_1}^{r_{s_1}}\cdots x_{s_m}^{r_{s_m}}:a^{(s_1,\cdots,r_m)}_{r_{s_1},\cdots,r_{s_m}}\in R,r_{s_t}\in\N,m,n\in\N \right\}
}
$$

### 1.4	单环

**单环(monoid ring)**：对于幺半群$M$和环$R$，定义单环
$$
R[M]=\left\{ \sum_{m\in M}a_mm:a_m\in R \right\}
$$

**群环(group ring)**：对于群$G$和环$R$，定义群环
$$
R[G]=\left\{ \sum_{g\in G}a_gg:a_g\in R \right\}
$$

## 2	$\mathsf{Ring}$范畴

### 2.1	环同态映射

**环同态映射(ring homomorphism)**：对于环$(R,+,\;\cdot\;)$和$(S,+,\;\cdot\;)$，称映射$\varphi:R\to S$为环同态映射，如果成立
$$
\begin{align}
&\varphi(r+s)=\varphi(r)+\varphi(s)\\
&\varphi(r\cdot s)=\varphi(r)\cdot\varphi(s)\\
&\varphi(1_R)=1_S
\end{align}
$$

**$\mathsf{Ring}$范畴**：
$$
\begin{align}
&\mathrm{Obj}(\mathsf{Ring})=\{ \text{Ring } (R,+,\;\cdot\;) \}\\
&\mathrm{Hom}_\mathsf{Ring}((R,+,\;\cdot\;),(S,+,\;\cdot\;))=\{ \text{Ring Homomorphism }\varphi:R\to S\}
\end{align}
$$

**$\mathsf{Ring}$范畴的初始对象**：$\mathsf{Ring}$范畴的初始对象为整数环$\Z$。换言之，对于任意环$R\in \mathrm{Obj}(\mathsf{Ring})$，存在且存在唯一环同态映射$\varphi:\Z\to R,\quad n\mapsto n1_R$。

**$\mathsf{Ring}$范畴的终止对象**：$\mathsf{Ring}$范畴的终止对象为零环$\{0\}$。换言之，对于任意环$R\in \mathrm{Obj}(\mathsf{Ring})$，存在且存在唯一环同态映射$\varphi:R\to \{0\},\quad r\mapsto 0$。

### 2.2	多项式环的万有性质

**由集合诱导的环范畴**：对于$n$阶集合$S$，定义由$S$诱导的范畴$\mathscr{R}^{S}$如下。

1. 对象：$\mathrm{Obj}(\mathscr{R}^S)=(j,G)$，其中$R$为交换环，且$j:S\to G$为集合函数。

2. 态射：$\mathrm{Hom}_{\mathscr{R}^S}((j_1,R_1),(j_2,R_2))=\{ \varphi\in\mathrm{Hom}_{\mathsf{Ring}}(R_1,R_2): \varphi\circ j_1=j_2 \}$​，其交换图为
   $$
   \xymatrix{
     R_1 \ar[r]^{\varphi} & R_2\\
     S \ar[u]^{j_1} \ar[ur]_{j_2}
     }
   $$

**由集合诱导的环范畴的初始对象**：对于集合$S=\{s_1,\cdots,s_n\}$，由$S$诱导的环范畴$\mathscr{R}^{S}$的初始对象为$(i,\Z[x_1,\cdots,x_n])$，其中$i:S\to \Z[x_1,\cdots,x_n],\quad s_k\mapsto x_k$。

### 2.3	单态射与满态射

**命题2.1**：对于环同态映射$\varphi:R\to S$，如下命题等价。

- $\varphi:R\to S$为单态射。
- $\ker\varphi=\{0_R\}$
- $\varphi:R\to S$为单的函数映射。

**命题2.2**：如果环同态映射$\varphi:R\to S$为满的函数映射，那么$\varphi:R\to S$为满态射；反之不然，例如包含映射$i:\Z\hookrightarrow \Q$。

**子环(subring)**：称子集$S\sub R$为$(R,+,\;\cdot\;)$的子环，如果成立如下命题之一。

1. 包含映射$i:S\hookrightarrow R$为环同态映射。
2. $(S,+)$为$(R,+)$的子群，$S$对于$\;\cdot\;$运算封闭，且$1\in S$。

### 2.4	积

**积(product)**：定义环$(R,+,\;\cdot\;)$和$(S,+,\;\cdot\;)$的积为环$(R\times S,+,\;\cdot\;)$，其中
$$
(r_1,s_1)+(r_2,s_2)=(r_1+r_2,s_1+s_2),\qquad 
(r_1,s_1)\cdot (r_2,s_2)=(r_1\cdot r_2,s_1\cdot s_2)
$$

### 2.5	$\mathrm{End}_{\mathsf{Ab}}(G)$

**$\mathsf{Ab}$的自同构映射环**：Able群$G$的自同构映射$\mathrm{End}_{\mathsf{Ab}}(G)$依加法和复合运算构成环。

**$\mathrm{End}_{\mathsf{Ab}}(G)$的单位群**：$\mathrm{End}_{\mathsf{Ab}}(G)$的单位群为$\mathrm{Aut}_{\mathsf{Ab}}(G)$。

**命题2.3**：在环的意义上，$\mathrm{End}_{\mathsf{Ab}}(\Z)\cong\Z$，环同构映射为$\mathrm{End}_{\mathsf{Ab}}(\Z)\to\Z,\quad \varphi\mapsto \varphi(1)$。

**命题2.4**：对于环$(R,+,\;\cdot\;)$，如果将$R$看作Abel群$(R,+)$，那么环同态映射$\lambda:R\to \mathrm{End}_{\mathsf{Ab}}(R),\qquad \mathscr{r}\mapsto \lambda_{\mathscr{r}}$为单态射，其中环同态映射$\lambda_{\mathscr{r}}:R\to R,\quad r\mapsto \mathscr{r}\cdot r$。

## 3	理想与商环

### 3.1	理想

**左理想(left-ideal)**：对于环$(R,+,\;\cdot\;)$，称群$(R,+)$的子群$I\sub R$为$R$的左理想，如果对于任意$r\in R$，成立$r\cdot I\sub I$。

**右理想(right-ideal)**：对于环$(R,+,\;\cdot\;)$，称群$(R,+)$的子群$I\sub R$为$R$的右理想，如果对于任意$r\in R$，成立$I\cdot r\sub I$。

**理想(ideal)**：对于环$(R,+,\;\cdot\;)$，称群$(R,+)$的子群$I\sub R$为$R$的理想，如果对于任意$r\in R$，成立$r\cdot I\sub I$且$I\cdot r\sub I$。

**命题3.1**：对于环$(R,+,\;\cdot\;)$的理想$I$，成立
$$
1\in I\iff I=R
$$

**命题3.2**：对于环同态映射$\varphi:R\to S$，$\ker\varphi$为$R$的理想。

### 3.2	基本运算

**交(intersection)**：环$(R,+,\;\cdot\;)$的理想族$\{I_\lambda\}_{\lambda\in\Lambda}$的交$\displaystyle \bigcap_{\lambda\in\Lambda}I_\lambda$为$R$的理想。

**和(summation)**：环$(R,+,\;\cdot\;)$的理想族$\{I_\lambda\}_{\lambda\in\Lambda}$的和$\displaystyle \sum_{\lambda\in\Lambda}I_\lambda$为$R$的理想，其中
$$
\sum_{\lambda\in\Lambda}I_\lambda=\left\{ \sum_{\substack{r_\lambda \in I_\lambda\\\lambda\in\Lambda}}r_\lambda:r_\lambda\ne 0 \text{ for only finitely many elements } \lambda\in \Lambda  \right\}
$$

**积(product)**：环$(R,+,\;\cdot\;)$的理想$I$与$J$的积$IJ$为$R$的理想，其中
$$
IJ=\left\{ \sum_{\substack{r\in I\\s\in J}}r\cdot s:r\cdot s\ne 0 \text{ for only finitely many elements } r\in I\text{ and }s\in J \right\}
$$

**命题3.3**：对于整数环$\Z$，成立
$$
\begin{align}
&(m)(n)=(mn)\\
&(m)\cap (n)=(\mathrm{lcm}(m,n))\\
&(m)+(n)=(\mathrm{gcd}(m,n))
\end{align}
$$

**命题3.4**：对于环$(R,+,\;\cdot\;)$的理想$I,J,K$，成立
$$
IJ\sub I\cap J\sub I+J
$$

**命题3.5**：理想成立如下性质。

- 加法交换律：
  $$
  I+J=J+I
  $$
- 加法结合律：
  $$
  (I+J)+K=I+(J+K)
  $$
- 乘法结合律：
  $$
  (IJ)K=I(JK)
  $$
- 分配律：
  $$
  \begin{align}
  &I(J+K)=IJ+IK\\
  &(I+J)K=IK+JK
  \end{align}
  $$

**互素(coprime)**：称环$(R,+,\;\cdot\;)$的理想$I$与$J$互素，如果$I+J=R$。

**命题3.6**：对于环$(R,+,\;\cdot\;)$的理想$I,J,K$，如果$I$与$K$互素且$J$与$K$互素，那么$IJ$与$K$互素。

- 由于$I$与$K$互素且$J$与$K$互素，那么$I+K=J+K=R$，于是存在$i\in I,j\in J$以及$k_i,k_j\in K$，使得成立
  $$
  i+k_i=j+k_j=1
  $$
  因此
  $$
  ij+ik_j+jk_i+k_ik_j=1
  $$
  由于$K$为$R$的理想，因此$ik_j+jk_i+k_ik_j\in K$，而$ij\in IJ$，那么$1\in IJ+K$，进而$IJ+K=R$，即$IJ$与$K$互素。

**命题3.7**：对于交换环$(R,+,\;\cdot\;)$的理想$I$与$J$，如果$I$与$J$互素，那么$IJ=I\cap J$。

- 一方面，显然成立$IJ\sub I\cap J$。
- 另一方面，任取$r\in I\cap J$，由于$I$与$J$互素，那么$I+J=R$，因此存在$i\in I,j\in J$，使得成立$i+j=1$，进而$r=ir+jr\in IJ$，于是$I\cap J\sub IJ$。

### 3.3	商环

**模$I$商环(quotient ring modulo $I$)**：对于环$(R,+,\;\cdot\;)$的理想$I$，称环$(R/I,+,\cdot)$为$(R,+,\;\cdot\;)$的模$I$商环，其中$R/I=\{ r+I:r\in R \}$，$(r+I)+(s+I)=(r+s)+I$，$(r+I)\cdot (s+I)=(r\cdot s)+I$。

**特征(characteristic)**：环的特征的等价定义如下。

1. 由于$\mathsf{Ring}$范畴的初始对象为整数环$\Z$，那么对于环$R\in \mathrm{Obj}(\mathsf{Ring})$，存在且存在唯一环同态映射$\varphi:\Z\to R,\quad n\mapsto n1_R$。定义环$(R,+,\;\cdot\;)$的特征为$\text{char }R\in \N^*$，其中$\ker\varphi=(\text{char }R)\Z$。

2. 定义环$(R,+,\;\cdot\;)$的特征为
   $$
   \text{char }R=\begin{cases}
   \min\{ n\in\N^*:nr=0,\forall r\in R \},\quad & \exists n\in\N^*,\forall r\in R,nr=0\\
   0,\quad & \forall n\in\N^*,\exists r\in R,nr\ne0
   \end{cases}
   $$

**常见环的特征**：
$$
\text{char }\Z=0,\qquad 
\text{char }\Z/n\Z=n,\qquad 
\text{char }R=1\iff R=\{0\} 
$$
**定理3.8**：$I$是环$(R,+,\;\cdot\;)$的理想$\iff $存在环同态映射$\varphi:R\to S$，使得成立$I=\ker\varphi$。

**理想是群同态的核；群同态的核是理想**：对于环$(R,+,\;\cdot\;)$的理想$I$，成立$\ker\pi=I$，其中$\pi:R\twoheadrightarrow R/I$为满的环同态映射；对于环同态映射$\varphi:R\to I$，$\ker\varphi$为$R$的理想。因此：
$$
\text{Kernel}\iff\text{Ideal}
$$

**定理3.9**：如果$I$为环$(R,+,\;\cdot\;)$的理想，那么对于任意满足$I\sub\ker\varphi$的环同态映射$\varphi:R\to S$，存在且存在唯一环同态映射$\overline{\varphi}:R/I\to S$，使得成立$\varphi=\overline{\varphi}\circ\pi$，其中$\pi:R\twoheadrightarrow R/I,\quad r\mapsto r+I$，交换图为
$$
\xymatrix{
  R/I \ar^{\exists!\overline{\varphi}}[rr]& &\forall S\\
  & I \ar[ul]^{\pi} \ar[ur]_{\forall\varphi} &
  }
$$

**命题3.10**：

### 3.4	正则分解

**环同态映射的正则分解(canonical decomposition)**：环同态映射$\varphi:R\to S$的正则分解如下。
$$
\xymatrix@=13ex{
R \ar@/^2pc/[rrr]^{\varphi} \ar@{->>}[r]_{r\mapsto r+\ker\varphi} & R/\ker\varphi \ar@{->}[r]_{\overline{\varphi}:r+\ker\varphi\mapsto \varphi(g)}^{\sim} & \mathrm{im}\varphi \ar@{^{(}->}[r]_{\varphi(g)\mapsto \varphi(g)} & S
}
$$

**第一同构定理(first isomorphism theorem)**：对于环同态映射$\varphi:R\to S$，成立
$$
R/\ker\varphi \cong \text{im }\varphi
$$

**第二同构定理(second isomorphism theorem)**：如果$S$为环$(R,+,\;\cdot\;)$的子环，且$I$为$R$的理想，那么$I+S$为$R$的理想，且$I\cap S$为$S$的理想，同时
$$
\frac{S}{I\cap S}\cong\frac{I+S}{I}
$$

**第三同构定理(third isomorphism theorem)**：如果$I\sub S$均为环$(R,+,\;\cdot\;)$的理想，那么$S/I$为$R/I$的理想，并且
$$
\frac{R/I}{S/I}\cong \frac{R}{S}
$$

## 4	素理想与极大理想

### 4.1	生成理想

**生成理想(generated ideal)**：对于环$(R,+,\;\cdot\;)$，定义由子集$S\sub R$生成的理想为
$$
(S)=\bigcap_{\text{ideal }I\supset S}I
$$
**(交换环的)主理想(principal ideal)**：对于交换环$(R,+,\;\cdot\;)$，定义由$r\in R$生成的主理想为$(r)=r\cdot R$。

**生成理想(generated ideal)**：对于交换环$(R,+,\;\cdot\;)$，定义由子集$S\sub R$生成的理想为$\displaystyle( S )=\sum_{r\in S}(r)$。

**有限生成理想(finitely generated ideal)**：称交换环$(R,+,\;\cdot\;)$的理想$I$为有限生成的，如果存在$\{ r_k \}_{k=1}^n\sub R$，使得成立$I=(r_k)_{k=1}^n$。

**主理想环(principal ideal ring)**：称交换环$(R,+,\;\cdot\;)$为主理想环，如果其任意理想为主理想。

**主理想整环(principal ideal domain, PID)**：称整环$(R,+,\;\cdot\;)$为主理想整环，如果其任意理想为主理想。

**Noether环(Noetherian ring)**：称交换环$(R,+,\;\cdot\;)$为Noether环，如果其任意理想为有限生成理想。

**命题4.1**：$\Z$为PID。

**命题4.2**：对于域$\mathbb{F}$，多项式环$\mathbb{F}[x]$为PID。

### 4.2	多项式环的商

**命题4.3**：对于多项式环，如果$f(x),g(x)\in R[x]$，且$f(x)$为首一多项式，那么存在且存在唯一$q(x),r(x)\in R[x]$，使得成立$g(x)=q(x)f(x)+r(x)$，且$\deg(r(x))<\deg(f(x))$。

**命题4.4**：对于交换环$R$，如果$f(x)$为多项式环$R[x]$中的首一多项式，那么对于任意$g(x)\in R[x]$，存在且存在唯一$r(x)\in R[x]$，使得成立$\deg(r(x))<\deg(f(x))$，且$g(x)+(f(x))=r(x)+(f(x))$。

**命题4.5**：对于交换环$R$，以及$n$次首一多项式$f(x)\in R[x]$，成立$R[x]/(f(x))\cong R^{\oplus n}$。事实上，可定义环同态映射
$$
\begin{align}
\varphi:\begin{aligned}[t]
R[x]&\longrightarrow R^{\oplus n}\\
g(x)&\longmapsto (r_0,\cdots.r_{n-1}),\text{ where }g(x)=q(x)f(x)+(r_0+\cdots+r_{n-1}x^{n-1})
\end{aligned}
\end{align}
$$

### 4.3	素理想与极大理想

**素理想(prime ideal)**：称非零交换环$(R,+,\;\cdot\;)$的真理想$I\subsetneq R$为素理想，如果成立如下命题之一。

1. $R/I$为整环。
2. 对于任意$r,s\in R$，成立$r\cdot s\in I\implies r\in I\text{ or }s\in I$。

**极大理想(maximal ideal)**：称非零交换环$(R,+,\;\cdot\;)$的真理想$I\subsetneq R$为素理想，如果成立如下命题之一。

1. $R/I$为域。
2. 对于任意理想$J\sub R$，成立$I\sub J\implies I=J\text{ or }J=R$。

**谱(spectrum)**：称非零交换环$(R,+,\;\cdot\;)$的素理想族为$R$的谱，记作$\text{Spec }R$。

**命题4.6**：对于非零交换环$(R,+,\;\cdot\;)$的理想$I$，如果$R/I$为有限环，那么$I$为素理想$\iff I$为极大理想。

**命题4.7**：对于PID$R$，如果$I$为$R$的非零理想，那么$I$为素理想$\iff I$为极大理想。

## 5	环上的模

### 5.1	$R$-模的定义

**左$R$-模(left-$R$-module)**：定义环$(R,+,\;\cdot\;)$关于Abel群$(G,*)$的左$R$-模为$((G,*),\bullet)$，其中集合函数$\bullet:R\times G\to G$满足如下性质。
$$
\begin{align}
&1\bullet g=g\\
&(r\cdot s)\bullet g=r\bullet(s\bullet g)\\
&r\bullet(g*h)=r\bullet g+r\bullet h\\
&(r+s)\bullet g=r\bullet g+s\bullet g
\end{align}
$$

**命题5.1**：Abel群为$\Z$-模。

### 5.2	$R$-$\mathsf{Mod}$范畴

**$R$-$\mathsf{Mod}$范畴**：对于环$(R,+,\;\cdot\;)$，定义$R$-$\mathsf{Mod}$范畴。

1. 对象：$((G,*),\bullet)$，其中$(G,*)$为Abel群，集合函数$\bullet:R\times G\to G$为环$(R,+,\;\cdot\;)$关于Abel群$(G,*)$的$R$-模。
2. 态射：$((G,*),\circ)\to ((H,\star),\bullet)$的态射定义为集合函数$\varphi:G\to H$，满足$\varphi(g*h)=\varphi(g)\star \varphi(h)$，且$\varphi(r\circ g)=r\bullet\varphi(g)$。

### 5.3	子模与商

**$R$-子模($R$-submodule)**：称$((N,*),\bullet)$为环$(R,+,\;\cdot\;)$的$R$-模$((G,*),\bullet)$的$R$-子模，如果$N$为Abel群$G$的子群。

**商(quotient)**：定义环$(R,+,\;\cdot\;)$的$R$-模$((G,*),\bullet)$关于子模$((N,*),\bullet)$的商为$R$-模$((G/N),\bullet)$，其中$r\bullet (g*N)=(r\bullet g)*N$。

**定理5.1**：如果$((N,*),\bullet)$为$R$-模$((G,*),\bullet)$的$R$-子模，那么对于任意满足$N\sub\ker\varphi$的$R$-$\mathsf{Mod}$态射$\varphi:G\to H$，存在且存在唯一$R$-$\mathsf{Mod}$态射$\overline{\varphi}:G/N\to H$，使得成立$\varphi=\overline{\varphi}\circ\pi$，其中$\pi:G\twoheadrightarrow G/N,\quad g\mapsto g*N$，交换图为
$$
\xymatrix{
  G/N \ar^{\exists!\overline{\varphi}}[rr]& &\forall H\\
  & G \ar[ul]^{\pi} \ar[ur]_{\forall\varphi} &
  }
$$

**$R$-子模是$R$-$\mathsf{Mod}$态射的核；$R$-$\mathsf{Mod}$态射的核是$R$-子模**：对于$R$-模$G$的$R$-子模$N$，成立$\ker\pi=N$，其中$\pi:G\twoheadrightarrow G/N$为满的$R$-$\mathsf{Mod}$态射；对于$R$-$\mathsf{Mod}$态射$\varphi:G\to H$，$\ker\varphi$为$G$的子模。因此：
$$
\text{Kernel}\iff\text{Submodule}
$$

### 5.4	正则分解与同构定理

**$R$-$\mathsf{Mod}$态射的正则分解(canonical decomposition)**：$R$-$\mathsf{Mod}$态射$\varphi:G\to H$的正则分解如下。
$$
\xymatrix@=13ex{
G \ar@/^2pc/[rrr]^{\varphi} \ar@{->>}[r]_{g\mapsto g*\ker\varphi} & G/\ker\varphi \ar@{->}[r]_{\overline{\varphi}:g*\ker\varphi\mapsto \varphi(g)}^{\sim} & \mathrm{im}\varphi \ar@{^{(}->}[r]_{\varphi(g)\mapsto \varphi(g)} & H
}
$$

**第一同构定理(first isomorphism theorem)**：对于$R$-$\mathsf{Mod}$态射$\varphi:G\to H$，成立
$$
G/\ker\varphi \cong \text{im }\varphi
$$

**第二同构定理(second isomorphism theorem)**：如果$H,J$为$R$-模$(G,*)$的$R$-子模，那么$H*J$为$G$的$R$-子模，$H\cap J$为$G$的$R$-子模，且
$$
\frac{H}{H\cap J}\cong\frac{H*J}{J}
$$
**第三同构定理(third isomorphism theorem)**：如果$H,J$为$R$-模$(G,*)$的$R$-子模，且$J\sub H$，那么$H/J$为$G/J$的$R$-子模，且
$$
\frac{G/J}{H/J}\cong\frac{G}{H}
$$

## 6	$R$-$\mathsf{Mod}$范畴中的积与余积

### 6.1	积与余积

### 6.2	核与余核

### 6.3	自由模与自由代数

### 6.4	由子集生成的子模与Noether模

### 6.5	有限生成$\text{ v.s. }$finite type

## 7	Complexes and homology

### 7.1	 Complexes and exact sequences

### 7.2	Split exact sequences.

### 7.3	 Homology and the snake lemma

# 第四章	群：再次邂逅

## 1	共轭作用

### 1.1	集合上的群作用

**作用(action)**：定义群$(G,*)$关于集合$S$的作用为集合函数$\bullet:G\times S\to S$，其中
$$
\mathscr{e}\bullet s=s,\qquad
(\mathscr{g}*\mathscr{h})\bullet s=\mathscr{g}\bullet(\mathscr{h}\bullet s)
$$
**作用的本质**：群作用$\iff$群同态映射

- 如果$\bullet:G\times S\to S$为群$(G,*)$关于集合$S$的作用，那么可定义群同态映射$\Psi:G\to \mathrm{Aut}_{\mathsf{Set}}(S),\quad \mathscr{g}\mapsto \psi_{\mathscr{g}}$，其中集合函数$\psi_{\mathscr{g}}:S\to S,\quad s\mapsto \mathscr{g}\bullet s$。
- 如果$\Psi:G\to \mathrm{Aut}_{\mathsf{Set}}(S),\quad \mathscr{g}\mapsto \psi_{\mathscr{g}}$为群同态映射，那么可定义群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S,\quad (\mathscr{g},s)\mapsto \psi_{\mathscr{g}}(s)$。

**作用的核**：定义群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$的核$\ker\bullet$为群同态映射$\Psi:G\to \mathrm{Aut}_{\mathsf{Set}}(S),\quad \mathscr{g}\mapsto \psi_{\mathscr{g}}$的核$\ker\Psi$，其中集合函数$\psi_{\mathscr{g}}:S\to S,\quad s\mapsto \mathscr{g}\bullet s$。事实上
$$
\ker\bullet=\ker\Psi=\{ \mathscr{g}\in G:\psi_{\mathscr{g}}=\mathbb{1}_S \}=\{ \mathscr{g}\in G:\mathscr{g}\bullet s= s,\forall s\in S \}
$$

---

**轨道(orbit)**：对于群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$，定义$s\in S$的轨道为
$$
\mathrm{Orb}_G(s)=\{ \mathscr{g}\bullet s:\mathscr{g}\in G \}
$$
事实上，定义$S$上的等价关系$s\sim t\iff \exists \mathscr{g}\in G,\text{ s.t. }t=\mathscr{g}\bullet s$，那么$[s]_{\sim}=\mathrm{Orb}_G(s)$。

**稳定化子(stabilizer)**：对于群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$，定义$s\in S$的稳定化子为
$$
\mathrm{Stab}_G(s)=\{ \mathscr{g}\in G:\mathscr{g}\bullet s=s \}
$$

**不动点(fixed point)**：对于群$(G,*)$关于集合$S$的作用$\bullet:G\times S\to S$，定义$S$的不动点集为
$$
\mathrm{Fix}_G(S)=\{ s\in S:\mathscr{g}\bullet s=s,\forall \mathscr{g}\in G \}
$$

**$p$-群**：对于素数$p$，称有限群$(G,*)$为$p$-群，如果$|G|=p^n$，其中$n\in\N^*$。

**命题1.1**：
$$
s\in\mathrm{Fix}_G(S)
\iff \mathrm{Stab}_G(s)=G
\iff \mathrm{Orb}_G(s)=\{ s \}
$$

**命题1.2**：对于群$(G,*)$关于有限集合$S$的作用$\bullet:G\times S\to S$，定义$S$上的等价关系$s\sim t\iff \exists \mathscr{g}\in G,\text{ s.t. }t=\mathscr{g}\bullet s$，成立
$$
|S|=|\mathrm{Fix}_G(S)|+\sum_{s\in (S\setminus\mathrm{Fix}_G(S))/\sim}|\mathrm{Orb}_G(s)|
$$
**推论1.3**：对于$p$-群$(G,*)$关于有限集合$S$的作用$\bullet:G\times S\to S$，成立$|S|\equiv |\mathrm{Fix}_G(S)|\mod p$。

### 1.2	关于群的共轭作用

**(关于群的)共轭作用(conjugation action)**：群$(G,*)$关于集合$G$的共轭作用为$(\mathscr{g},g)\mapsto \mathscr{g}*g*\mathscr{g}^{-1}$。

**群作用的本质**：群$(G,*)$关于集合$G$的群共轭作用$(\mathscr{g},g)\mapsto \mathscr{g}*g*\mathscr{g}^{-1}$对应的群同态映射为$\Gamma:G\to \mathrm{Aut}_{\mathsf{Grp}}(G),\quad \mathscr{g}\mapsto \gamma_{\mathscr{g}}$，其中群内自同构映射$\gamma_{\mathscr{g}}:G\to G,\quad g\mapsto \mathscr{g}* g *\mathscr{g}^{-1}$为群内自同构映射。

**中心(center)**：定义$G$关于群$(G,*)$的群共轭作用的不动点集为$G$的中心，即$\mathrm{Cent}(G)=\{ g\in G:\mathscr{g}*g=g*\mathscr{g},\forall \mathscr{g}\in G \}$。

**共轭类(conjugacy class)**：定义$g\in G$关于群$(G,*)$的群共轭作用的轨道为$g$的共轭类，即$\mathrm{Conj}_G(g)=\{ \mathscr{g}*g*\mathscr{g}^{-1}:\mathscr{g}\in G \}$。

**中心化子(centralizer)**：定义$g\in G$关于群$(G,*)$的群共轭作用的稳定化子为$g$的中心化子，即$\mathrm{Cent}_G(g)=\{ \mathscr{g}\in G:\mathscr{g}*g=g*\mathscr{g} \}$。

**命题1.4**：对于群$(G,*)$的正规子群$N$，成立$\displaystyle N=\bigcup_{n\in N}\mathrm{Conj}_G(n)$。

**引理1.5**：
$$
\small{
G/\mathrm{Cent}(G)\text{ is cyclic}\iff
\mathrm{Inn}_{\mathsf{Grp}}(G)\text{ is cyclic}\iff
\mathrm{Inn}_{\mathsf{Grp}}(G)\text{ is trivial}\iff
G\text{ is abelian}
}
$$
**命题1.6**：
$$
G/\mathrm{Cent}(G)\cong \mathrm{Inn}_{\mathsf{Grp}}(G)
$$

- 事实上，考虑群同态映射$\Gamma:G\to \mathrm{Aut}_{\mathsf{Grp}}(G),\quad \mathscr{g}\mapsto \gamma_{\mathscr{g}}$，其中群内自同构映射$\gamma_{\mathscr{g}}:G\to G,\quad g\mapsto \mathscr{g}* g *\mathscr{g}^{-1}$。
- 注意到$\ker \Gamma=\mathrm{Cent}(G)\lhd G$，$\text{im }\Gamma=\mathrm{Inn}_{\mathsf{Grp}}(G)=\{ \gamma_\mathscr{g}:G\to G:\mathscr{g}\in G \}$。

**类公式(class formula)**：对于有限群$(G,*)$，定义$G$上的等价关系$g\sim h\iff \exists \mathscr{g}\in G,\text{ s.t. }\mathscr{g}*g=h*\mathscr{g}$​，成立
$$
|G|=|\mathrm{Cent}(G)|+\sum_{g\in (G\setminus\mathrm{Cent}(G))/\sim}[G:\mathrm{Cent}_G(g)]
$$
**推论1.7**：非平凡$p$-群存在非平凡中心。

### 1.3	关于幂集的共轭作用

**(关于幂集的)共轭作用(conjugation action)**：群$(G,*)$关于幂集$\mathscr{P}(G)$的共轭作用为$(\mathscr{g},S)\mapsto \mathscr{g}*S*\mathscr{g}^{-1}$。

**幂集作用的本质**：群$(G,*)$关于幂集$\mathscr{P}(G)$的共轭作用为$(\mathscr{g},S)\mapsto \mathscr{g}*S*\mathscr{g}^{-1}$对应的群同态映射为$\Psi:G\to \mathrm{Aut}_{\mathsf{Set}}(\mathscr{P}(G)),\quad \mathscr{g}\mapsto \psi_{\mathscr{g}}$，其中集合函数$\psi_{\mathscr{g}}:\mathscr{P}(G)\to \mathscr{P}(G),\quad S\mapsto \mathscr{g}* S *\mathscr{g}^{-1}$。

**中心(center)**：定义$S\sub G$关于群$(G,*)$的中心为$\mathrm{Cent}_G(S)=\{ \mathscr{g}\in G:\mathscr{g}*s=s*\mathscr{g},\forall s\in S \}$。

**共轭类(conjugacy class)**：定义$S\sub G$关于群$(G,*)$的幂集共轭作用的轨道为$S$的共轭类，即$\mathrm{Conj}_G(S)=\{ \mathscr{g}*S*\mathscr{g}^{-1}:\mathscr{g}\in G \}$。

**正规化子(normalizer)**：定义$S\sub G$关于群$(G,*)$的幂集共轭作用的稳定化子为$S$的正规化子，即$\mathrm{Norm}_G(S)=\{ \mathscr{g}\in G:\mathscr{g}*S=S*\mathscr{g} \}$。

**命题1.8**：如果$H\sub G$为群$(G,*)$的子群，那么$H\lhd\mathrm{Norm}_G(H)$。

**命题1.9**：$H\lhd G\iff \mathrm{Norm}_G(H)=G\iff \mathrm{Conj}_G(H)=\{ H \}$。

**命题1.10**：如果$H\sub G$为有限群$(G,*)$的子群，那么$H$的共轭子群的个数为$[G:\mathrm{Norm}_G(H)]$。

**推论1.11**：对于群$(G,*)$的子群$H\sub G$，如果$[G:H]$有限，那么$[G:H]=[G:\mathrm{Norm}_G(H)][\mathrm{Norm}_G(H):H]$。

## 2	Sylow定理

### 2.1	Cauchy定理

**Cauchy定理**：对于有限群$(G,*)$，如果$p$为$|G|$的素因子，那么$G$存在$p$阶元。

**证明**：记$S=\{ \{g_1,\cdots,g_p\}:g_1*\cdots*g_p=e \}$，那么$|S|=|G|^{p-1}$，因此$p$为$S$的素因子。考虑$\Z/p\Z$在集合$S$上的作用
$$
\begin{align}
\bullet:\begin{aligned}[t]
\Z/p\Z\times S&\longrightarrow S\\
([n]_p,\{g_1,\cdots,g_p\})&\longmapsto\{ g_{n+1},\cdots,g_{p},g_1,\cdots,g_n \}
\end{aligned}
\end{align}
$$
  那么
$$
|\mathrm{Fix}_{\Z/p\Z}(S)|\equiv |S|\equiv 0\mod p
$$
注意到$\mathrm{Fix}_{\Z/p\Z}(S)$中元素形式为$\{g,\cdots,g\}$，而$\{e,\cdots,e\}\in\mathrm{Fix}_{\Z/p\Z}(S)$，且$p\ge 2$，那么存在$g\ne 0$，使得成立$\{g,\cdots,g\}\in\mathrm{Fix}_{\Z/p\Z}(S)\sub S$，因此$g^n=e$。

**推论2.1**：对于有限群$(G,*)$，如果$p$为$|G|$的素因子，那么$G$的$p$阶元个数$n$成立$n\equiv 1\mod p$。

### 2.2	Sylow第一定理

**$p$-群**：对于素数$p$，称有限群$(G,*)$为$p$-群，如果$|G|=p^n$，其中$n\in\N^*$。

**$p$-子群**：对于素数$p$，称群$(G,*)$的子群$(P,*)$为$p$-子群，如果$|P|=p^n$，其中$n\in\N^*$。

**Sylow $p$-子群**：对于素数$p$，称有限群$(G,*)$的子群$(P,*)$为Sylow $p$-子群，如果$|G|=np^r$，且$|P|=p^r$，其中$\mathrm{gcd}(n,p)=1$，且$r\in\N^*$。

**Sylow第一定理	存在性定理**：对于有限群$(G,*)$，如果$p$为$|G|$的素因子，且$p^k\mid |G|$，那么群$(G,*)$存在$p^k$阶群。

**证明**：如果$k=0$，那么结论显然。下面假设$1\le k\le r$。

对$|G|$进行归纳。当$|G|=p$时，结论显然成立。

如果存在群$G$的真子群$H$，使得成立$\mathrm{gcd}([G:H],p)=1$，那么$p^k\mid |H|$，由归纳假设，群$H$存在$p^k$阶子群，此亦为$G$的$p^k$阶子群。

如果对于任意群$G$的真子群$H$，成立$p\mid [G:H]$。由类公式，$p\mid\mathrm{Cent}(G)$，那么由Cauchy定理，$\mathrm{Cent}(G)$存在$p$阶元$g$，因此$N=\lang g \rang$为$\mathrm{Cent}(G)$的子群，进而$N$为$\mathrm{Cent}(G)$的正规子群。

考虑商群$G/N$，注意到$p^{k-1}\mid |G/N|$，由归纳假设，$G/N$存在$p^{k-1}$阶子群$P/N$，其中$P$为$G$的子群。此时$|P|=|P/N||N|=p^k$。

**Sylow第一定理	存在性定理**：对于素数$p$，如果$(n,p)=1$，那么对于任意$0\le k\le r$，$np^r$阶群存在$p^k$阶子群。

**证明**：引理：对于素数$p$，如果$(n,p)=1$，那么对于任意$0\le k\le r$，成立
$$
p^{r-k}\mid C_{np^r}^{p^k},\qquad 
p^{r-k+1}\not\mid C_{np^r}^{p^k}
$$
对于$np^r$阶群$(G,*)$，定义集合$\Omega=\{ S\sub G:|S|=p^k \}=\{S_i\}_{i=1}^{C_{np^r}^{p^k}}$，定义群$G$在集合$\Omega$上的作用$\bullet:G\times \Omega\to \Omega,\quad (\mathscr{g},S)=\mathscr{g}*S$。由于$\displaystyle \Omega=\bigsqcup_{i=1}^{m}\mathrm{Orb}_G(S_i)$，因此$\displaystyle |\Omega|=\sum_{i=1}^{m}|\mathrm{Orb}_G(S_i)|$。因为$|\Omega|=C_{np^r}^{p^k}$，由引理$p^{r-k+1}\not\mid |\Omega|$，因此$\displaystyle p^{r-k+1}\not\mid\sum_{i=1}^{m}|\mathrm{Orb}_G(S_i)|$，进而存在$S_{i_0}\in \Omega$，使得成立$p^{r-k+1}\not\mid\mathrm{Orb}_G(S_{i_0})$。由于$|G|=|\mathrm{Orb}_G(S_{i_0})||\mathrm{Stab}_G(S_{i_0})|$，从而$|\mathrm{Stab}_G(S_{i_0})|=p^kq\ge p^k$。而对于任意$\mathscr{g}\in \mathrm{Stab}_G(S_{i_0})$，成立$\mathscr{g}*S_{i_0}=S_{i_0}$，于是对于任意$s\in S_{i_0}$，成立$g*s\in S_{i_0}$，从而$\mathrm{Stab}_G(S_{i_0})*s\sub S_{i_0}$，进而$|\mathrm{Stab}_G(S_{i_0})|=|\mathrm{Stab}_G(S_{i_0})*a|\le|S_{i_0}|=p^{k}$。综上所述，$|\mathrm{Stab}_G(S_{i_0})|=p^k$。

### 2.3	Sylow第二定理

**Sylow第二定理	包含定理**：对于有限群$(G,*)$，如果$P$为$G$的Sylow $p$-子群，$H$为$G$的$p$-子群，那么存在$g\in G$，使得成立$H\sub g*P*g^{-1}$。

**证明**：考虑群$(H,*)$在集合$(G/P)_L$上的作用$\bullet:H\times (G/P)_L\to (G/P)_L,\quad (\mathscr{h},g*P)=(\mathscr{h}*g)*P$。注意到
$$
|\mathrm{Fix}_H((G/P)_L)|\equiv |(G/P)_L|\equiv n\not\equiv 0\mod p
$$
从而存在$g*P\in \mathrm{Fix}_H((G/P)_L)$，使得对于任意$\mathscr{h}\in H$，成立
$$
(\mathscr{h}*g)*P=g*P\iff g^{-1}*\mathscr{h}*g\in P\iff \mathscr{h}\in g*P*g^{-1}
$$
进而$H\sub g*P*g^{-1}$。

**推论2.2**：对于素数$p$，如果$P$为有限群$(G,*)$的Sylow $p$-子群，那么$P\lhd G\iff G$存在且存在唯一Sylow $p$-子群$P$。

**引理2.3**：如果$P$为有限群$(G,*)$的$p$-子群，那么
$$
[\mathrm{Norm}_G(P):P]\equiv [G:P]\mod p
$$

**证明**：如果$P$为平凡子群，那么$\mathrm{Norm}_G(P)=G$，因此结论显然成立。

如果$P$为非平凡子群，考虑群$P$在集合$(G/P)_L$上的作用
$$
\begin{align}
\bullet:\begin{aligned}[t]
P\times (G/P)_L&\longrightarrow (G/P)_L\\
(\mathscr{p},g*P)&\longmapsto(\mathscr{p}*g)*P
\end{aligned}
\end{align}
$$
注意到其不动点集为
$$
\mathrm{Fix}_{P}((G/P)_L)=\{ g*P\in (G/P)_L:g*P=P*g \}
$$
而$P$的正规化子为
$$
\mathrm{Norm}_G(P)=\{ \mathscr{g}\in G: \mathscr{g}*P=P*\mathscr{g}\}
$$
因此$\mathrm{Fix}_{P}((G/P)_L)= \mathrm{Norm}_{G}(P)/P$。进而
$$
\small{
[G:P]\equiv|(G/P)_L|\equiv |\mathrm{Fix}_{P}((G/P)_L)|\equiv |\mathrm{Norm}_G(P)/P|=[\mathrm{Norm}_G(P):P]\mod p
}
$$
**命题2.4**：如果$H$为有限群$(G,*)$的非Sylow $p$-子群，那么存在$p$-子群$P$，使得成立$H\lhd P$，且$[P:H]=p$。

**证明**：因为$H$为非Sylow $p$-子群，那么$p\mid [G:H]$，因此$p\mid [\mathrm{Norm}_G(H):H]$。由于$H\lhd \mathrm{Norm}_G(H)$，因此考虑商群$\mathrm{Norm}_G(H)/H$。由于$p\mid |\mathrm{Norm}_G(H)/H|$，因此商群$\mathrm{Norm}_G(H)/H$存在$p$阶元$g*H$。记$\lang g*H\rang=P/H$，其中$P=\lang g,h:h\in H\rang$，那么$H< P$。而$P<\mathrm{Norm}_G(H)$，因此$H\lhd P$，且$[P:H]=|P/H|=|\lang g*H\rang|=p$。

### 2.4	Sylow第三定理

**Sylow第三定理	计数定理**：对于素数$p$，如果$(n,p)=1$，那么$np^r$阶群$(G,*)$的Sylow $p$-子群数$N_p$成立$N_p\equiv 1\mod p$，且$N_p\mid n$。

**证明**：由Sylow第二定理，$G$的Sylow $p$-子群$P$相互共轭，因此$N_p=[G:\mathrm{Norm}_G(P)]$。又因为$[G:P]=[G:\mathrm{Norm}_G(P)][\mathrm{Norm}_G(P):P]$，因此$N_p\mid n$。而由$[\mathrm{Norm}_G(P):P]\equiv [G:P]\mod p$，那么$N_p\equiv 1\mod p$。

**Sylow第三定理	计数定理**：对于素数$p$，如果$(n,p)=1$，那么$np^r$阶群的$p^r$阶子群数$N_p$成立$N_p\equiv 1\mod p$，且$N_p\mid n$。

**证明**：对于$np^r$阶群$(G,*)$，考虑任意Sylow $p$-子群$P$在集合$\Omega=\{ P<G:|P|=p^r \}=\{ P_k \}_{k=1}^{N_p}$上的共轭作用
$$
\begin{align}
\bullet:\begin{aligned}[t]
P\times \Omega&\longrightarrow\Omega\\
(\mathscr{p},Q)&\longmapsto \mathscr{p}*Q*\mathscr{p}^{-1}
\end{aligned}
\end{align}
$$
注意到
$$
\mathrm{Fix}_{P}(\Omega)=\{ Q\in\Omega:\mathscr{p}*Q=Q*\mathscr{p},\forall \mathscr{p}\in P \}
$$
而
$$
\mathrm{Norm}_G(Q)=\{ \mathscr{g}\in G:\mathscr{g}*Q=Q*\mathscr{g} \}
$$
因此$Q\in\mathrm{Fix}_P(\Omega)\iff P<\mathrm{Norm}_G(Q)$。任取$Q\in\mathrm{Fix}_P(\Omega)$，那么$P<\mathrm{Norm}_G(Q)$。因为$Q\lhd \mathrm{Norm}_G(Q)$，而$Q$为$\mathrm{Norm}_G(Q)$的Sylow $p$-子群，所以$\mathrm{Norm}_G(Q)$存在且存在唯一Sylow $p$-子群。又因为$P$为$\mathrm{Norm}_G(Q)$的Sylow $p$-子群，所以$Q=P$，从而$\mathrm{Fix}_P(\Omega)=\{P\}$，进而
$$
N_p\equiv |\Omega|\equiv |\mathrm{Fix}_P(\Omega)|\equiv 1\mod p
$$
由于$P$的共轭子群个数为$[G:\mathrm{Norm}_G(P)]$，因此$N_p=[G:\mathrm{Norm}_G(P)]$，从而$N_p\mid |G|=np^r$。而$N_p\equiv 1\mod p$，因此$(N_p,p)=1$，进而$N_p\mid n$。

### 2.5	应用

#### 2.5.1	非单群

**推论2.5**：对于互异素数$p,q$，如果$m,n\in\N^*$，且$(p^m-1)!<q^n$，那么$p^mq^n$阶群不为单群。

**证明**：对于$p^mq^n$阶群$|G|=p^mq^n$，由Sylow第三定理，$G$至多存在$p^k$个Sylow $p$-子群，其中$0\le k\le m$。

如果$G$仅存在$1$个Sylow $p$-子群，那么该子群为非平凡正规子群。

如果$G$存在$p^k$个Sylow $p$-子群，其中$1\le k\le m$，考虑群$(G,*)$在集合$\Omega=\{ P<G:|P|=p^r \}=\{ P_i \}_{i=1}^{p^i}$上的共轭作用
$$
\begin{align}
\bullet:\begin{aligned}[t]
G\times \Omega&\longrightarrow\Omega\\
(\mathscr{g},P)&\longmapsto \mathscr{g}*P*\mathscr{g}^{-1}
\end{aligned}
\end{align}
$$
其诱导群同态映射
$$
\begin{align}
\Psi:\begin{aligned}[t]
G&\longrightarrow \mathrm{Aut}_{\mathsf{Set}}(\Omega)\\
\mathscr{g}&\longmapsto \psi_\mathscr{g}
\end{aligned}
\end{align}
$$
其中集合函数
$$
\begin{align}
\psi_\mathscr{g}:\begin{aligned}[t]
\Omega&\longrightarrow \Omega\\
P&\longmapsto \mathscr{g}*P*\mathscr{g}^{-1}
\end{aligned}
\end{align}
$$
由群同构定理，$G/\ker\Psi\cong\text{im }\Psi$。由于$\mathrm{im }\Psi<\mathrm{Aut}_{\mathsf{Set}}(\Omega)$，因此$|\mathrm{im }\Psi|\le p^k!$。

如果$\ker\Psi=\{e\}$，那么$|\mathrm{im }\Psi|=|G|/|\ker\Psi|=|G|=p^mq^n>p^m !\ge p^k!$，矛盾！

如果$\ker\Psi=G$，那么对于任意$\mathscr{g}\in G$，成立$\psi_\mathscr{g}=\mathbb{1}$，因此对于任意$P\in\Omega$，成立$\mathscr{g}*P=P*\mathscr{g}$，进而$P\lhd G$。由Sylow第二定理，$G$存在且存在唯一Sylow $p$-子群，矛盾！

进而$\ker\Psi$为$G$的非平凡正规子群。

#### 2.5.2	$pq$阶群的结构

**推论2.6**：对于素数$p,q$，如果$p<q$且$p\not\mid q-1$，那么$pq$阶群$(G,*)$成立$G\cong \Z/pq\Z$。

**证明**：由Sylow第三定理，$G$存在且仅存在唯一$p$阶子群$H$，存在且存在唯一$q$阶子群$K$，因此$H,K\lhd G$。考虑群$(G,*)$在集合$H$上的共轭作用
$$
\begin{align}
\bullet:\begin{aligned}[t]
G\times H&\longrightarrow H\\
(\mathscr{g},h)&\longmapsto \mathscr{g}*h*\mathscr{g}^{-1}
\end{aligned}
\end{align}
$$
其诱导群同态
$$
\begin{align}
\Gamma:\begin{aligned}[t]
G&\longrightarrow \mathrm{Aut}_{\mathsf{Grp}}(H)\\
\mathscr{g}&\longmapsto \gamma_\mathscr{g}
\end{aligned}
\end{align}
$$
其中群自同构映射
$$
\begin{align}
\gamma_\mathscr{g}:\begin{aligned}[t]
H&\longrightarrow H\\
h&\longmapsto \mathscr{g}*h*\mathscr{g}^{-1}
\end{aligned}
\end{align}
$$
注意到
$$
\begin{align}
&\text{im }\Gamma<\mathrm{Inn}_{\mathsf{Grp}}(G)\cong G/\mathrm{Cent}(G)\\
&\text{im }\Gamma<\mathrm{Aut}_{\mathsf{Grp}}(H)\cong\mathrm{Aut}_{\mathsf{Grp}}(\Z/p\Z)\cong\Z/(p-1)\Z
\end{align}
$$
因此
$$
\small{
|\text{im }\Gamma|\mid pq,\quad |\text{im }\Gamma|\mid (p-1)
\implies
|\text{im }\Gamma|=1\iff \text{im }\Gamma=\{ \mathbb{1} \}\iff H<\mathrm{Cent}(G)
}
$$
因此其中群$G$的中心$\mathrm{Cent}(G)=\{ g\in G:\mathscr{g}*g=g*\mathscr{g},\forall \mathscr{g}\in G \}$。

注意到$p=|H|\mid|\mathrm{Cent}(G)|$，且$|\mathrm{Cent}(G)|\mid |G|=pq$，因此
$$
\small{
|\mathrm{Cent}(G)|=p\text{ or }pq\iff|G/\mathrm{Cent}(G)|=q\text{ or }1\iff G/\mathrm{Cent}(G)\cong \Z/q\Z\text{ or }\Z/\Z
}
$$
进而$G$为Abel群。

由Cauchy定理，$H=\lang h\rang$，$K=\lang k\rang$。注意到$h*k=k*h$，且$\mathrm{gcd}(|h|,|k|)=\mathrm{gcd}(p,q)=1$，因此$|h*k|=|h||k|=pq$，进而$G=\lang h*k\rang\cong\Z/pq\Z$。

**推论2.7**：如果$p$为奇素数，那么$2p$阶非交换群$(G,*)$成立$G\cong D_{2p}$。

**证明**：由Sylow第三定理，$G$存在且存在唯一$p$阶子群$\lang y \rang\lhd G$。又因为$G$为非交换群，那么$G$不存在$2p$阶元，因此对于任意$x\in G\setminus\lang y\rang$，成立$|x|=2$。

注意到$|x*y*x^{-1}|=p$，因此$x*y*x^{-1}\in\lang y\rang$，进而存在$0\le r<p$，使得成立$x*y*x^{-1}=y^r$。注意到
$$
\begin{align}
&(y^r)^r=(x*y*x^{-1})^r=x*y^r*x^{-1}=x^2*y*x^{-2}=y\\
\implies & y^{r^2-1}=e\\
\iff & p\mid (r^2-1)\\
\iff & p\mid (r+1)(r-1)\\
\implies & p\mid(r+1)\text{ or }p\mid(r-1)\\
\implies & r=1\text{ or }r=p-1\\
\end{align}
$$
如果$r=1$，那么$x*y=y*x$。注意到，此时成立$|x*y|=|x||y|=2p$，矛盾！因此$r=p-1$，进而
$$
\begin{align}
&x^2=y^p=e,\quad x*y=y^{p-1}*x\\
\iff & x^2=y^p=x*y*x*y=e\\
\implies & G\cong D_p
\end{align}
$$

## 3	合成列与可解性

### 3.1	 Jordan-Hölder定理

**子群列(subgroup series)**：定义群$(G,*)$的子群列为
$$
G=G_0\supsetneq G_1\supsetneq \cdots
$$

**次正规列(subnormal series)**：称群$(G,*)$的子群列
$$
G=G_0\supsetneq G_1\supsetneq \cdots
$$
为次正规的，如果对于任意$n\in\N$，成立$G_{n+1}\lhd G_n$，记作
$$
G=G_0\underset{\neq}{\rhd} G_1\underset{\neq}{\rhd}\cdots
$$

**等价(equivalent)**：称群$(G,*)$的次正规列
$$
\begin{align}
&G=G_0\underset{\neq}{\rhd}G_1\underset{\neq}{\rhd}\cdots\underset{\neq}{\rhd}G_n=\{e\}\\
&G=G_0'\underset{\neq}{\rhd}G_1'\underset{\neq}{\rhd}\cdots\underset{\neq}{\rhd}G_m'=\{e\}
\end{align}
$$
为等价的，如果$m=n$，且存在双射$\varphi:\Z\to\Z$，使得对于任意$1\le k\le n$，成立
$$
\frac{G_{k-1}}{G_{k}}\cong\frac{G'_{\varphi(k-1)}}{G_{\varphi(k)}'}
$$

**合成列(composition series)**：称群$(G,*)$的次正规列
$$
G=G_0\underset{\neq}{\rhd}G_1\underset{\neq}{\rhd}\cdots\underset{\neq}{\rhd}G_n=\{e\}
$$
为合成列，如果对于任意$1\le k\le n$，$G_{k-1}/G_{k}$为单群。

**合成因子(composition factor)**：对于群$(G,*)$的合成列
$$
G=G_0\underset{\neq}{\rhd}G_1\underset{\neq}{\rhd}\cdots\underset{\neq}{\rhd}G_n=\{e\}
$$
称$\{ G_{k-1}/G_k \}_{k=1}^{n}$为$G$的合成因子。

**合成长度(composition length)**：定义群$(G,*)$的合成列长度为合成长度$\ell(G)$。

**Jordan-Hölder定理**：群的合成列等价；换言之如果
$$
\begin{align}
&G=G_0\underset{\neq}{\rhd} G_1 \underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  G_n=\{e\}\\
&G=G_0'\underset{\neq}{\rhd} G_1' \underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  G_m'=\{e\}
\end{align}
$$
为群$(G,*)$的合成列，那么$m=n$，且且存在双射$\varphi:\Z\to\Z$，使得对于任意$1\le k\le n$，成立
$$
\frac{G_{k-1}}{G_{k}}\cong\frac{G'_{\varphi(k-1)}}{G_{\varphi(k)}'}
$$

**证明**：（优雅证明）由\ref{thm:Schreier定理}，命题显然！

（朴素证明）令
$$
G=G_0\underset{\neq}{\rhd} G_1 \underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  G_n=\{e\}
$$
为群$(G,*)$的合成列，对$n$进行归纳。

如果$n=0$，那么$G=\{e\}$，命题显然成立。

对于$n\in\N^*$，令
$$
G=G_0'\underset{\neq}{\rhd} G_1' \underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  G_m'=\{e\}
$$
为群$(G,*)$的另一合成列，如果$G_1=G_1'$，那么由归纳假设，$G_1$存在$n-1$的合成列，命题得证。

如果$G_1\ne G_1'$，由命题\ref{pro:包含正规子群的正规子群族的结构}，$G_1*G_1'\lhd G$。由命题\ref{pro:商的正规子群}，$G_1*G_1'/G_1\lhd G/G_1$。而$G/G_1$为单群，那么由命题\ref{pro:商的正规子群}，$G_1*G_1'/G_1=\{e\}/G_1$或$G_1*G_1'/G_1=G/G_1$。若$G_1*G_1'/G_1=\{e\}/G_1$，则对于任意$g\in G_1,g'\in G_1'$，由命题\ref{pro:商的正规子群}，成立
$$
(g*g')*G_1=G_1\iff
g*g'\in G_1\implies
g'\in G_1\implies
G_1'\subsetneq G_1\implies
\{e\}/G_1'\underset{\neq}{\rhd}G_1/G_1'\underset{\neq}{\rhd}G/G_1'
$$
矛盾！因此$G_1*G_1'/G_1=G/G_1$，进而对于任意$g\in G$，存在$g_1\in G_1,g_1'\in G_1'$，使得成立
$$
\small{
(g_1*g_1')*G_1=g*G_1\iff
g*(g_1*g_1')^{-1}\in G_1\implies
g\in G_1*(g_1*g_1')\sub G_1*G_1'\implies
G\sub G_1*G_1'
}
$$
因此$G_1*G_1'=G$。

令$K=G_1\cap G_1'$，其合成列为
$$
K\underset{\neq}{\rhd} K_1\underset{\neq}{\rhd} K_2\underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  K_r=\{e\}
$$
由群第二同构定理\ref{thm:群第二同构定理}，成立
$$
\frac{G_1}{K}=\frac{G_1}{G_1\cap G_1'}\cong
\frac{G_1*G_1'}{G_1'}=\frac{G}{G_1'},\qquad 
\frac{G_1'}{K}=\frac{G_1'}{G_1'\cap G_1}\cong
\frac{G_1'*G_1}{G_1}=\frac{G}{G_1}
$$
那么$G_1/K$与$G_1'/K$为单群，进而群$G$成立两个新的合成列
$$
\begin{align}
&G\underset{\neq}{\rhd} G_1\underset{\neq}{\rhd} K\underset{\neq}{\rhd} K_1\underset{\neq}{\rhd} K_2\underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  K_r=\{e\}\\
&G\underset{\neq}{\rhd} G_1'\underset{\neq}{\rhd} K\underset{\neq}{\rhd} K_1\underset{\neq}{\rhd} K_2\underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  K_r=\{e\}
\end{align}
$$
由于
$$
G_1\underset{\neq}{\rhd} K\underset{\neq}{\rhd} K_1\underset{\neq}{\rhd} K_2\underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  K_r=\{e\}
$$
为$G_1$的合成列，那么由归纳假设，$G_1$的合成列为
$$
G_1 \underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  G_n=\{e\}
$$
因此$r=n-2$。同样的，由于
$$
G_1'\underset{\neq}{\rhd} K\underset{\neq}{\rhd} K_1\underset{\neq}{\rhd} K_2\underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  K_{n-2}=\{e\}
$$
为$G_1'$的合成列，且$G_1'$的合成列长度为$n-1$，那么由归纳假设，$G_1'$的合成列
$$
G_1' \underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  G_m'=\{e\}
$$
的长度为$n-1$，因此$m=n$。

### 3.2	Schreier定理

**命题3.1**：对于群$(G,*)$，如果$N\lhd  G$，那么
$$
G\text{存在合成列}\iff N\text{与}G/N\text{存在合成列}
$$
此时
$$
\ell(G)=\ell(N)+\ell(G/N)
$$
且
$$
\{ G\text{的合成因子} \}=\{ N\text{的合成因子} \}\cup \{ G/N\text{的合成因子} \}
$$

**精细(refinement)**：称群$(G,*)$的子群列$G=G_0'\supsetneq G_1'\supsetneq \cdots$为子群列$G=G_0\supsetneq G_1\supsetneq \cdots$的精细，如果$\{ G_n \}\sub \{G_n'\}$。

**Zassenhaus-蝴蝶引理**：对于群$(G,*)$的子群$A,A',B,B'$，如果$A\lhd A'$且$B\lhd B'$，那么
$$
\begin{align}
&A*(A'\cap B)\lhd A*(A'\cap B'),\qquad
B*(B'\cap A)\lhd B*(B'\cap A')\\
&\frac{A*(A'\cap B')}{A*(A'\cap B)}\cong
\frac{A'\cap B'}{(A'\cap B)*(A\cap B')}\cong
\frac{(B'\cap A')*B}{(B'\cap A)*B}
\end{align}
$$

**Schreier精细定理**：群的以$\{e\}$结束的次正规列存在等价精细次正规列。

**证明**：（优雅证明）将次正规列精细为合成列，那么由\ref{thm:Jordan-Hölder定理}，命题得证！

（朴素证明）对于群$(G,*)$的次正规列
$$
\begin{align}
&G=G_0\underset{\neq}{\rhd} G_1 \underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  G_n=\{e\}\\
&G=G_0'\underset{\neq}{\rhd} G_1' \underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}  G_m'=\{e\}
\end{align}
$$
定义
$$
\begin{align}
&G_{i,j}=G_{i+1}*(G_i\cap G'_j),\qquad 0\le i\le n-1,0\le j\le m\\ 
&G_{i,j}'=G_{j+1}'*(G_i\cap G'_j),\qquad 0\le i\le n,0\le j\le m-1
\end{align}
$$
注意到
$$
G_{i,m}=G_{i+1,0}=G_{i+1},\qquad 
G_{n,j}=G_{0,j+1}=G'_{j+1}
$$
由\ref{lem:Zassenhaus-蝴蝶引理}，成立
$$
\frac{G_{i,j}}{G_{i,j+1}}\cong\frac{G'_{i,j}}{G'_{i+1,j}}
$$
即
$$
\begin{align}
&G=G_{0,0}\underset{\neq}{\rhd} G_{0,1}\underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd}G_{0,m}=G_{1,0}\underset{\neq}{\rhd}\cdots \underset{\neq}{\rhd} G_{n-1,0}\underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd} G_{n-1,m}=\{e\}\\
&G=G'_{0,0}\underset{\neq}{\rhd} G'_{1,0}\underset{\neq}{\rhd} \cdots \underset{\neq}{\rhd} G'_{n,0}=G'_{0,1}\underset{\neq}{\rhd}\cdots \underset{\neq}{\rhd} G'_{0,m-1}\underset{\neq}{\rhd}\cdots \underset{\neq}{\rhd} G'_{n,m-1}=\{e\}
\end{align}
$$
为原次正规列的等价加细。

### 3.3	换位子群、导列与可解性

**单群(simple group)**：称仅存在平凡正规子群的群为单群。

**换位子(commutator)**：对于群$(G,*)$，定义元素$g,h\in G$的换位子为$[g,h]=g*h*g^{-1}*h^{-1}$。

**换位子群(commutator subgroup)**：定义群$(G,*)$的换位子群为
$$
[G,G]=\lang g*h*g^{-1}*h^{-1}:g,h\in G \rang
$$

**命题3.1**：对于群$(G,*)$的正规子群$N$，成立
$$
G/N\text{为单群}\iff \text{若}N\sub M\lhd G\text{则}M=N\text{或}M=G
$$

**证明**：充分性显然！对于必要性，如果$G/N$为单群，那么$G/N$的正规子群仅为$N/N$与$G/N$，而由命题\ref{pro:商群的正规子群}，必要性得证！

**引理3.1**：对于群$(G,*)$，成立
$$
G\text{为交换群}\iff [G,G]=\{e\}
$$

**证明**：如果$G$为Abel群，那么对于任意$g,h\in G$，成立$[g,h]=e$，因此$[G,G]=\{e\}$。

如果$G$不为Abel群，那么存在$g,h\in G$，成立$[g,h]\ne e$，因此$[g,h]\in [G,G]\ne \{e\}$。

**引理3.2**：对于群同态映射$\varphi:G\to H$，成立
$$
\varphi([g,h])=[\varphi(g),\varphi(h)],\qquad 
\varphi([G,G])\sub [\text{im }\varphi,\text{im}\varphi]
$$

**证明**：
$$
\varphi([g,h])=\varphi(g*h*g^{-1}*h^{-1})=\varphi(g)*\varphi(h)*\varphi(g)^{-1}*\varphi(h)^-1=[\varphi(g),\varphi(h)]\in  [\text{im }\varphi,\text{im}\varphi]
$$

**命题3.3**：对于群$(G,*)$，$[G,G]\lhd G$，且$G/[G,G]$为交换群。

**证明**：任取$g\in G,h\in[G,G]$，注意到$g*h*g^{-1}*h^{-1}\in [G,G]$，因此$g*h*g^{-1}\in [G,G]*h=[G,G]$，进而$[G,G]$为$G$的正规子群。

任取$g,h\in G$，那么
$$
\begin{align}
&(g*[G,G])\bullet(h*[G,G])
=(g*h)*[G,G]
=(g*h)*((h^{-1}*g^{-1}*h*g)*[G,G])\\
=&(g*h*h^{-1}*g^{-1}*h*g)*[G,G]
=(h*g)*[G,G]
=(h*[G,G])\bullet(g*[G,G])
\end{align}
$$
因此$G/[G,G]$为Abel群。

**命题7.15**：对于群$(G,*)$，成立
$$
G\text{为Abel单群}\iff G\text{为素数阶群}
$$

**证明**：充分性显然！对于必要性，如果$G$为Abel单群，而$G$的子群为正规子群，那么$G$仅存在平凡子群，由Lagrange定理\ref{thm:Lagrange定理}，$G$为素数阶群。

**命题7.20**：非Able的可解群不为单群。

**证明**：如果群$(G,*)$为非Abel的可解群，那么由引理3.1，$G'\ne\{e\}$。而$G$可解，因此$G'\ne G$。由命题3.3，$G'$为$G$的非平凡正规子群，进而$G$不为单群。

**命题3.4**：对于群同态映射$\varphi:G\to H$，成立
$$
\text{im }\varphi \text{为Abel群}\iff [G,G]\sub\ker\varphi
$$

**证明**：
$$
\begin{align}
&\text{im }\varphi\text{为Abel群}\\
\iff & \forall g,h\in G,\varphi(g)*\varphi(h)=\varphi(h)*\varphi(g)\\
\iff & \forall g,h\in G,\varphi(g*h*g^{-1}*h^{-1})=e\\
\iff & \forall g,h\in G,g*h*g^{-1}*h^{-1}\in \ker\varphi\\
\iff & [G,G]\sub\ker\varphi
\end{align}
$$


**命题7.19**：如果$N$为群$(G,*)$的正规子群，那么
$$
\frac{G}{N} \text{为Abel群}\iff [G,G]\sub N
$$

**证明**：
$$
\begin{align}
& G/N\text{为Abel群}\\
\iff & \forall g,h\in G,(g*N)\bullet (h*N)=(h*N)\bullet (g*N)\\
\iff & \forall g,h\in G,(g*h*g^{-1}*h^{-1})*N=N\\
\iff & \forall g,h\in G,g*h*g^{-1}*h^{-1}\in N\\
\iff & [G,G]\sub\ker\varphi
\end{align}
$$

**命题3.5**：定义群$G$的换位群范畴为
- 对象：$\{\alpha:G\to A\mid A\text{为交换群}\}$
- 态射：
  $$
  \xymatrix{
  & G \ar[dl]_{\alpha} \ar[dr]^{\beta}&\\
  A \ar[rr]_{\varphi} & &B
  }
  $$
那么该范畴的初始对象为自然群同态映射$\pi:G\to G/[G,G]$；换言之，对于任意交换群$H$与群同态映射$\varphi:G\to H$，存在且存在唯一态射
$$
\xymatrix{
& G \ar[dl]_{\pi} \ar[dr]^{\varphi}&\\
G/[G,G] \ar[rr]_{\overline{\varphi}} & &H}
$$

**证明**：为使交换图成立，可知
$$
\begin{align}
\overline{\varphi}:\begin{aligned}[t]
G/[G,G]&\longrightarrow H\\
g*[G,G]&\longmapsto \varphi(g)
\end{aligned}
\end{align}
$$
只需证明定义良好性，如果$g*[G,G]=h*[G,G]$，那么$g*h^{-1}\in [G,G]$，由命题3.4，$g*h^{-1}\in\ker\varphi$，因此$\varphi(g)=\varphi(h)$。

**导群列(derived groups series)**：对于群$(G,*)$，定义$G^{(1)}=[G,G]$，$G^{(n+1)}=[G^{(n)},G^{(n)}]$，可得次正规列
$$
G\lhd G^{(1)}\lhd G^{(2)}\lhd \cdots
$$

**可解群(solvable group)**：称群$(G,*)$为可解群，如果存在$n\in\N^*$，使得成立$G^{(n)}=\{e\}$。

**Abel正规列(Abelian normal series )**：称群$(G,*)$的次正规列
$$
G=G_0\underset{\neq}{\rhd}G_1\underset{\neq}{\rhd}G_2\underset{\neq}{\rhd}\cdots
$$
为Abel正规列，如果对于任意$n\in\N$，商群$G_{n}/G_{n+1}$为Abel群。

**引理**：Abel正规列的精细为Abel正规列。

**证明**：如果$N\lhd G$且$G/N$为Abel群，那么由命题7.19，$[G,G]\sub N$。将$N\lhd G$精细为$N\lhd H\lhd G$，那么由$[G,G]\sub N\sub H$，结合命题7.19，$G/H$为Abel群。而由命题\ref{pro:商群的正规子群}，$H/N\lhd G/N$，因此$H/N$为Abel群。综上，Abel正规列$N\lhd G$的精细$N\lhd H\lhd G$为Abel正规列。

**循环正规列(cyclic normal series )**：称群$(G,*)$的次正规列
$$
G=G_0\underset{\neq}{\rhd}G_1\underset{\neq}{\rhd}G_2\underset{\neq}{\rhd}\cdots
$$
为循环正规列，如果对于任意$n\in\N$，商群$G_{n}/G_{n+1}$为循环群。

**命题3.6**：对于有限群$(G,*)$，如下命题等价。
1. $G$的合成因子为循环群。
2. $G$存在以$\{e\}$结束的循环正规列。
3. $G$存在以$\{e\}$结束的Abel正规列。
4. $G$为可解群。

**证明**：$1\implies 2\implies 3$显然！由命题3.3，$4\implies 3$显然！

对于$3\implies 1$，如果$G$存在以$\{e\}$结束的Abel正规列，那么将其精细为合成列，由引理，该合成列为Abel正规列。而由命题7.15，$G$的合成因子为素数阶群，由Lagrange定理\ref{thm:Lagrange定理}，$G$的合成因子为循环群。

对于$3\implies 4$，如果$G$存在以$\{e\}$结束的Abel正规列
$$
G=G_0\underset{\neq}{\rhd}G_1\underset{\neq}{\rhd}\cdots\underset{\neq}{\rhd}G_n=\{e\}
$$
由$G_{k}/G_{k+1}$为Abel群，结合命题7.19，那么$[G_{k},G_{k}]\sub G_{k+1}$。由归纳法，结合
$$
G^{(k+1)}=[G^{(k)},G^{(k)}]\sub [G_k,G_k]\sub G_{k+1}
$$
那么$G^{(k)}\sub G_{k}$。特别的，$G^{(n)}\sub G_n=\{e\}$，因此$G$为可解群。

**推论**：$p$-群可解。

**证明**：$p$-群的合成因子为$p$阶群，由Lagrange定理\ref{thm:Lagrange定理}，因而为循环群。

**Feit-Thompson定理**：奇数阶群可解。

## 4	对称群

### 4.1	轮换符号

**轮换(cycle)**：定义$n$元置换$\sigma\in S_n$关于元素$a_1,\cdots,a_r$的$r$-轮换为
$$  
(a_1\cdots a_r)=a_1\mapsto a_2 \mapsto\cdots\mapsto a_r \mapsto a_1  
$$

**轮换的本质**：定义$n$元置换$\sigma\in S_n$，考虑生成子群$\lang\sigma\rang$在集合$\{1,\cdots, n\}$上的作用
$$
\begin{align}
\bullet:\begin{aligned}[t]
\lang \sigma \rang\times \{1,\cdots,n\}&\longrightarrow \{1,\cdots,n\}\\
(\sigma^m,k)&\longmapsto \sigma^m(k)
\end{aligned}
\end{align}
$$
那么$k$的轨道为
$$
\mathrm{Orb}_{\lang \sigma \rang}(k)=\{ \sigma^m(k):m\in\N \}
$$
此即为$k$所在轮换。

**引理4.0**：轮换的逆为
$$
(a_1a_2\cdots a_r)^{-1}=(a_1a_r\cdots a_2)
$$

**引理4.1**：轮换的循环不变性。
$$
(a_1a_2\cdots a_r)=(a_2\cdots a_ra_1)
$$

**引理4.2**：不交轮换可交换。
$$
(a_1a_2\cdots a_r)(b_1b_2\cdots b_s)=(b_1b_2\cdots b_s)(a_1a_2\cdots a_r)
$$

**引理4.3**：非平凡置换在置换顺序下存在且存在唯一不交轮换复合。

### 4.2	$S_n$中的类型与共轭类

**划分(partition)**：定义$n\in\N^*$的划分为
$$
\left\{ [\lambda_1,\cdots,\lambda_r]:\lambda_{k}\ge\lambda_{k+1},\sum_{k=1}^{r}\lambda_k=n,r\in\N^* \right\}
$$

**类型(type)**：定义$n$元置换$\sigma\in S_n$类型为由其不交轮换大小构成的$n$的划分。

**引理4.5**：对于$n$元置换$\tau\in S_n$，以及$r$-轮换$(a_1\cdots a_r)$，成立
$$
\tau(a_1\cdots a_r)\tau^{-1}=(\tau(a_1)\cdots \tau(a_r))
$$

**证明**：首先，对于任意$1\le k\le r$，由于
$$
(\tau(a_1\cdots a_r)\tau^{-1})(\tau(a_k))
=\tau(a_1\cdots a_r)\tau^{-1}\tau(a_k)
=\tau(a_{k+1})
$$
其中$a_{r+1}=a_1$，因此$(\tau(a_1)\cdots \tau(a_r))$构成轮换。

其次，对于任意$a\in\{ 1,\cdots,n \}\setminus\{ a_1,\cdots,a_r \}$，成立
$$
(\tau(a_1\cdots a_r)\tau^{-1})(a)=a
$$

综上所述
$$
\tau(a_1\cdots a_r)\tau^{-1}=(\tau(a_1)\cdots \tau(a_r))
$$

**命题4.6**：对于$n$元置换$\varphi,\psi\in S_n$，成立
$$
\varphi\text{与}\psi\text{共轭}\iff 
\varphi\text{与}\psi\text{存在相同类型}
$$

**证明**：必要性由引理4.5推出。对于充分性，如果$\varphi$与$\psi$存在相同类型，那么记
$$
\begin{align}
&\varphi=(a_1^{(1)}\cdots a_{r_1}^{(1)})\cdots (a_1^{(s)}\cdots a_{r_s}^{(s)})\\
&\psi=(b_1^{(1)}\cdots b_{r_1}^{(1)})\cdots (b_1^{(s)}\cdots b_{r_s}^{(s)})
\end{align}
$$
构造$\tau\in S_n$如下
$$
\begin{align}
\tau:\begin{aligned}[t]
S_n&\longrightarrow S_n\\
a_{i}^{(j)}&\longmapsto b_{i}^{(j)}
\end{aligned}
\end{align}
$$
那么由引理4.5，$\tau\varphi\tau^{-1}=\psi$。

**推论4.8**：$n$元对称群$S_n$的共轭类数等于$n$的划分数。

### 4.3	交错群

**符号(sign)**：对于轮换积
$$
\Delta_n=\prod_{1\le i<j\le n}(x_i-x_j)\in \Z[x_1,\cdots,x_n]
$$
考虑作用
$$
\begin{align}
\bullet:\begin{aligned}[t]
S_n\times \{\pm\Delta_n\}&\longrightarrow \{\pm\Delta_n\}\\
\left(\sigma,\prod_{1\le i<j\le n}(x_i-x_j)\right)&\longmapsto\prod_{1\le i<j\le n}(x_{\sigma(i)}-x_{\sigma(j)})\\
\left(\sigma,-\prod_{1\le i<j\le n}(x_i-x_j)\right)&\longmapsto-\prod_{1\le i<j\le n}(x_{\sigma(i)}-x_{\sigma(j)})
\end{aligned}
\end{align}
$$
那么$\sigma\bullet \Delta_n=\pm\Delta_n$，定义置换$\sigma$的符号为$\sigma\bullet \Delta_n=(-1)^\sigma\Delta_n$。

**偶置换(even permutation)**：称置换$\sigma$为偶置换，如果$(-1)^\sigma=1$。

**奇置换(odd permutation)**：称置换$\sigma$为奇置换，如果$(-1)^\sigma=-1$。

**置换复合的符号**：
$$
(-1)^{\sigma\tau}=(-1)^{\sigma}(-1)^{\tau}
$$

**置换符号的群同态性**：
$$
\begin{align}
\epsilon:\begin{aligned}[t]
S_n&\longrightarrow \{1,-1\}\\
\sigma&\longmapsto (-1)^\sigma
\end{aligned}
\end{align}
$$

**对换(transposition)**：称$2$-轮换为对换。

**引理4.11**：对换生成对称群。

**证明**：
$$
(a_1\cdots a_r)=(a_1a_2)(a_1a_3)\cdots(a_1a_r) 
$$

**引理4.12**：将置换$\sigma$表示为对换积$\sigma=\tau_1\cdots \tau_r$，那么
$$
\begin{align}
\sigma\text{为偶置换}&\iff 2\mid r\\
\sigma\text{为奇置换}&\iff 2\nmid r
\end{align}
$$

**推论4.13**：对于$\sigma=(a_1\cdots a_r)$，成立
$$
\begin{align}
\sigma\text{为偶置换}&\iff 2\nmid r\\
\sigma\text{为奇置换}&\iff 2\mid r
\end{align}
$$

**证明**：由置换符号的群同态性\ref{thm:置换符号的群同态性}与对换的符号为$-1$可得。

**交错群**：定义$n$元交错群为
$$
A_n=\{ \sigma\in S_n:(-1)^\sigma=1 \}
$$

**交错群的正规性**：交错群为对称群的正规子群。

**证明**：由置换符号的群同态性\ref{thm:置换符号的群同态性}，结合$\ker\epsilon=A_n$，以及定理\ref{thm:核等价于正规子群}，交错群为对称群的正规子群。

**交错群的指标**：如果$n\ge 2$，那么$[S_n:A_n]=2$。

**证明**：由置换符号的群同态性\ref{thm:置换符号的群同态性}，结合$\ker\epsilon=A_n$，以及群第一同构定理\ref{thm:群第一同构定理}，成立
$$
S_n/A_n=S_n/\ker\epsilon\cong \{1,-1\}
$$
因此$[S_n:A_n]=2$。

### 4.4	$A_n$的单性与$S_n$的可解性

**引理4.14**：对于$n$元偶置换$\sigma\in A_n$，其中$n\ge 2$，成立
$$
\begin{align}
&\mathrm{Cent}_{S_n}(\sigma)\not\sub A_n\implies \mathrm{Conj}_{A_n}(\sigma)=\mathrm{Conj}_{S_n}(\sigma)\\
&\mathrm{Cent}_{S_n}(\sigma)\sub A_n\implies 2|\mathrm{Conj}_{A_n}(\sigma)|=|\mathrm{Conj}_{S_n}(\sigma)|
\end{align}
$$
其中
$$
\begin{align}
&\mathrm{Cent}_{S_n}(\sigma)=\{ \tau\in S_n:\sigma\tau=\tau\sigma \}\\
&\mathrm{Conj}_{A_n}(\sigma)=\{ \tau\sigma\tau^{-1}:\tau\in A_n \}\\
&\mathrm{Conj}_{S_n}(\sigma)=\{ \tau\sigma\tau^{-1}:\tau\in S_n \}
\end{align}
$$

**证明**：如果$\mathrm{Cent}_{S_n}(\sigma)\sub A_n$，那么$\mathrm{Cent}_{A_n}(\sigma)=\mathrm{Cent}_{S_n}(\sigma)\sub A_n$，其中
$$
\mathrm{Cent}_{A_n}(\sigma)=\{ \tau\in A_n:\sigma\tau=\tau\sigma \}
$$
那么由命题\ref{pro:交错群的指标}
$$
[S_n:\mathrm{Cent}_{S_n}(\sigma)]
=[S_n:\mathrm{Cent}_{A_n}(\sigma)]
=[S_n:A_n][A_n:\mathrm{Cent}_{A_n}(\sigma)]
=2[A_n:\mathrm{Cent}_{A_n}(\sigma)]
$$
由轨道-稳定化子定理\ref{thm:轨道-稳定化子定理}，$2|\mathrm{Conj}_{A_n}(\sigma)|=|\mathrm{Conj}_{S_n}(\sigma)|$。

如果$\mathrm{Cent}_{S_n}(\sigma)\not\sub A_n$，那么由命题\ref{pro:交错群的正规性}，以及命题\ref{pro:包含正规子群的子群族的结构}，$A_n\lneq A_n\mathrm{Cent}_{S_n}(\sigma)<S_n$。而由命题\ref{pro:交错群的指标}，以及Lagrange定理\ref{pro:Lagrange定理}，$A_n\mathrm{Cent}_{S_n}(\sigma)=S_n$。由群第二同构定理\ref{thm:群第二同构定理}
$$
\frac{\mathrm{Cent}_{S_n}(\sigma)}{A_n\cap\mathrm{Cent}_{S_n}(\sigma)}\cong\frac{A_n\mathrm{Cent}_{S_n}(\sigma)}{A_n}
$$
因此由轨道-稳定化子定理\ref{thm:轨道-稳定化子定理}
$$
\small{
|\mathrm{Conj}_{A_n}(\sigma)|=[A_n:\mathrm{Cent}_{A_n}(\sigma)]
=[A_n:A_n\cap\mathrm{Cent}_{S_n}(\sigma)]
=[A_n\mathrm{Cent}_{S_n}(\sigma):\mathrm{Cent}_{S_n}(\sigma)]
=[S_n:\mathrm{Cent}_{S_n}(\sigma)]
=|\mathrm{Conj}_{S_n}(\sigma)|
}
$$
而由$\mathrm{Conj}_{A_n}(\sigma)\sub \mathrm{Conj}_{A_n}(\sigma)$，于是$\mathrm{Conj}_{A_n}(\sigma)=\mathrm{Conj}_{S_n}(\sigma)$。

**命题4.15**：对于$n$元偶置换$\sigma\in A_n$，其中$n\ge 2$，成立
$$
\sigma\text{的类型由互异奇数组成}\iff 
\mathrm{Cent}_{S_n}(\sigma)\sub A_n
$$

**证明**：如果$\sigma$的类型由互异奇数组成，那么任取$\tau\in\mathrm{Cent}_{S_n}(\sigma)$，即$\tau\sigma\tau^{-1}=\sigma$。记$\sigma$的轮换分解为
$$
\sigma=(a_1^{(1)}\cdots a_{r_1}^{(1)})\cdots (a_1^{(s)}\cdots a_{r_s}^{(s)})
$$
其中对于任意$1\le t\le s$，$r_t$为奇数，且对于任意$1\le u<v\le s$，$r_u\ne r_v$。由引理4.5
$$
\tau\sigma\tau^{-1}=
(\tau(a_1^{(1)})\cdots \tau(a_{r_1}^{(1)}))\cdots (\tau(a_1^{(s)})\cdots \tau (a_{r_s}^{(s)}))
$$
因此
$$
(\tau(a_1^{(1)})\cdots \tau(a_{r_1}^{(1)}))\cdots (\tau(a_1^{(s)})\cdots \tau (a_{r_s}^{(s)}))
=(a_1^{(1)}\cdots a_{r_1}^{(1)})\cdots (a_1^{(s)}\cdots a_{r_s}^{(s)})
$$
那么对于任意$1\le t\le s$
$$
(\tau(a_1^{(t)})\cdots \tau(a_{r_t}^{(t)}))=(a_1^{(t)}\cdots a_{r_r}^{(t)})
$$
进而对于任意$1\le t\le s$，存在$m_t\in\N^*$，使得成立
$$
\tau=(a_1^{(1)}\cdots a_{r_1}^{(1)})^{m_1}\cdots (a_1^{(s)}\cdots a_{r_s}^{(s)})^{m_s}
$$
由于对于任意$1\le t\le s$，$r_t$为奇数，那么由引理4.13，$(a_1^{(t)}\cdots a_{r_t}^{(t)})^{m_t}$为偶置换，进而由引理4.12，$\tau$为偶置换，由此可得$\mathrm{Cent}_{S_n}(\sigma)\sub A_n$。

如果$\sigma$的类型存在偶数，令$\tau$为$\sigma$的轮换分解中的偶轮换，那么$\tau\sigma\tau^{-1}=\sigma$。而由引理4.13，$\tau$为奇置换，因此$\mathrm{Cent}_{S_n}(\sigma)\not\sub A_n$。

如果$\sigma$的类型存在相同奇数，记$\sigma$的轮换分解为
$$
\sigma=(a_1\cdots a_m)(b_1\cdots b_m)(a_1^{(1)}\cdots a_{r_1}^{(1)})\cdots (a_1^{(s)}\cdots a_{r_s}^{(s)})
$$
其中$m$为奇数。由引理4.13，考虑奇置换
$$
\tau=(a_1b_1)\cdots(a_mb_m)
$$
那么$\tau\sigma\tau^{-1}=\sigma$，因此$\mathrm{Cent}_{S_n}(\sigma)\not\sub A_n$。

综上所述，命题得证！

**引理4.18**：$3$-轮换生成交错群。

**证明**：由引理4.12，对于任意$\sigma\in A_n$，成立
$$
\sigma=(a_1b_1)\cdots (a_{2m}b_{2m})
$$
由于
$$
(ab)(ac)=(acb),\qquad
(ab)(cd)=(acb)(cda)
$$

**命题4.19**：当$n\ge 5$时，$A_n$中任意$3$-轮换共轭。

**证明**：考虑任意两个$3$-轮换$(a_1a_2a_3)$与$(b_1b_2b_3)$，作置换$\pi\in S_n$，使得对于任意$1\le k\le 3$，成立$\pi(a_k)=b_k$。由于$n\ge 5$，那么存在$\{ c,d \}=\{1,2,3,4,5\}\setminus\{a_1,a_2,a_3\}$。如果$\pi$为偶置换，那么令$\sigma=\pi$；如果$\pi$为奇置换，那么令$\sigma=\pi(cd)$；此时，$\sigma\in A_n$。由引理4.5，$\sigma(a_1a_2a_3)\sigma^{-1}=(b_1b_2b_3)$，从而命题得证！

**命题4.20**：对于$n\ge 5$，如果$N\lhd A_n$，且$N$包含一个$3$-轮换，那么$N$包含所有$3$-轮换。

**证明**：由命题4.19，命题得证！

**命题4.21**：对于$n\ge 5$，如果$\{\mathbbm{1}\}\subsetneq N\lhd A_n$，那么$N$包含$3$-轮换。

![[Algebra Chapter 0-Paolo Aluffi/图/An为单群.pdf]]

**证明**：在$N\lhd A_n$中取置换元素最少的非平凡置换$\sigma\in N$。

如果$\sigma$置换$2$个元素，那么这与$\sigma$为偶置换矛盾！

如果$\sigma$置换$3$个元素，那么$\sigma$为$3$-轮换。

如果$\sigma$置换$4$个元素，且$\sigma=(ab)(cd)$，那么令$\tau=(cde)\in A_n$，如此
$$
(ab)(de)=\tau\sigma\tau^{-1}\in N\implies(cde)=\sigma\tau\sigma\tau^{-1}\in N
$$
这与$N$中置换至少置换$4$个元素矛盾！

如果$\sigma$置换$4$个元素，且$\sigma=(abcd)$，那么这与$\sigma$为偶置换矛盾！

如果$\sigma$至少置换$5$个元素，且$\sigma$的轮换分解中包含长度至少为$5$的轮换，那么$\sigma=(abcde_1\cdots e_r)\sigma'$。令$\tau=(bcd)\in A_n$，如此
$$
(acdbe_1\cdots e_r)\sigma'=\tau\sigma\tau^{-1}\in N\implies (abd)=\sigma^{-1}\tau\sigma\tau^{-1}\in N
$$
这与$N$中置换至少置换$5$个元素矛盾！

如果$\sigma$至少置换$5$个元素，且$\sigma$的轮换分解中包含$4$-轮换，同时包含轮换长度至多为$4$，那么$\sigma=(abcd)\sigma'$。令$\tau=(bcd)\in A_n$，如此
$$
(acdb)\sigma'=\tau\sigma\tau^{-1}\in N\implies (abd)=\sigma^{-1}\tau\sigma\tau^{-1}\in N
$$
这与$N$中置换至少置换$5$个元素矛盾！

如果$\sigma$至少置换$5$个元素，且$\sigma$的轮换分解中至少包含两个$3$-轮换，同时包含轮换长度至多为$3$，那么$\sigma=(abc)(def)\sigma'$，此时$\sigma$至少置换$6$个元素。令$\tau=(bcd)\in A_n$，如此
$$
(acd)(bef)\sigma'=\tau\sigma\tau^{-1}\in N\implies (abdcf)=\sigma^{-1}\tau\sigma\tau^{-1}\in N
$$
这与$N$中置换至少置换$6$个元素矛盾！

如果$\sigma$至少置换$5$个元素，且$\sigma$的轮换分解中仅包含一个$3$-轮换，与至少两个$2$-轮换，同时包含轮换长度至多为$3$，那么$\sigma=(abc)(de)(fg)\sigma'$，此时$\sigma$至少置换$7$个元素。令$\tau=(bcd)\in A_n$，如此
$$
(acd)(be)(fg)\sigma'=\tau\sigma\tau^{-1}\in N\implies (abdce)=\sigma^{-1}\tau\sigma\tau^{-1}\in N
$$
这与$N$中置换至少置换$7$个元素矛盾！

如果$\sigma$至少置换$5$个元素，且$\sigma$的轮换分解中仅包含一个$3$-轮换，与一个$2$-轮换，那么$\sigma=(abc)(de)$，这与$\sigma$为偶置换矛盾！

如果$\sigma$至少置换$5$个元素，且$\sigma$的轮换分解中仅包含$2$-轮换，那么$\sigma=(ab)(cd)(ef)\sigma'$，此时$\sigma$至少置换$6$个元素。令$\tau=(bcd)\in A_n$，如此
$$
(ac)(bd)(ef)\sigma'=\tau\sigma\tau^{-1}\in N\implies (ad)(bc)=\sigma^{-1}\tau\sigma\tau^{-1}\in N
$$
这与$N$中置换至少置换$6$个元素矛盾！

综上所述，$\sigma$为$3$-轮换，进而命题得证！

**定理4.20**：当$n\ge 5$时，$A_n$为单群。

**推论4.21**：当$n\ge 5$时，$S_n$为不可解群。

**证明**：
