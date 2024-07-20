# 第一章	集合论和逻辑

## 1	基本概念

## 2	函数

## 3	关系

## 4	整数与实数

## 5	Cartesian积

## 6	有限集合

## 7	可数集合与不可数集合

## 8	递归定义原理

## 9	无限集合与选择公理

## 10	良序集合

## 11	极大原理

# 第二章	拓扑空间与连续函数

## 12	拓扑空间

**拓扑空间(topology space)**：称$(X,\tau)$为拓扑空间，如果拓扑$\tau\sub\mathscr{P}(X)$满足如下性质。

1. $\varnothing,X\in\tau$
2. $\tau$对于任意并封闭。
3. $\tau$对于可数交封闭。

**开集(open set)**：对于拓扑空间$(X,\tau)$，称集合$U\in\tau$为开集。

**拓扑的例子**：

- **离散拓扑(discrete topology)**：$\tau=\mathscr{P}(X)$
- **平凡拓扑(trivial topology)**：$\tau=\{\varnothing,X\}$
- **有限补拓扑(finite complement topology)**：$\tau_f=\{ U\sub X:X\setminus U \text{ is finite } \}\cup\{ \varnothing,X \}$
- **可数补拓扑(countable complement topology)**：$\tau_c=\{ U\sub X:X\setminus U \text{ is countable } \}\cup\{ \varnothing,X \}$

**精细(finer)、粗糙(coarser)与可比较(comparable)**：对于集合$X$上的拓扑$\tau$和$\tau'$，称$\tau'$比$\tau$精细，$\tau$比$\tau'$粗糙，如果$\tau'\supset \tau$；称$\tau'$比$\tau$严格精细，$\tau$比$\tau'$严格粗糙，如果$\tau'\supsetneq \tau$；称$\tau$和$\tau'$可比较，如果$\tau'\supset \tau$且$\tau\supset \tau'$。

## 13	拓扑基

**生成子集族(generated subset family)**：定义子集族$\mathscr{B}\sub\mathscr{P}(X)$的生成子集族为
$$
\begin{align}
\overline{\mathscr{B}}&=\{ U\sub X:U \text{ is a union of elements of } \mathscr{B} \}\\
&=\{ U\sub X:\forall x\in U,\exist B\in\mathscr{B},\text{ s.t. } x\in B\sub U \}
\end{align}
$$

**基(basis)**：称子集族$\mathscr{B}\sub\mathscr{P}(X)$为$X$的拓扑基，如果满足如下性质之一。

1. $\overline{\mathscr{B}}$构成$X$的拓扑。
2. $\displaystyle\bigcup_{B\in\mathscr{B}}B=X$，且对于任意$B_1,B_2\in\mathscr{B}$，成立$B_1\cap B_2\in\overline{\mathscr{B}}$。
3. $\displaystyle\bigcup_{B\in\mathscr{B}}B=X$，且对于任意$x\in X$，以及$B_1,B_2\in\mathscr{B}$，如果$x\in B_1\cap B_2$，那么存在$B\in\mathscr{B}$，使得成立$x\in B\sub B_1\cap B_2$。

**生成拓扑(generated topology)**：称$\tau$为由$X$的拓扑基$\mathscr{B}\sub\mathscr{P}(X)$生成的拓扑，或称$\mathscr{B}\sub\mathscr{P}(X)$为拓扑空间$(X,\tau)$的拓扑基，如果满足如下性质之一。

1. $\tau=\overline{\mathscr{B}}$
2. $\mathscr{B}\sub \tau \sub \overline{\mathscr{B}}$
3. 对于任意$U\in \tau$，以及$x\in U$，存在$B\in\mathscr{B}$，使得成立$x\in B\sub U$。

**引理13.1**：对于拓扑空间$(X,\tau)$的拓扑基$\mathscr{B}$和拓扑$(X,\tau')$的拓扑基$\mathscr{B}’$，$\tau'$比$\tau$精细$\iff$对于任意$x\in X$，以及$B\in\mathscr{B}$，如果$x\in B$，那么存在$B'\in\mathscr{B}'$，使得成立$x\in B'\sub B$。

**标准拓扑(standard topology)**：称$(\R,\tau)$为标准拓扑，如果$\tau$为由拓扑基$\{ (a,b):a<b\in\R \}$生成的拓扑。

**下限拓扑(lower limit topology)**：称$(\R,\tau)$为下限拓扑，并记做$\R_{\ell}$，如果$\tau$为由拓扑基$\{ [a,b):a<b\in\R \}$生成的拓扑。

**$K$-拓扑($K$-topology)**：称$(\R,\tau)$为$K$-拓扑，并记做$K$-拓扑，如果$\tau$为由拓扑基$\{ (a,b):a<b\in\R \}\cup\{ (a,b)\setminus K:a<b\in\R \}$生成的拓扑，其中$K=\{ \frac{1}{n}:n\in\N^* \}$。

**引理13.2**：下限拓扑$\R_{\ell}$和$K$-拓扑$\R_K$比标准拓扑精细，但不可比较。

**子基(subbasis)**：

