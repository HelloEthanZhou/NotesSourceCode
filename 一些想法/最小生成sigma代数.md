记
$$
\mathscr{A}=\left\{ \left\{ \frac{1}{2n-1} \right\}:n\in\Z^+ \right\}
$$

$$
A=\left\{ \frac{1}{2n-1}:n\in\Z^+ \right\},\qquad B=\left\{ \frac{1}{2n}:n\in\Z^+ \right\}
$$

$$
S=A\cup B
$$

$$
\mathscr{P}=\left\{ T:T\sub A \right\},\qquad \mathscr{Q}=\left\{ T:T^c\sub A \right\}
$$

求证：
$$
\mathscr{F}(\mathscr{A})=\mathscr{P}\cup\mathscr{Q}
$$

**证明：**

**首先我们证明$\mathscr{P}\cup\mathscr{Q}$为一个$\sigma$-代数。**

**包含空集**：注意到$\O\sub A$，因此$\O\in\mathscr{P}$，进而$\O\in\mathscr{P}\cup\mathscr{Q}$。

**对补封闭**：任取集合$T\in\mathscr{P}\cup\mathscr{Q}$。

如果$T\in\mathscr{P}$，那么$T\sub A$，因此$T^c\in\mathscr{Q}$，进而$T^c\in\mathscr{P}\cup\mathscr{Q}$。

如果$T\in\mathscr{Q}$，那么$T^c\sub A$，因此$T^c\in\mathscr{P}$，进而$T^c\in\mathscr{P}\cup\mathscr{Q}$。

因此$T\in\mathscr{P}\cup\mathscr{Q}$。

**集族$\mathscr{P}$对于可数并封闭**：任取集合列$A_1,A_2,\cdots\in\mathscr{P}$，那么
$$
A_n\sub A,\quad\forall n\in\Z^+
$$
因此
$$
\bigcup_{n=1}^{\infty}{A_n}\sub A
$$
进而
$$
\bigcup_{n=1}^{\infty}{A_n}\in\mathscr{P}
$$

**集族$\mathscr{Q}$对于可数并封闭**：任取集合列$B_1,B_2,\cdots\in\mathscr{Q}$，那么
$$
B_m^c\sub A,\quad\forall m\in\Z^+
$$
因此
$$
\left(\bigcup_{m=1}^{\infty}{B_m}\right)^c=\bigcap_{m=1}^{\infty}{B_m^c}\sub A
$$
进而
$$
\bigcup_{m=1}^{\infty}{B_m}\in\mathscr{Q}
$$

**集族$\mathscr{P}\cup\mathscr{Q}$对可数并封闭**：在集族$\mathscr{P}\cup\mathscr{Q}$中任取集合列，由于$\mathscr{P}\cap\mathscr{Q}=\O$，因此该集合列可分为两类，不妨仍记为$A_1,A_2,\cdots\in\mathscr{P}$和$B_1,B_2,\cdots\in\mathscr{Q}$。注意，这里该集合列均存在集族$\mathscr{P}$和集族$\mathscr{Q}$中的元素，因为上文已讨论过集族$\mathscr{P}$和集族$\mathscr{Q}$的可数并封闭性；同时，这里将两类集合列都写为无穷的形式，是因为倘若其中一类集合列仅有有限个元素，不妨记为$A_1,A_2,\cdots,A_n$，那么将其写成$A_1,A_2,\cdots,A_n,A_n,\cdots$，保证其无穷的形式。下面开始讨论集族$\mathscr{P}\cup\mathscr{Q}$的可数并封闭性。

注意到
$$
\mathscr{Q}=\left\{ T:T^c\sub A \right\}=\left\{ T\cup B:T\sub A \right\}
$$

由于
$$
\bigcup_{m=1}^{\infty}{B_m}\in\mathscr{Q}
$$

因此存在$N\sub A$，使得
$$
\bigcup_{m=1}^{\infty}{B_m}=N\cup B
$$

同时又因为存在$M\sub A$，使得
$$
\bigcup_{n=1}^{\infty}{A_n}=M
$$

因此
$$
\left( \bigcup_{n=1}^{\infty}{A_n} \right)\bigcup\left( \bigcup_{m=1}^{\infty}{B_m} \right)
=
M\cup N\cup B=(M\cup N)\cup B
\in\mathscr{Q}
$$

进而
$$
\left( \bigcup_{n=1}^{\infty}{A_n} \right)\bigcup\left( \bigcup_{m=1}^{\infty}{B_m} \right)
\in\mathscr{P}\cup\mathscr{Q}
$$

至此，我们证明了$\mathscr{P}\cup\mathscr{Q}$为一个$\sigma$-代数。

**下面我们证明$\mathscr{P}\cup\mathscr{Q}$为包含$\mathscr{A}$的最小$\sigma$-代数。**

任取全集$S$的子集的$\sigma$-代数$\mathscr{F}$，满足$\mathscr{A}\sub\mathscr{F}$。

由于$\mathscr{F}$对可数并封闭，因此$\mathscr{P}\sub\mathscr{F}$。特别的，$A\in\mathscr{F}$，因此$B=A^c\in\mathscr{F}$。

注意到
$$
\mathscr{Q}=\left\{ T:T^c\sub A \right\}=\left\{ T\cup B:T\sub A \right\}
$$
因此$\mathscr{Q}\sub\mathscr{F}$。

进而
$$
\mathscr{P}\cup\mathscr{Q}\sub\mathscr{F}
$$

至此，我们证明了$\mathscr{P}\cup\mathscr{Q}$为包含$\mathscr{A}$的最小$\sigma$-代数。

综上所述，
$$
\mathscr{F}(\mathscr{A})=\mathscr{P}\cup\mathscr{Q}
$$
原命题得证！