# 第一章	集合论和范畴学

## 1.1	朴素集合论

### 1.1.1	第一题

**Russell悖论**：定义$R=\{r:r\notin r\}$，那么$R\in R\iff R\notin R$

Wikipedia：https://en.wikipedia.org/wiki/Russell%27s_paradox

### <span id = '1.1.2'>1.1.2	第二题</span>

证明：如果关系$\sim$为集合$S$上的等价关系，那么集族$\mathscr{P}_\sim$为$S$上的一个划分。即证明：$\mathscr{P}_\sim$不交且并为$S$。

证明：

引理：对于任意$a,b\in S$，或$[a]_\sim=[b]_\sim$成立，或$[a]_\sim\cap [b]_\sim=\varnothing$成立，且仅成立其中之一。

引理的证明：第一，显然二者不能同时成立。事实上，如果$[a]_\sim=[b]_\sim$且$[a]_\sim\cap [b]_\sim=\varnothing$，那么$[a]_\sim=[b]_\sim=\varnothing$，但是$a\in[a]_\sim$，矛盾！

第二，如果$[a]_\sim=[b]_\sim$，那么引理得证！如果$[a]_\sim\ne[b]_\sim$，我们来证明$[a]_\sim\cap [b]_\sim=\varnothing$。反证，假设存在$c\in S$，使得$c\in [a]_\sim\cap[b]_\sim$，那么$c\in [a]_\sim$且$c\in [b]_\sim$。任取$m\in[a]_\sim$，由于$c\in [a]_\sim$，那么$c\sim m$，又$c\in [b]_\sim$，那么$m\in [b]_\sim$，于是$[a]_\sim\sub[b]_\sim$，同理$[b]_\sim\sub[a]_\sim$，进而$[a]_\sim=[b]_\sim$，矛盾！因此$[a]_\sim\cap [b]_\sim=\varnothing$。引理得证！

回至原题，首先，明确$\mathscr{P}_\sim$的定义
$$
\mathscr{P}_\sim=\{ [a]_\sim:a\in S \}
$$
其次，$\mathscr{P}_\sim$中元素的不交性由引理保证。

最后，我们来证明
$$
\bigcup_{T\in\mathscr{P}_\sim}T=S
\iff\bigcup_{a\in S}[a]_{\sim}=S
$$
一方面，由于$[a]_\sim\sub S$，于是$\displaystyle\bigcup_{a\in S}[a]_{\sim}\sub S$。另一方面，由于对于任意$a\in S$，显然$a\in[a]_\sim$，于是$\displaystyle\bigcup_{a\in S}[a]_{\sim}\supset S$。综合两方面，$\displaystyle\bigcup_{a\in S}[a]_{\sim}=S$。

综上所述，原命题得证！

### <span id = '1.1.3'>1.1.3	第三题</span>

证明：如果集族$\mathscr{P}$为集合$S$上的一个划分，那么存在$S$上的一个等价关系，使得$\mathscr{P}=\mathscr{P}_\sim$。

证明：由于集族$\mathscr{P}$为集合$S$上的一个划分，那么
$$
\bigsqcup_{ T\in\mathscr{P}}T_\lambda=S
$$
定义$S$上的一个等价关系：
$$
a\sim b\iff 
\exists T\in\mathscr{P},a,b\in T
$$
事实上，对于任意$a\in S$，由于$\displaystyle\bigcup_{ T\in\mathscr{P}}T_\lambda=S$，那么存在$T\in\mathscr{P}$，使得成立$a\in T$，自反性得证！

对于任意$a,b\in S$，如果$a\sim b$，那么存在$T\in\mathscr{P}$，使得成立$a,b\in T$，显然$b\sim a$，对称性得证！

对于任意$a,b,c\in S$，如果$a\sim b,b\sim c$，那么存在$T_1,T_2\in\mathscr{P}$，使得成立$a,b\in T_1,b,c\in T_2$，于是$b\in T_1\cap T_2$。而$\mathscr{P}$中元素的不交性保证了$T_1=T_2$，进而$a,c\in T_1=T_2$，即$a\sim c$，传递性得证！

于是$\sim$为$S$上的等价关系。由$\sim$的定义，不难发现对于任意$T\in\mathscr{P}$，任取$t\in T\sub S$，那么$T=[t]_\sim$，这是因为
$$
T=[t]_\sim\iff
T=\{ s\in S:s\sim t \}\iff
T=\{ s\in S:\exists R\in\mathscr{P},s,t\in R\}\iff
T=\{ s\in T \}
$$

下面我们依托这个事实来证明：$\mathscr{P}=\mathscr{P}_\sim$。

一方面，任取$T\in\mathscr{P}$，那么任取$t\in T\sub S$，可得$T=[t]_\sim \in\mathscr{P}_\sim$，于是$\mathscr{P}\sub\mathscr{P}_\sim$。

另一方面，任取$[t]_\sim\in\mathscr{P}_\sim$，由于$\displaystyle\bigcup_{ T\in\mathscr{P}}T_\lambda=S\ni  t$，那么存在$T\in\mathscr{P}$，使得成立$t\in T$，于是$[t]_\sim =T\in \mathscr{P}$，于是$\mathscr{P}\supset\mathscr{P}_\sim$。

综合两方面，$\mathscr{P}=\mathscr{P}_\sim$成立，原命题得证！

### 1.1.4	第四题

$n$个元素的集合上可以定义多少个不同的等价关系？

证明：由[1.1.2](#1.1.2)和[1.1.3](#1.1.3)，划分和等价关系存在一一映射，于是本题便要求寻找$n$个元素的集合上有多少个划分。

设$n$个元素的集合上的划分数为$B_n$，那么$B_0=1$，且满足如下递推公式
$$
B_{n+1}=\sum_{k=0}^{n}{n\choose k}B_{n-k}
$$
通过计算可得，$n=0:10$分别为
$$
1, 1, 2, 5, 15, 52, 203, 877, 4140, 21147, 115975
$$
事实上，这与第二类Stirling数与Bell数有关。

**第二类Stirling数**：表示将$n$个两两不同的元素，划分为$k$个互不区分的非空子集的方案数，记作$S(n,k)$。递推公式如下
$$
S(n+1,k)=S(n,k-1)+kS(n,k)
$$
通项公式如下：
$$
S(n,k)=\frac{1}{k!}\sum_{i=0}^{k}(-1)^k{k\choose i}(k-i)^n
$$

**Bell数**：表示将$n$个两两不同的元素，划分为互不区分的非空子集的方案数，记作$B(n)$，于是
$$
B(n)=\sum_{k=0}^{n}S(n,k)=\sum_{k=0}^{n}\sum_{i=0}^{k}(-1)^k\frac{1}{k!}{k\choose i}(k-i)^n
$$
`mathematica`代码为：

```mathematica
(* 第二类Stirling数 *)
StirlingS2[n, k]

(* Bell数 *)
BellB[n]
```

如下为第二类Stirling数和Bell数表：

| $n$ | $S(n,0)$ | $S(n,1)$ | $S(n,2)$ | $S(n,3)$ | $S(n,4)$ | $S(n,5)$ | $S(n,6)$ | $S(n,7)$ | $S(n,8)$ | $S(n,9)$ | $S(n,10)$ | $B(n)$ |
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| $0$ | $1$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $1$ |
| $1$ | $0$ | $1$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $1$ |
| $2$ | $0$ | $1$ | $1$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $2$ |
| $3$ | $0$ | $1$ | $3$ | $1$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $5$ |
| $4$ | $0$ | $1$ | $7$ | $6$ | $1$ | $0$ | $0$ | $0$ | $0$ | $0$ | $0$ | $15$ |
| $5$ | $0$ | $1$ | $15$| $25$| $10$| $1$ | $0$ | $0$ | $0$ | $0$ | $0$ | $52$ |
| $6$ | $0$ | $1$ | $31$| $90$| $65$| $15$| $1$ | $0$ | $0$ | $0$ | $0$ | $203$ |
| $7$ | $0$ | $1$ | $63$| $301$| $350$| $140$| $21$| $1$ | $0$ | $0$ | $0$ | $877$ |
| $8$ | $0$ | $1$ | $127$| $966$| $1701$| $1050$| $266$| $28$| $1$ | $0$ | $0$ | $4140$ |
| $9$ | $0$ | $1$ | $255$| $3025$| $7770$| $6951$| $2646$| $462$| $36$| $1$ | $0$ | $21147$ |
| $10$ | $0$ | $1$ | $511$| $9330$| $34105$| $42525$| $22827$| $5880$| $750$| $45$| $1$ | $115975$ |

### 1.1.5	第五题

构造一个满足自反性和对称性但不满足传递性的例子。

证明：好朋友；图中的两点间存在边。

### 1.1.6	第六题

对于实数域$\R$，定义关系$\sim$：
$$
a\sim b\iff a-b\in\Z
$$
对于实数平面$\R^2$，定义关系$\approx$：
$$
(a_1,a_2)\approx(b_1,b_2)\iff
a_1-b_1\in\Z,a_2-b_2\in\Z
$$
证明：$\sim$和$\approx$均为等价关系，并描述$\R/\sim$和$\R^2/\approx$。

证明：等价关系易证。
$$
\R/\sim=[0,1),\qquad \R^2/\approx [0,1)\times[0,1)
$$

## 1.2	集合的函数

### 1.2.1	第一题

对于有$n$个元素的集合$S$，存在多少双射？

证明：显然为$n!$个。

### <span id = '1.2.2'>1.2.2	第二题</span>

证明：对于函数$f:A\to B$，如下命题等价。

$1.$$f$是单射。

$2.$$f$存在左逆。

$3.$$f$是单态射。

证明：

$1\implies2$：如果$f$为单射，定义函数
$$
\begin{align}
g: & \mathrm{im}f\to A\\
& f(a)\to a
\end{align}
$$
首先来验证$g$的定义是良好的。取$a_1,a_2\in A$，满足$f(a_1)=f(a_2)$，由$f$的单射性，$a_1=a_2$，于是$g$定义良好。其次来验证$g\circ f=\mathbb{1}$。任取$a\in A$，注意到$(g\circ f)(a)=g(f(a))=a$，那么$g\circ f=\mathbb{1}$。综合这两点，$f$存在左逆$g$。

$1\implies3$：如果$f$为单射，任取$\alpha_1,\alpha_2:Z\to A$，满足$f\circ \alpha_1=f\circ \alpha_2$。任取$z\in Z$，注意到
$$
f(\alpha_1(z))=(f\circ \alpha_1)(z)=(f\circ \alpha_2)(z)=f(\alpha_2(z))
$$
于是$\alpha_1=\alpha_2$，进而$f$是单态射。

$2\implies 3$：如果$f$存在左逆$g$，任取$\alpha_1,\alpha_2$，满足$f\circ \alpha_1=f\circ \alpha_2$​，那么
$$
\alpha_1=\mathbb{1}\circ \alpha_1=g\circ f\circ \alpha_1=g\circ f\circ \alpha_2=\mathbb{1}\circ \alpha_2=\alpha_2
$$
于是$f$是单态射。

$2\implies 1$​：如果$f$存在左逆$g$，任取$a_1,a_2\in A$，满足$f(a_1)=f(a_2)$，那么
$$
a_1=\mathbb{1}(a_1)=(g\circ f)(a_1)=g(f(a_1))=g(f(a_2))=(g\circ f)(a_2)=\mathbb{1}(a_2)=a_2
$$
于是$f$是单射。

$3\implies 1$：如果$f$是单态射，任取$a_1,a_2\in A$，满足$f(a_1)=f(a_2)$。定义$\alpha_1:Z\to \{a_1\}$和$\alpha_2:Z\to \{a_2\}$，任取$z\in Z$，注意到
$$
(f\circ \alpha_1)(z)=f(\alpha_1(z))=f(a_1)=f(a_2)=f(\alpha_2(z))=(f\circ \alpha_2)(z)
$$
因此$f\circ\alpha_1=f\circ\alpha_2$，于是$\alpha_1=\alpha_2$，即$a_1=a_2$，进而$f$是单射。

### <span id = '1.2.3'>1.2.3	第三题</span>

证明：对于函数$f:A\to B$，如下命题等价。

$1.$$f$是满射。

$2.$$f$存在右逆。

$3.$$f$是满态射。

证明：

$1\implies2$：如果$f$是满射，定义函数
$$
\begin{align}
g: & B\to A\\
& b\to a\in f^{-1}(b)
\end{align}
$$
这里要说明的是对于特别的$b\in B$，$f^{-1}(b)$中的元素可能不唯一，这时候任取其一即可，此时便说明$g$定义良好。然后我们来验证$f\circ g=\mathbb{1}$。任取$b\in B$，注意到$(f\circ g)(b)=f(g(b))=f(f^{-1}(b))=b$，那么$f\circ g=\mathbb{1}$，进而$f$存在右逆$g$。

$1\implies3$：如果$f$为满射，任取$\beta_1,\beta_2$，满足$\beta_1\circ f=\beta_2\circ f$。任取$b\in B$，存在$a\in A$，使得成立$f(a)=b$，因此
$$
\beta_1(b)=\beta_1(f(a))=(\beta_1\circ f)(a)=(\beta_2\circ f)(a)=\beta_2(f(a))=\beta_2(b)
$$
于是$\beta_1=\beta_2$，进而$f$是满态射。

$2\implies 3$：如果$f$存在右逆$g$，任取$\beta_1,\beta_2$，满足$\beta_1\circ f=\beta_2\circ f$，那么
$$
\beta_1=\beta_1\circ \mathbb{1}=\beta_1\circ f\circ g=\beta_2\circ f\circ g=\beta_2\circ \mathbb{1}=\beta_2
$$
于是$f$是满态射。

$2\implies1$：如果$f$存在右逆$g$，任取$b\in B$，注意到$g(b)\in A$，且$f(g(b))=(f\circ g)(b)=\mathbb{1}(b)=b$，因此$f$为满射。

$3\implies 1$：如果$f$是满态射，任取$b\in B$。定义$\beta_1:B\to\{1\}$以及
$$
\begin{align}
\beta_2: & B \to \{0,1\}\\
& b \mapsto \begin{cases}
1,\quad & b\in\mathrm{im}f\\
0,\quad & b\in B\setminus\mathrm{im}f
\end{cases}
\end{align}
$$
任取$a\in A$，注意到
$$
(\beta_1\circ f)(a)=\beta_1(f(a))=1=\beta_2(f(a))=(\beta_2\circ f)(a)
$$
因此$\beta_1\circ f=\beta_2\circ f$，于是$\beta_1=\beta_2$，即$b\in\mathrm{im}f$，进而$f$是满射。

### <span id = '1.2.4'>1.2.4	第四题</span>

证明：双射的逆为双射，双射的复合为双射。

证明：如果函数$f$为双射，其逆函数$f^{-1}$满足$f\circ f^{-1}=f^{-1}\circ f=\mathbb{1}$，由[1.2.2](#1.2.2)和[1.2.3](#1.2.3)，逆$f^{-1}$为双射。

如果函数$f,g$均为双射，那么其逆函数$f^{-1},g^{-1}$满足，$f\circ f^{-1}=f^{-1}\circ f=\mathbb{1}$且$g\circ g^{-1}=g^{-1}\circ g=\mathbb{1}$，于是$(f\circ g)(g^{-1}\circ f^{-1})=(g^{-1}\circ f^{-1})(f\circ g)=\mathbb{1}$，由[1.2.2](#1.2.2)和[1.2.3](#1.2.3)，复合$f\circ g$为双射。

### 1.2.5	第五题

证明：同构为等价关系。

证明：定义关系
$$
A\sim B \iff A\cong B \iff \exists双射f:A\to B
$$
对于反身性，显然$\mathbb{1}_A$为双射，因此$A\sim A$。

对于对称性，如果$A\sim B$，那么存在双射$f:A\to B$，由[1.2.4](#1.2.4)，$f^{-1}:B\to A$为双射，因此$B\sim A$。

对于传递性，如果$A\sim B,B\sim C$，那么存在双射$f:A\to B,g:B\to C$，由[1.2.4](#1.2.4)，$f\circ g:A\to C$为双射，因此$A\sim C$。

因此，同构为等价关系。

### 1.2.6	第六题

解释函数$f:A\to B$如何决定$\pi_A$的右逆。

证明：由于
$$
\begin{align}
\pi_A: & A\times B\to A\\
& (a,b)\to a
\end{align}
$$
定义
$$
\begin{align}
\varphi: & A\to A\times B\\
& a\mapsto (a,f(a))
\end{align}
$$
显然$\pi_A\circ \varphi=\mathbb{1}_A$，且$g$由$f$决定。交换图如下
$$
\xymatrix@=11ex{
A \ar@/_2pc/[rr]_{\mathbb{1}_A} \ar@{^{(}->}[r]^{\varphi}_{a\mapsto (a,f(a))} & A\times B \ar@{->>}[r]^{\pi_A}_{(a,b)\mapsto a} & A
}
$$

### 1.2.7	第七题

证明：对于函数$f:A\to B$，成立$\Gamma_f\cong A$。

证明：定义函数
$$
\begin{align}
\varphi: & A \to \Gamma_f\\
& a \mapsto (a,f(a))
\end{align}
$$
显然$\varphi$为双射。

### 1.2.8	第八题

描述如下函数的正则分解：
$$
\begin{align}
\varphi:& \R\to\C\\
& r\mapsto\mathrm{e}^{2\pi i r}=\cos{2\pi r} + i\sin{2\pi r}
\end{align}
$$

证明：定义等价关系
$$
r_1\sim r_2 \iff \varphi(r_1)=\varphi(r_2) \iff r_1-r_2\in\Z
$$
那么$\varphi$的正则分解为
$$
\xymatrix@=10ex{
\R \ar@/^2pc/[rrr]^{\varphi} \ar@{->>}[r]_(0.45){r\mapsto(r)} & [0,1) \ar@{->}[r]_(0.4){(r)\mapsto \mathrm{e}^{2\pi i r}}^(0.4){\sim} & \part\mathbb{D} \ar@{^{(}->}[r]_(0.625){\mathrm{e}^{2\pi i r}\mapsto \mathrm{e}^{2\pi i r}} & \C
}
$$

### 1.2.9	第九题

证明：如果$A_1\cong A_2,B_1\cong B_2$，且$A_1\cap B_1=A_2\cap B_2=\varnothing$，那么$A_1\cup B_1\cong A_2\cup B_2$。

证明：由于$A_1\cong A_2,B_1\cong B_2$，那么存在双射$f:A_1\to A_2$和$g:B_1\to B_2$，定义函数
$$
\begin{align}
h: & A_1\cup B_1\to A_2\cup B_2\\
& x\mapsto 
\begin{cases}
f(x),\quad & x\in A_1\\
g(x),\quad & x\in B_1
\end{cases}
\end{align}
$$
由$A_1\cap B_1=A_2\cap B_2=\varnothing$，容易验证$h$为双射，因此$A_1\cup B_1\cong A_2\cup B_2$。

### <span id = '1.2.10'>1.2.10	第十题</span>

证明：对于有限集$A,B$，成立$|B^A|=|B|^{|A|}$。

证明：显然。

### 1.2.11	第十一题

对于集合$S$，定义$2^S=\{ f:S\to \{0,1\} \}$，证明：$2^S\cong \mathscr{P}(S)$。

证明：定义函数
$$
\begin{align}
\varphi: & 2^S\to \mathscr{P}(S)\\
& f \mapsto \{ s\in S:f(s)=1 \}
\end{align}
$$
下面我们证明$\varphi$为双射。

对于单射性，任取$f_1,f_2\sub 2^S$，满足$\varphi(f_1)=\varphi(f_2)$，即$\{ s\in S:f_1(s)=1 \}=\{ s\in S:f_2(s)=1 \}$，那么$f_1=f_2$，因此$\varphi$为单射。

对于满射性，任取$A\sub S$，令
$$
f(s)=\begin{cases}
1,\quad & s\in A\\
0,\quad & s\in S\setminus A
\end{cases}
$$
显然$\varphi(f)=A$，因此$\varphi$为满射。

综上所述，$2^S\cong \mathscr{P}(S)$，原命题得证！

## 1.3	范畴

### 1.3.1	第一题

对于范畴$\mathsf{C}$，考虑如下结构$\mathsf{C}^{\mathrm{op}}$。

- $\mathrm{Obj}(\mathsf{C}^{\mathrm{op}})=\mathrm{Obj}(\mathsf{C})$
- $\mathrm{Hom}_{\mathsf{C}^{\mathrm{op}}}(A,B)=\mathrm{Hom}_{\mathsf{C}}(B,A)$

证明：$\mathsf{C}^{\mathrm{op}}$为范畴。

### 1.3.2	第二题

如果$A$为有限集合，那么$A$关于范畴$\mathsf{Set}$的自同态映射$\mathrm{End}_{\mathsf{Set}}(A)$的势是什么？

证明：由[1.2.10](#1.2.10)
$$
|\mathrm{End}_{\mathsf{Set}}(A)|=|A^A|=|A|^{|A|}
$$

### <span id = '1.3.3'>1.3.3	第三题</span>

定义关系$\sim$满足自反性和传递性。

- 对象：集合$S$中的元素。

- 态射：
  $$
  \mathrm{Hom}(a,b)=\begin{cases}
  \{(a,b)\},\quad & a\sim b\\
  \varnothing,\quad & a\not\sim b
  \end{cases}
  $$

请描述恒等态射$\mathbb{1}_a$。

证明：$\mathbb{1}_a=(a,a)$

### 1.3.4	第四题

受否可依[1.3.3](#1.3.3)，在$\Z$上使用关系$<$，定义$\Z$上的范畴。

证明：当然不可以，因为$<$不满足自反性，因此不存在恒等态射。

### 1.3.5	第五题

在$\sim$表示$\sub$时。

### 1.3.6	第六题

定义范畴$\mathsf{V}$如下。

- 对象：$\mathrm{Obj}(\mathsf{V})=\N$
- 态射：$\mathrm{Hom}_{\mathsf{V}}(m,n)=\{ \{a_{ij}\}_{m\times n}:a_{ij}\in\R \}$。

试证明：$\mathsf{V}$的范畴的定义良好性。

证明：恒等态射对应单位矩阵，态射复合对应矩阵乘法，结合律对应矩阵乘法的结合律。

### 1.3.7	第七题

### 1.3.8	第八题

考虑无限对象的范畴$\mathsf{InfSet}$，并解释$\mathsf{InfSet}$如何被视为范畴$\mathsf{Set}$的满子范畴。

证明：像$\mathsf{Set}$的态射一样，定义$\mathrm{Hom}_{\mathsf{InfSet}}(A,B)=B^A$。

### 1.3.9	第九题

### 1.3.10	第十题

因为范畴$\mathsf{C}$的对象不一定是集合，所以如何理解一般意义上的“子对象”概念并不清楚。在某些情况下，谈论子对象确实是有意义的，并且$\mathsf{C}$中任何给定的对象$A$的子对象都与$\mathsf{C}$中固定的特殊对象$\Omega$（称为subobject classifier）的态射$A\to\Omega$一一对应。证明：$\mathsf{Set}$存在一个subobject classifier。

证明：令$S\in\mathrm{Obj}(\mathsf{Set})$，$T\sub S$，$\Omega=\{0,1\}$，定义
$$
\begin{align}
\varphi_T : & S\to\Omega\\
& x\mapsto\begin{cases}
1,\qquad & x\in T\\
0,\qquad & x\notin T
\end{cases}
\end{align}
$$

### 1.3.11	第十一题

## 1.4	态射

### 1.4.1	第一题

证明：态射的有限复合运算的合理性。

### 1.4.2	第二题

证明：如果$\sim$为集合$S$上的等价关系，那么如下定义的范畴$\mathsf{C}_{S,\sim}$为群胚。

- 对象：$\mathrm{Obj}(\mathsf{C}_{S,\sim})=S$

- 态射：
  $$
  \mathrm{Hom}_{\mathsf{C}_{S,\sim}}(a,b)=\begin{cases}
  \{(a,b)\},\quad & a\sim b\\
  \varnothing,\quad & a\not\sim b
  \end{cases}
  $$

证明：注意到
$$
(a,b)\in\mathrm{Hom}_{\mathsf{C}_{S,\sim}}(a,b)
\implies a\sim b 
\implies b\sim a
\implies (b,a)\in\mathrm{Hom}_{\mathsf{C}_{S,\sim}}(b,a)
$$
因此
$$
(a,b)\circ(b,a)=\mathbb{1}_a,\qquad 
(b,a)\circ(a,b)=\mathbb{1}_b
$$
于是范畴$\mathsf{C}_{S,\sim}$中的态射均为同态映射，进而$\mathsf{C}_{S,\sim}$为群胚。

### 1.4.3	第三题

证明：如果存在左逆，那么为单态射；如果存在右逆，那么为满态射；且逆命题不成立。

证明：$1.$如果存在左逆，

$2.$如果存在右逆，

$3.$逆命题：

### 1.4.4	第四题

证明：单态射的复合为单态射，满态射的复合为满态射。

## 1.5	万有性质

### 1.5.1	第一题

证明：范畴的终止对象为其余范畴的初始对象。

### 1.5.2	第二题

证明：$\varnothing$为$\mathsf{Set}$范畴的唯一初始对象。

### 1.5.3	第三题

证明：终端对象在同构意义下唯一。

### 1.5.4	第四题

点范畴存在终止对象吗，如果存在，唯一吗？

### 1.5.5	第五题

### 1.5.6	第六题

定义范畴$\mathsf{C}_{\Z^+,\mid}$如下。

- 对象：$\mathrm{Obj}(\mathsf{C}_{\Z^+,\mid})=\Z^+$

- 态射：
  $$
  \mathrm{Obj}_{\mathsf{C}_{\Z^+,\mid}}(m,n)=\begin{cases}
  \{(m,n)\},\qquad & n\mid m\\
  \varnothing,\qquad & n \nmid m
  \end{cases}
  $$

证明：范畴$\mathsf{C}_{\Z^+,\mid}$可定义积和余积。

### 1.5.7	第七题

利用如下定理证明：如果$A_1\cong A_2,B_1\cong B_2$，且$A_1\cap B_1=A_2\cap B_2=\varnothing$，那么$A_1\cup B_1\cong A_2\cup B_2$。

对于范畴$\mathsf{C}$，终端对象至多同构。

- 如果$I_1,I_2$均为$\mathsf{C}$的初始对象，那么$I_1\cong I_2$，且同构映射为$I_1\to I_2$。
- 如果$F_1,F_2$均为$\mathsf{C}$的终结对象，那么$F_1\cong F_2$，且同构映射为$F_1\to F_2$。

### 1.5.8	第八题

证明：在范畴$\mathsf{C}$中，如果存在乘积，那么$A\times B\cong B\times A$。

### 1.5.9	第九题

### 1.5.10	第十题

### 1.5.11	第十一题

### 1.5.12	第十二题

# 第二章	群：初次邂逅

## 2.1	群的定义

### 2.1.1	第一题

证明：群是群胚的同构群，特别的，群是范畴中对象的自同构群。

### 2.1.2	第二题

验证一些数域群。

### <span id = '2.1.3'>2.1.3	第三题</span>

证明：对于群$(G,*)$，以及$g,h\in G$，成立$(g*h)^{-1}=h^{-1}*g^{-1}$。

证明：注意到
$$
\begin{align}
&(g*h)*(h^{-1}*g^{-1})=g*(h*h^{-1})*g^{-1}=g*e*g^{-1}=e\\
&(h^{-1}*g^{-1})*(g*h)=h*(g*g^{-1})*h^{-1}=h*e*h^{-1}=e
\end{align}
$$

### 2.1.4	第四题

证明：如果群$(G,*)$对于任意$g\in G$，成立$g^2=e$，那么$G$是交换群。

证明：任取$g,h\in G$，注意到，由[2.1.3](#2.1.3)
$$
g*h=g^{-1}*h^{-1}=(h*g)^{-1}=h*g
$$
因此$G$是交换群。

### 2.1.5	第五题

对于群$(G,*)$，以及$g\in G$，定义$g*G=\{ g*h:h\in G \}$，证明：在多重集合意义下，$g*G=G$。

证明：首先，证明集合$g*G$中没有重复元素。任取$h_1,h_2\in G$，如果$g*h_1=g*h_2$，那么由消去律，$h_1=h_2$，于是集合$g*G$中没有重复元素。

其次，任取$h\in G$，注意到
$$
h=e*h=(g*g^{-1})*h=g*(g^{-1}*h)\in g*G\implies G\sub g*G
$$
而显然$g*G\sub G$，因此$g*G=G$，命题得证！

### 2.1.6	第六题

对于群$(G,*)$，分析$|G|=n$时的“乘法表”。

证明：当$|G|=1$时，显然$G=\{e\}$，因此“乘法表”仅为$e*e=e$。

当$|G|=2$时，令$G=\{e,g\}$，其中$g\ne e$。注意到$g^{-1}\in \{e,g\}$，而当$g^{-1}=e=e^{-1}$时，由逆元的唯一性，$g=e$，矛盾！因此$g^{-1}=g$，即$g^2=e$。于是乘法表为

|      | $e$  | $g$  |
| :--: | :--: | :--: |
| $e$  | $e$  | $g$  |
| $g$  | $g$  | $e$  |

当$|G|=3$时，令$G=\{ e,g,h \}$，其中$e\ne g\ne h$。注意到$g^{-1},h^{-1}\in\{e,g,h\}$，因此$g*h=h*g=e$。同时注意到$g^2,h^2\in\{ e,g,h \}$，因此$g^2=h,h^2=g$。于是乘法表为

|      | $e$  | $g$  | $h$  |
| :--: | :--: | :--: | :--: |
| $e$  | $e$  | $g$  | $h$  |
| $g$  | $g$  | $h$  | $e$  |
| $h$  | $h$  | $e$  | $g$  |

当$|G|=4$时，存在两个群

|      | $e$  | $f$  | $g$  | $h$  |
| :--: | :--: | :--: | :--: | :--: |
| $e$  | $e$  | $f$  | $g$  | $h$  |
| $f$  | $f$  | $g$  | $h$  | $e$  |
| $g$  | $g$  | $h$  | $e$  | $f$  |
| $h$  | $h$  | $e$  | $f$  | $g$  |

|      | $e$  | $i$  | $u$  | $v$  |
| :--: | :--: | :--: | :--: | :--: |
| $e$  | $e$  | $i$  | $u$  | $v$  |
| $i$  | $i$  | $e$  | $v$  | $u$  |
| $u$  | $u$  | $v$  | $e$  | $i$  |
| $v$  | $v$  | $u$  | $i$  | $e$  |

### 2.1.7	第七题

证明：对于群$(G,*)$，以及元素$g\in G$，如果$|g|=n<\infty$，那么
$$
g^N=e\iff n\mid N
$$

证明：充分性显然。

对于必要性，如果$g^N=e$，且$|g|=n$，那么$g^n=e$，且$N\ge n$。令$N=mn+r$，其中$0\le r<n$，那么$e=g^N=g^{mn+r}=(g^n)^m*g^r=g^r$，于是$r=0$，因此$n\mid N=mn$。

### 2.1.8	第八题

证明：如果有限群$(G,*)$存在且存在唯一$2$阶元素$f\in G$，那么
$$
\prod_{g\in G}g=f
$$

证明：任取$g\in G$，考虑$g$和$g^{-1}$的关系，如果$g=g^{-1}$，那么$g^2=e$，因此$g=e$或$g=f$​，因此
$$
\prod_{g\in G}g=f*\prod_{g\in G\setminus\{e,f\}}(g*g^{-1})=f
$$

### 2.1.9	第九题

对于$n$阶群$(G,*)$，令$m$为$G$中$2$阶元素的个数，证明：$n-m$为奇数。

证明：首先，$1$阶元素仅为$e$，$3$阶及以上元素成对出现，因此$n-m$为非$2$阶元素的个数，显然为奇数。

### 2.1.10	第十题

证明：对于群$(G,*)$，如果$2\mid |g|$，那么$|g^{|g|/2}|=2$。

证明：显然！

### 2.1.11	第十一题

证明：对于群$(G,*)$中任意元素$g,h\in G$，成立$|g*h|=|h*g|$。

证明：证明蕴含于如下命题，对于任意$a,g\in G$，成立$|a*g*a^{-1}|=|g|$。

记$|g|=n$，那么$g^n=e$，且对于任意$1\le k<n$，成立$g^k\ne e$。注意到
$$
(a*g*a^{-1})^k=a*g^k*a^{-1}\begin{cases}
=e,\qquad & k=n\\
\ne e,\qquad & 1\le k <n
\end{cases}
$$
因此$|a*g*a^{-1}|=n=|g|$。

### 2.1.12	第十二题

在矩阵乘法群$\mathrm{GL}_2(\R)$中，令
$$
g=\begin{pmatrix}
0&-1\\
1&0
\end{pmatrix},\qquad 
h=\begin{pmatrix}
0&1\\
-1&-1
\end{pmatrix}
$$
证明：$|g|=4,|h|=3,|gh|=\infty$

证明：容易知道
$$
g^2=\begin{pmatrix}
0&-1\\
1&0
\end{pmatrix},\qquad
g^3=\begin{pmatrix}
0&1\\
-1&0
\end{pmatrix},\qquad
g^4=\begin{pmatrix}
1&0\\
0&1
\end{pmatrix}
$$

$$
h^2=\begin{pmatrix}
-1&-1\\
1&0
\end{pmatrix},\qquad
h^3=\begin{pmatrix}
1&0\\
0&1
\end{pmatrix}
$$

由归纳法容易得到
$$
(g*h)^n=\begin{pmatrix}
1&n\\
0&1
\end{pmatrix}
$$
于是
$$
|g|=4,|h|=3,|g*h|=\infty
$$

### 2.1.13	第十三题

举例说明，即使$g*h=h*g$，也不成立$|g*h|=\mathrm{lcm}(|g|,|h|)$。

证明：$|g*g^{-1}|=1$，$\mathrm{lcm}(|g|,|g^{-1}|)=|g|$。

### <span id = '2.1.14'>2.1.14	第十四题</span>

证明：如果$g*h=h*g$，且$\mathrm{gcd}(|g|,|h|)=1$，那么$|g*h|=|g||h|$。

$g^{|gh|}=(h^{-1})^{|gh|}$

证明：记$|g|=m,|h|=n,|g*h|=r$，注意到
$$
\begin{align}
&(g*h)^{mn}=g^{mn}*h^{mn}=e\implies r\mid mn\\
&g^{nr}=g^{nr}*h^{nr}=(g*h)^{nr}=e\implies m\mid nr\\
&h^{mr}=g^{mr}*h^{mr}=(g*h)^{mr}=e\implies n\mid mr
\end{align}
$$

又因为$\mathrm{gcd}(m,n)=\mathrm{gcd}(|g|,|h|)=1$，于是$m\mid r$且$n\mid r$，因此$mn\mid r$，进而$mn=r$，即$|g*h|=|g||h|$。

### 2.1.15	第十五题

对于交换群$(G,*)$，$g\in G$为极大有限阶元素，即对于任意有限阶元素$h\in G$，成立$|h|\le |g|$，证明：对于$h\in G$，如果$|h|<\infty$，那么$|h|\mid |g|$。

证明：任取$h\in G$，满足$|h|<\infty$。记$|g|=N,|h|=n$。

反证，如果$n\nmid N$，那么存在素数$p$，使得成立$N=p^ir,n=p^js$，其中$i<j$且$\mathrm{gcd}(p,r)=\mathrm{gcd}(p,s)=1$。考察$g^{p^i}*h^s$，注意到$\mathrm{gcd}(|g^{p^i}|,|h^s|)=\mathrm{gcd}(r,p^j)=1$，因此由[2.1.14](#2.1.14)
$$
\left| g^{p^i}*h^s \right|=| g^{p^i} || h^s |=p^jr>p^rr=N
$$
矛盾！于是$n\mid N$。

## 2.2	群的例子

### 2.2.1	第一题

对于对称群$S_n$，以及置换$\sigma\in S_n$，定义$M_\sigma$如下
$$
M_\sigma(i,j)=\begin{cases}
1,\qquad & (i,j)=(i,\sigma(i))\\
0,\qquad & \text{others}
\end{cases}
$$
证明：对于任意$\sigma,\tau\in S_n$，成立$M_{\sigma\tau}=M_\sigma M_\tau$。

证明：记$M_{\sigma\tau}=(a_{ij}),M_{\sigma}=(b_{ij}),M_{\tau}=(c_{ij})$，只需证明
$$
a_{ij}=\sum_{k=1}^{n}b_{ik}c_{kj},\qquad \forall i,j\in[1,n]
$$
任取$1\le i \le n$，注意到
$$
\small{
a_{ij}=\begin{cases}
1,\qquad & j=\tau\circ \sigma(i)\\
0,\qquad & j\ne\tau\circ \sigma(j)
\end{cases},\qquad b_{ik}=\begin{cases}
1,\qquad & k=\sigma(i)\\
0,\qquad & k\ne\sigma(i)
\end{cases},\qquad 
c_{kj}=\begin{cases}
1,\qquad & k=\tau^{-1}(j)\\
0,\qquad & k\ne\tau^{-1}(j)
\end{cases}
}
$$
因此
$$
b_{ik}c_{kj}=\begin{cases}
1,\qquad & k=\sigma(i)=\tau^{-1}(j)\\
0,\qquad & \text{others}
\end{cases}
$$
于是$M_{\sigma\tau}=M_\sigma M_\tau$。

### 2.2.2	第二题

证明：对于任意$1\le d\le n$，存在$\sigma\in S_n$，使得成立$|\sigma|=d$。

证明：
$$
\sigma=\begin{pmatrix}
1&\cdots& d-1 &d&d+1&\cdots& n\\
2&\cdots& d &1&d+1&\cdots& n
\end{pmatrix}
$$

### 2.2.3	第三题

证明：对于任意$n\in \N^*$，存在$\sigma\in S_{\N^*}$，使得成立$|\sigma|=n$。

证明：
$$
\sigma=\begin{pmatrix}
1&\cdots& n-1 &n&n+1&\cdots\\
2&\cdots& n &1&n+1&\cdots
\end{pmatrix}
$$

### 2.2.4	第四题

### 2.2.5	第五题

### 2.2.6	第六题

### 2.2.7	第七题

### 2.2.8	第八题

### 2.2.9	第九题

证明：”模$n$同余“为等价关系。

证明：显然！

### 2.2.10	第十题

证明：$\Z/n\Z$精确的由$n$个元素表示。

证明：显然！

### 2.2.11	第十一题

证明：对于任意$n\in\Z$，成立
$$
(2n+1)^2\equiv 1\mod 8
$$
证明：
$$
(2n+1)^2\equiv 4n(n+1)+1\equiv 1\mod 8
$$

### 2.2.12	第十二题

证明：不定方程$a^2+b^2=3c^2$不存在整数解。

证明：
$$
a^2+b^2=3c^2\implies [a]^2_4+[b]^2_4=3[c]^2_4
$$
注意到$[0]_4^2=[2]^2_4$且$[1]_4^2=[3]^2_4$，因此$[a]_4^2=[b]_4^2=[c]_4^2=[0]_4^2$，因此$2\mid a,b,c$，于是存在$a_1,b_1,c_1$，使得成立$a=2a_1,b=2b_1,c=2c_1$，代入方程
$$
a_1^2+b_1^2=3c_1^2\implies [a_1]^2_4+[b_1]^2_4=3[c_1]^2_4
$$
归纳可得，$a=b=c=0$，因此不定方程$a^2+b^2=3c^2$不存在整数解。

### <span id = '2.2.13'>2.2.13	第十三题</span>

证明：
$$
\mathrm{gcd}(m,n)=1\iff \exists a,b\in\Z,\quad am+bn=1
$$
证明：
$$
\mathrm{gcd}(m,n)=1\iff a[m]_n=[1]_n\iff[am]_n=[1]_n\iff am+bn=1
$$

### 2.2.14	第十四题

### 2.2.15	第十五题

对于正奇数$n$，证明如下命题。

#### 2.2.15.1	第一问

证明：如果$\mathrm{gcd}(m,n)=1$，那么$\mathrm{gcd}(2m+n,2n)=1$。

证明：由于$n$为奇数，那么$\mathrm{gcd}(2m+n,2n)=\mathrm{gcd}(2m+n,n)$。由[2.2.13](#2.2.13)
$$
\mathrm{gcd}(m,n)=1
\iff am+b(2k-1)=1
\iff \frac{a}{2}(2m+n)+(b-\frac{a}{2})n=1
$$
如果$a$为偶数，那么$\mathrm{gcd}(2m+n,n)=1$；如果$a$为奇数，那么令$a'=a+n,b'=b-m$，于是
$$
\frac{a'}{2}(2m+n)+(b'-\frac{a'}{2})n=1
$$
因此$\mathrm{gcd}(2m+n,n)=1$，进而$\mathrm{gcd}(2m+n,2n)=1$。

#### <span id = '2.2.15.2'>2.2.15.2	第二问</span>

证明：如果$\mathrm{gcd}(m,2n)=1$，那么$\mathrm{gcd}(\frac{m-n}{2},n)=1$。

证明：如果$\mathrm{gcd}(m,2n)=1$，那么$\mathrm{gcd}(m,n)=1$。由[2.2.13](#2.2.13)
$$
\small{
\mathrm{gcd}(m,n)=1\iff
am+bn=1\iff
2a(\frac{m-n}{2})+(a+b)n=1\iff
\mathrm{gcd}(\frac{m-n}{2},n)=1
}
$$

#### 2.2.15.3	第三问

定义函数：
$$
\begin{align}
\varphi: & (\Z/n\Z)^*\to(\Z/2n\Z)^*\\
&[m]_n\mapsto  [2m+n]_{2n}
\end{align}
$$
证明：$\varphi$为双射。

证明：首先，对于单射性，任取$a,b\in\Z$，如果$[2a+n]_{2n}=[2b+n]_{2n}$，那么$[2a]_{2n}=[2b]_{2n}$，于是$[a]_n=[b]_n$，于是$\varphi$为单射。

其次，对于满射性，任取$m\in\Z$，满足$[m]_{2n}\in(\Z/2n\Z)^*$，于是$\mathrm{gcd}(m,2n)=1$，由[2.2.15.2](#2.2.15.2)，$\mathrm{gcd}(\frac{m-n}{2},n)=1$，因此$[\frac{m-n}{2}]_{n}\in(\Z/n\Z)^*$，且$\varphi([\frac{m-n}{2}]_{n})=[m]_{2n}$。

### 2.2.16	第十六题

找到$1238237^{18238456}$的个位数字。

证明：
$$
1238237^{18238456}\equiv 7^{18238456}\equiv(7^4)^{4559614}\equiv2401^{4559614}\equiv1\mod 10
$$

### 2.2.17	第十七题

证明：如果$m\equiv n\mod p$，那么
$$
\mathrm{gcd}(m,p)=1\iff \mathrm{gcd}(n,p)=1
$$
证明：由于$m\equiv n\mod p$，那么存在$r\in\Z$，使得成立$m=pr+n$。由[2.2.13](#2.2.13)
$$
\small{
\mathrm{gcd}(m,p)=1
\iff \exists a,b \quad am+bp=1
\iff \exists a,b \quad an+(ar+b)p=1
\iff\mathrm{gcd}(n,p)=1
}
$$

### 2.2.18	第十八题

### 2.2.19	第十九题

## 2.3	$\mathsf{Grp}$范畴

### 2.3.1	第一题

在范畴$\mathsf{C}$中，定义态射$\varphi:G\to H$，解释为什么存在态射
$$
\varphi\times \varphi:G\times G\to H\times H
$$

### 2.3.2	第二题

证明：对于态射$\varphi:G\to H$和$\psi:H\to K$，成立
$$
(\psi\circ \varphi)\times(\psi\circ \varphi)=(\psi\times \psi)\circ(\varphi\times \varphi)
$$
证明：任取$g_1,g_2\in G$
$$
(\psi\circ \varphi)\times(\psi\circ \varphi)(g_1,g_2)
=((\psi\circ \varphi)(g_1),(\psi\circ \varphi)(g_2))
=(\psi(\varphi(g_1)),\psi(\varphi(g_2)))
$$

$$
(\psi\times \psi)\circ(\varphi\times \varphi)(g_1,g_2)
=(\psi\times \psi)(\varphi(g_1),\varphi(g_2))
=(\psi(\varphi(g_1)),\psi(\varphi(g_2)))
$$

### 2.3.3	第三题

证明：如果$G$和$H$是Abel群，那么$G\times H$满足$\mathsf{Ab}$范畴中余积的万有性质。

### 2.3.4	第四题

对于群$G$和$H$，如果$G\cong H\times G$，那么$H$是否为平凡群？

### 2.3.5	第五题

证明：$\Q$不为两个非平凡群的直积。

### 2.3.6	第六题

### 2.3.7	第七题

### 2.3.8	第八题

### 2.3.9	第九题

## 2.4	群同态映射

### 2.4.1	第一题

对于$m\mid n$，定义
$$
\begin{align}
\pi_m^n:&\Z/n\Z\to \Z/m\Z\\
& [k]_n\mapsto [k]_m
\end{align}
$$
交换图为
$$
\xymatrix{
\Z \ar[d]_{\pi_n} \ar[rd]^{\pi_m}\\
\Z/n\Z \ar[r]_{\pi_m^n} & \Z/m\Z
}
$$

证明：$\pi_m^n$的定义良好性。

证明：取$a,b$满足$[a]_n=[b]_n$，那么$a\equiv b\mod n$，于是$n\mid a-b$，又因为$m\mid n$，那么$m\mid a-b$，因此$a\equiv b\mod m$，于是$[a]_m=[b]_m$，进而$\pi_m^n$是定义良好的。

### 2.4.2	第二题

证明：不存在同构态射$C_4\to C_2\times C_2$。

证明：考察$C_4$和$C_2\times C_2$非零元的阶。对于$C_4$
$$
|[2]_4|=2,\qquad
|[1]_4|=|[3]_4|=4
$$
对于$C_2\times C_2$
$$
|([1]_2,[0]_2)|=|([0]_2,[1]_2)|=|([1]_2,[1]_2)|=2
$$
而同构态射保阶，所以不存在同构态射$C_4\to C_2\times C_2$。

### 2.4.3	第三题

证明：对于$n$阶群$G$，成立
$$
G\cong \Z/n\Z\iff \exists g\in G,\quad |g|=n
$$
证明：对于必要性，如果$G\cong \Z/n\Z$，那么存在群同构态射$\varphi:\Z/n\Z\to G$，注意到
$$
|\varphi([1]_n)|=|[1]_n|=n
$$
对于充分性，如果存在$g\in G$，使得成立$|g|=n$，又因为$|G|=n$，那么$G$为由$g$生成的$n$阶循环群，于是$G\cong \Z/n\Z$。

### 2.4.4	第四题

证明：
$$
(\Z,+)\cong(\Q,+)\ncong (\R,+)
$$
证明：
$$
|\Z|=|\Q|=\aleph_0,\qquad |\R|=\aleph_1
$$

### 2.4.5	第五题

证明：
$$
(\R\setminus\{0\},\times)\ncong (\C\setminus\{0\},\times)
$$
证明：如果$(\R\setminus\{0\},\times)\cong (\C\setminus\{0\},\times)$，那么存在群同构态射$\varphi:\R\setminus\{0\}\to\C\setminus\{0\}$，即$\varphi$为双射。

注意到存在$x\in\R$，使得$\varphi(x)=i$，那么
$$
\varphi(x^4)=(\varphi(x))^4=i^4=1
$$
由于$\varphi$保持单位元，那么
$$
\varphi(1)=1=\varphi(x^4)
$$
于是$x^4=1$，因此$x^2=1$，进而
$$
1=\varphi(1)=\varphi(x^2)=(\varphi(x))^2=i^2=-1
$$
矛盾！因此
$$
(\R\setminus\{0\},\times)\ncong (\C\setminus\{0\},\times)
$$

### 2.4.6	第六题

证明：
$$
(\R,+)\cong (\R^+,\times)
$$
证明：构造映射
$$
\begin{align}
\varphi:& \R\to\R^+\\
& x\mapsto \mathrm{e}^x
\end{align}
$$
首先，证明$\varphi$为群同态映射。任取$x,y\in\R$，注意到
$$
\varphi(x+y)=\mathrm{e}^{x+y}=\mathrm{e}^x\mathrm{e}^y=\varphi(x)\varphi(y)
$$
因此$\varphi$为群同态映射。

其次，证明$\varphi$​为双射。构造映射
$$
\begin{align}
\psi:& \R^+\to\R\\
& x\mapsto \ln x
\end{align}
$$
注意到
$$
\psi\circ\varphi=\varphi\circ\psi=\mathbb{1}
$$
于是$\varphi$为双射。

综上所述，$\varphi$为群同构态射，因此$(\R,+)\cong (\R^+,\times)$。

### 2.4.7	第七题

证明：对于群$(G,*)$，映射$\varphi:g\mapsto g^{-1}$为同态映射，当且仅当映射$\psi:g\mapsto g^2$为同态映射，当且仅当$G$为Abel群。

证明：对于充分性，如果$G$为Abel群。任取$g,h\in G$，注意到
$$
\varphi(g*h)=(g*h)^{-1}=h^{-1}*g^{-1}=g^{-1}*h^{-1}=\varphi(g)*\varphi(h)
$$

$$
\psi(g*h)=(g*h)^2=g^2*h^2=\psi(g)*\psi(h)
$$

于是$\varphi$和$\psi$为同态映射。

对于必要性，如果$\varphi$为同态映射。任取$g,h\in G$，注意到
$$
g*h=(h^{-1}*g^{-1})^{-1}=\varphi(h^{-1}*g^{-1})=\varphi(h^{-1})*\varphi(g^{-1})=h*g
$$
因此$G$为Abel群。

如果$\psi$为同态映射。任取$g,h\in G$，注意到
$$
(g*h)^2=\psi(g*h)=\psi(g)*\psi(h)=g^2*h^2\implies h*g=g*h
$$
因此$G$为Abel群。

### <span id = '2.4.8'>2.4.8	第八题</span>

#### 2.4.8.1	第一问

对于群$(G,*)$以及$\mathscr{g}\in G$，定义映射：
$$
\begin{align}
\gamma_\mathscr{g}:& G\to G\\
&g\mapsto \mathscr{g}*g*\mathscr{g}^{-1}
\end{align}
$$
证明：$\gamma_\mathscr{g}$为$G$的自同构态射。

证明：首先，证明$\gamma_\mathscr{g}$为群同态映射。任取$g,h\in G$，注意到
$$
\gamma_\mathscr{g}(g*h)=\mathscr{g}*g*h*\mathscr{g}^{-1}=(\mathscr{g}*g*\mathscr{g}^{-1})*(\mathscr{g}*h*\mathscr{g}^{-1})=\gamma_\mathscr{g}(g)*\gamma_\mathscr{g}(h)
$$
因此$\gamma_\mathscr{g}$为群同态映射。

其次，证明$\gamma_\mathscr{g}$为双射。构造映射
$$
\begin{align}
\gamma_\mathscr{g}^{-1}:& G\to G\\
&g\mapsto \mathscr{g}^{-1}*g*\mathscr{g}
\end{align}
$$
显然$\gamma_\mathscr{g}^{-1}\circ \gamma_\mathscr{g}=\gamma_\mathscr{g}\circ \gamma_\mathscr{g}^{-1}=\mathbb{1}_G$，因此$\gamma_\mathscr{g}$为双射。

综上所述，$\gamma_\mathscr{g}$为$G$的自同构态射。

#### 2.4.8.2	第二问

定义态射：
$$
\begin{align}
\varphi:& G\to \mathrm{Aut}(G)\\
&\mathscr{g}\mapsto \gamma_\mathscr{g}
\end{align}
$$
证明：$\varphi$为同态映射。

证明：任取$\mathscr{g},\mathscr{h},k\in G$，注意到
$$
\small{
\gamma_{\mathscr{g*h}}(k)
=(\mathscr{g*h})*k*(\mathscr{g*h})^{-1}
=\mathscr{h}*(\mathscr{g}*k*\mathscr{g}^{-1})*\mathscr{g*h}^{-1}
=\gamma_{\mathscr{g}}( \gamma_{\mathscr{h}}(k))=\gamma_{\mathscr{g}}\circ \gamma_{\mathscr{h}}(k)
}
$$
因此
$$
\varphi(\mathscr{g}*\mathscr{h})=\gamma_{\mathscr{g*h}}=\gamma_{\mathscr{g}}\circ \gamma_{\mathscr{h}}
$$
于是$\varphi$为同态映射。

#### 2.4.8.3	第三问

证明：同态映射$\varphi$是平凡的，当且仅当$G$是交换的。

证明：对于必要性，如果同态映射$\varphi$是平凡的，那么对于任意$\mathscr{g}\in G$，$\varphi(\mathscr{g})=\gamma_{\mathscr{g}}=\mathbb{1}_G$，因此对于任意$g\in G$，成立$\gamma_{\mathscr{g}}(g)=g$，于是
$$
\mathscr{g}^{-1}*g*\mathscr{g}=g\implies g*\mathscr{g}=\mathscr{g}*g
$$
进而$G$是交换的。

对于充分性，如果$G$是交换的，那么对于任意$\mathscr{g}\in G$​
$$
\varphi(\mathscr{g})=\gamma_{\mathscr{g}}={\mathscr{g}}*\cdot*{\mathscr{g}}^{-1}=\cdot
$$
于是$\varphi(\mathscr{g})=\mathbb{1}_G$是平凡的。

### 2.4.9	第九题

证明：对于$p,q\in\N^*$，如果$\mathrm{gcd}(p,q)=1$，那么$C_{pq}\cong C_p\times C_q$。

证明：构造映射
$$
\begin{align}
\varphi:&C_p\times C_q\to C_{pq}\\
& ([a]_p,[b]_q)\mapsto[anq+bmp]_{pq}
\end{align}
$$
其中$[mp]_{q}=[1]_q$且$[nq]_{p}=[1]_p$，$\mathrm{gcd}(p,q)=1$保证了$m,n$的存在性。事实上，由[2.2.13](#2.2.13)，存在$m,n$，使得成立$mp+nq=1$，于是$[mp]_{q}=[1]_q$且$[nq]_{p}=[1]_p$。

首先，证明$\varphi$的定义良好性。任取$a,b,c,d$，满足$[a]_p=[c]_p$且$[b]_q=[d]_q$，那么
$$
\varphi([a]_p,[b]_q)=[anq+bmp]_{pq}=[bnq+dmp]_{pq}=\varphi([c]_p,[d]_q)
$$

其次，证明$\varphi$为同态映射。任取$a,b,c,d$，注意到
$$
\begin{align}
 & \varphi(([a]_p,[b]_q)+([c]_p,[d]_q))\\
=& \varphi([a+c]_p,[b+d]_q)\\
=& [(a+c)nq+(b+d)mp]_{pq}\\
=& [anq+bmp]_{pq}+[cnq+dmp]_{pq}\\
=& \varphi([a]_p,[b]_q)+\varphi([c]_p,[d]_q)
\end{align}
$$

最后，证明$\varphi$为双射。任取$a,b,c,d$​，注意到
$$
\begin{align}
         & \varphi([a]_p,[b]_q)=\varphi([c]_p,[d]_q)\\
\implies & [anq+bmp]_{pq}=[cnq+dmp]_{pq}\\
\implies & [(a-c)nq+(b-d)mp]_{pq}=0\\
\implies & [(a-c)nq+(b-d)mp]_{p}=0,\\
         & [(a-c)nq+(b-d)mp]_{q}=0\\
\implies & [(a-c)nq]_{p}=0,\\
         & [(b-d)mp]_{q}=0\\
\implies & [a]_p=[c]_p,\quad [b]_q=[d]_q
\end{align}
$$
于是$\varphi$为单射。又$|C_{pq}|=|C_{p}\times C_{q}|=pq$，那么$\varphi$为双射。

综上所述，得到如下结论，原命题得证！
$$
C_{pq}\cong C_p\times C_q
$$

### 2.4.10	第十题

证明：对于奇素数$p\ne q$，$(\Z/pq\Z)^*$不是循环群。

证明：令$n=\frac{(p-1)(q-1)}{2}$，任取$[m]_{pq}\in(\Z/pq\Z)^*$，那么$p\nmid m$且$q\nmid m$，由Fermat小定理
$$
m^{p-1}\equiv  1 \mod p\\
m^{q-1}\equiv  1 \mod q
$$
由于$p,q$均为奇数，那么$p-1\mid n$且$q-1\mid n$，因此$p\mid m^n-1$且$q\mid m^n-1$，又因为$p,q$互素，所以$pq\mid m^n-1$，即
$$
m^n\equiv 1\mod pq
$$
所以$(\Z/pq\Z)^*$中元素的阶均为$n$，不存在阶为$|(\Z/pq\Z)^*|=(p-1)(q-1)$的元素，因此$(\Z/pq\Z)^*$不是循环群。

> 引理：
> $$
> p\ne q \text{ is odd prime, and } \mathrm{gcd}(n,pq)=1\implies n^{\frac{(p-1)(q-1)}{2}}\equiv 1\mod pq
> $$

### <span id = '2.4.11'>2.4.11	第十一题</span>

对于素数$p$，证明：
$$
(\Z/p\Z)^*\cong C_{p-1}
$$
证明：$p=2$时结论显然，当$p$为奇素数时

$$
(\Z/p\Z)^*=\{ [n]_p:\mathrm{gcd}(n,p)=1 \}=\{ [n]_{p}:1\le n<p \}
$$
取$a$为模$p$的原根，构造映射
$$
\begin{align}
\varphi:&C_{p-1}\to(\Z/p\Z)^*\\
& [n]_{p-1}\mapsto [a^n]_{p}
\end{align}
$$
首先，证明$\varphi$的定义良好性。一方面，任取$[n]_{p-1}$，由于$[a]_p\in (\Z/p\Z)^*$，那么$\mathrm{gcd}(a,p)=1$，于是$\mathrm{gcd}(a^n,p)=1$，于是$[a^n]\in(\Z/p\Z)^*$。另一方面，任取$[m]_{p-1}=[n]_{p-1}$，那么由Fermat小定理，$[a^m]_p=[a^n]_p$。于是$\varphi$定义良好。

其次，证明$\varphi$为同构态射。任取$[m]_{p-1},[n]_{p-1}\in C_{p-1}$，注意到
$$
\varphi([m]_{p-1}+[n]_{p-1})=\varphi([m+n]_{p-1})=[a^{m+n}]_p=[a^m]_p[a^n]_p=\varphi([m]_{p-1})\varphi([n]_{p-1})
$$
最后，证明$\varphi$为双射。任取$[m]_{p-1},[n]_{p-1}\in C_{p-1}$，不妨$m\ge n$，注意到
$$
\begin{align}
         & \varphi([m]_{p-1})=\varphi([n]_{p-1})\\
\implies & [a^m]_{p}=[a^n]_p\\
\implies & a^{m-n}\equiv 1\mod p\\
\implies & \phi(p)\mid m-n\\
\implies & m\equiv n\mod p-1\\
\implies & [m]_{p-1}=[n]_{p-1}
\end{align}
$$

任取$[m]_{p}\in(\Z/p\Z)^*$，由于$a$为模$p$的原根，所以存在$n\in\N^*$，使得成立$a^n\equiv m\mod p$，于是$\varphi([n]_{p-1})=[a^n]_{p}=[m]_p$。因此$\varphi$为双射。

综上所述，对于素数$p$，成立
$$
(\Z/p\Z)^*\cong C_{p-1}
$$

### 2.4.12	第十二题

#### 2.4.12.1	第一问

在群$(\Z/31\Z)^*$中，计算$[9]_{31}$的阶。

证明：
$$
(\Z/31\Z)^*=\{ [n]_{31}:1\le n\le30 \}
$$
注意到
$$
\begin{align}
&[9^1]_{31}=[9]_{31},\quad
[9^2]_{31}=[19]_{31},\quad
[9^3]_{31}=[16]_{31},\quad
[9^4]_{31}=[20]_{31},\quad
[9^5]_{31}=[25]_{31}\\

&[9^6]_{31}=[8]_{31},\quad
[9^7]_{31}=[10]_{31},\quad
[9^8]_{31}=[28]_{31},\quad
[9^9]_{31}=[4]_{31},\quad
[9^{10}]_{31}=[5]_{31}\\

&[9^{11}]_{31}=[14]_{31},\quad
[9^{12}]_{31}=[2]_{31},\quad
[9^{13}]_{31}=[18]_{31},\quad
[9^{14}]_{31}=[7]_{31},\quad
[9^{15}]_{31}=[9]_{31}
\end{align}
$$
因此$|[9]_{31}|=15$。

#### 2.4.12.2	第二问

方程$x^3=9$在群$\Z/31\Z$中是否有根？

证明：如果$c$为方程$x^3=9$在群$\Z/31\Z$中的根，那么
$$
\frac{|[c]_{31}|}{\mathrm{gcd}(3,|[c]_{31}|)}=|[c^3]_{31}|=|[9]_{31}|=15
$$
如果$\mathrm{gcd}(3,|[c]_{31}|)=1$，那么$|[c]_{31}|=15$，矛盾！

如果$\mathrm{gcd}(3,|[c]_{31}|)=3$，那么$|[c]_{31}|=45>30$，矛盾！

因此方程$x^3=9$在群$\Z/31\Z$中不存在根。

### 2.4.13	第十三题

证明：
$$
\mathrm{Aut}_{\mathsf{Grp}}(\Z/2\Z\times \Z/2\Z)\cong S_3
$$
证明：
$$
\Z/2\Z\times \Z/2\Z=\{ ([0]_2,[0]_2),([0]_2,[1]_2),([1]_2,[0]_2),([1]_2,[1]_2) \}
$$

$$
S_3=\{ (1),(12),(23),(31),(123),(132) \}
$$

记
$$
G=\Z/2\Z\times \Z/2\Z,\quad 
e=([0]_2,[0]_2),\quad 
i=([1]_2,[1]_2),\quad
u=([1]_2,[0]_2),\quad 
v=([0]_2,[1]_2)
$$
那么$G=\{ e,i,u,v \}$，加法运算表为

|      | $e$  | $i$  | $u$  | $v$  |
| :--: | :--: | :--: | :--: | :--: |
| $e$  | $e$  | $i$  | $u$  | $v$  |
| $i$  | $i$  | $e$  | $v$  | $u$  |
| $u$  | $u$  | $v$  | $e$  | $i$  |
| $v$  | $v$  | $u$  | $i$  | $e$  |

$\mathrm{Aut}_{\mathsf{Grp}}(G)$如下：
$$
\begin{align}
& \begin{pmatrix}
e&\mapsto& e\\
i&\mapsto& i\\
u&\mapsto& u\\
v&\mapsto& v
\end{pmatrix},\qquad

\begin{pmatrix}
e&\mapsto& e\\
i&\mapsto& i\\
u&\mapsto& v\\
v&\mapsto& u
\end{pmatrix},\qquad

\begin{pmatrix}
e&\mapsto& e\\
i&\mapsto& u\\
u&\mapsto& i\\
v&\mapsto& v
\end{pmatrix}\\

\\

&\begin{pmatrix}
e&\mapsto& e\\
i&\mapsto& u\\
u&\mapsto& v\\
v&\mapsto& i
\end{pmatrix},\qquad

\begin{pmatrix}
e&\mapsto& e\\
i&\mapsto& v\\
u&\mapsto& i\\
v&\mapsto& u
\end{pmatrix},\qquad

\begin{pmatrix}
e&\mapsto& e\\
i&\mapsto& v\\
u&\mapsto& i\\
v&\mapsto& u
\end{pmatrix}
\end{align}
$$
显然
$$
\mathrm{Aut}_{\mathsf{Grp}}(\Z/2\Z\times \Z/2\Z)=\mathrm{Aut}_{\mathsf{Grp}}(G)\cong S_3
$$

### 2.4.14	第十四题

证明：
$$
|\mathrm{Aut}_{\mathsf{Grp}}(C_n)|=\phi(n)
$$
证明：任取$p\in\{ p\in\N^*:1\le p<n,\mathrm{gcd}(p,n)=1 \}$，那么$[p]_n$为$C_n$的生成元，容易知道这样的$p$有$\phi(n)$个。对于同构态射$\varphi:C_n\to C_n$，$\varphi(p)$确定且唯一确定，因此$|\mathrm{Aut}_{\mathsf{Grp}}(C_n)|=\phi(n)$。

### 2.4.15	第十五题

对于素数$p$，证明：
$$
\mathrm{Aut}_{\mathsf{Grp}}(C_p)\cong C_{p-1}
$$
证明：由于$p$为素数，那么$G$中任意非零元$g$均为$C_p$的生成元，且同构态射$\varphi:C_p\to C_p$由$\varphi(g)$确定且唯一确定，而$C_p$中任意非零元构成$(\Z/p\Z)^*$​，于是由[2.4.11](#2.4.11)
$$
\mathrm{Aut}_{\mathsf{Grp}}(C_p)
\cong(\Z/p\Z)^*
\cong C_{p-1}
$$

### 2.4.16	第十六题

**Wilson定理**：
$$
p \ \text{is prime} \iff (p-1)!\equiv -1\mod p
$$
证明：对于充分性，如果$(p-1)!\equiv -1\mod p$，且$p$为合数。显然$p\ne 4$，当$p\ge 5$时，存在$1\le a<b\le p-1$，使得成立$ab=p$，于是$(p-1)!\equiv 0\mod p$，矛盾！因此$p$为素数。

对于必要性，如果$p$为素数。$p=2$时显然成立，因此考虑$p$为奇素数。由原根存在定理，令$a$为模$p$的原根。由Fermat小定理，$a^{p-1}\equiv 1\mod p$，因此$a^{\frac{p-1}{2}}\equiv -1\mod p$，进而
$$
(p-1)!
\equiv \prod_{k=1}^{p-1}a^k
\equiv (a^{\frac{p-1}{2}})^p
\equiv (-1)^p
\equiv -1\mod p
$$

### 2.4.17	第十七题

对于小素数$p$，找到循环群$(\Z/p\Z)^*$的生成元。

证明：原根列表

| $n$  |         原根          |
| :--: | :-------------------: |
| $2$  |          $1$          |
| $3$  |          $2$          |
| $5$  |         $2,3$         |
| $7$  |         $3,5$         |
| $11$ |       $2,6,7,8$       |
| $13$ |      $2,6,7,11$       |
| $17$ | $3,5,6,7,10,11,12,14$ |
| $19$ |   $2,3,10,13,14,15$   |

### 2.4.18	第十八题

证明：对于群$(G,+)$和$(H,\times)$，如果$G\cong H$​，那么
$$
G\ \text{is commutative}\iff
H\ \text{is commutative}
$$
证明：由对称性，只需证明充分性，如果$H$是可交换的，那么任取$a,b\in G$。由于$G\cong H$，存在双的同态映射$\varphi:G\to H$，于是
$$
a+b=\varphi^{-1}\circ\varphi(a+b)
=\varphi^{-1}(\varphi(a)\varphi(b))
=\varphi^{-1}(\varphi(b)\varphi(a))
=\varphi^{-1}\circ\varphi(b+a)
=b+a
$$
因此$G$是可交换的。

## 2.5	自由群

### 2.5.1	第一题

由集合$S$诱导的范畴$\mathscr{F}^S$是否存在终止对象？

证明：范畴$\mathscr{F}^S$的终止对象$(f,F)$满足：那么对于任意$(j,G)\in\mathrm{Obj}(\mathscr{F}^S)$，存在且存在唯一态射$(j,G)\to(f,F)$，即存在且存在唯一群同态映射$\varphi:G\to F$，使得成立$\varphi\circ j=f$。

$(j_e,\{e\})$为范畴$\mathscr{F}^S$的终止对象，其中$j_e:S\to\{e\}$。

### 2.5.2	第二题

证明：$(j_e,\{e\})$不为$\mathscr{F}^S$的初始对象，其中$j_e:S\to\{e\}$，除非$S=\varnothing$。

证明：范畴$\mathscr{F}^S$的初始对象$(i,I)$满足：那么对于任意$(j,G)\in\mathrm{Obj}(\mathscr{F}^S)$，存在且存在唯一态射$(i,I)\to(j,G)$，即存在且存在唯一群同态映射$\varphi:I\to G$，使得成立$\varphi \circ i=j$。

如果$(j_e,\{e\})$为$\mathscr{F}^S$的初始对象，那么取$G=C_2$，那么不存在群同态映射$\varphi:\{e\}\to \{[0]_2,[1]_2\}$，于是$(j_e,\{e\})$不为$\mathscr{F}^S$的初始对象，除非$S=\varnothing$。

### 2.5.3	第三题

证明：$j:A \to F(A)$为单射。

证明：对于对称群$S_A$，定义映射$g_a:A\to A$为$x\mapsto a$，那么$g_a\in S_A$，因此定义映射$f:A\to S_A$为$a\mapsto g_a$，于是存在且存在唯一群同态映射$\varphi:F(A)\to S_A$，使得成立$\varphi\circ j=f$，于是
$$
\begin{align}
&j(x)=j(y)
\implies \varphi(j(x))=\varphi(j(y))
\iff (\varphi\circ j)(x)=(\varphi\circ j)(y)\\
&\iff f(x)=f(y)
\iff g_x=g_y
\iff x=y
\end{align}
$$

### 2.5.4	第四题

### <span id = '2.5.5'>2.5.5	第五题</span>

对于Abel群$(G,*)$，证明：$(G^{\oplus S},*)$为Abel群，其中
$$
G^{\oplus S}=\{ f:S\to G:f(s)\ne e \text{ for only finitely many elements } s\in S \}
$$
证明：$G^{\oplus S}$关于运算$*$封闭。

$f_e:S\to\{e\}$为单位元。

$f:S\to G$的逆元为$g:S\to G$，其中$f(s)*g(s)=e$。

### 2.5.6	第六题

证明：自由群$F(\{x,y\})$在范畴$\mathsf{Grp}$中是余积$\Z *\Z$。

证明：定义群同态映射
$$
i_x:\Z\to F(\{x,y\}),\qquad n\mapsto x^n\\
i_y:\Z\to F(\{x,y\}),\qquad n\mapsto y^n
$$
我们需要证明对于任意群$(G,*)$，以及群同态映射$\varphi_x,\varphi_y:(\Z,+)\to (G,*)$，存在且存在唯一群同态映射$\varphi:F(\{x,y\})\to (G,*)$，使得如下图交换。
$$
\xymatrix{
(\Z,+) \ar[dr]^{i_x} \ar@/^/[drr]^{\varphi_x} & & \\
 & F(\{x,y\}) \ar[r]^\varphi & (G,*) \\
(\Z,+) \ar[ur]_{i_y} \ar@/_/[urr]_{\varphi_y} & & \\
}
$$
定义群同态映射
$$
\small{
\begin{align}
\varphi:&F(\{x,t\})\to (G,*)\\
& z_1^{r_1}\cdots z_n^{r_n}\mapsto 
\varphi_x(r_1)^{\mathbb{1}_{\{x\}}(z_1)}*
\varphi_y(r_1)^{\mathbb{1}_{\{y\}}(z_1)}*\cdots*
\varphi_x(r_n)^{\mathbb{1}_{\{x\}}(z_n)}*
\varphi_y(r_n)^{\mathbb{1}_{\{y\}}(z_n)},z_k\in\{x,y\}
\end{align}
}
$$
此时$\varphi\circ i_x=\varphi_x$且$\varphi\circ i_y=\varphi_y$。

### 2.5.7	第七题

证明：自由群$F(\{x_1,\cdots,x_n\})$在范畴$\mathsf{Grp}$中是余积$\displaystyle\bigsqcup_{k=1}^{n}\Z$，并对Abel自由群$F^{\mathrm{ab}}(\{x_1,\cdots,x_n\})$证明类似的结论。

### 2.5.8	第八题

证明：
$$
F(A\sqcup B)=F(A)*F(B),\qquad 
F^{\mathrm{ab}}(A\sqcup B)=F^{\mathrm{ab}}(A)\oplus F^{\mathrm{ab}}(B)
$$

### 2.5.9	第九题

证明：
$$
\Z^{\oplus \N}\times \Z^{\oplus \N}\cong \Z^{\oplus \N}
$$

$$
\begin{align}
\Z^{\oplus \N}&=\{ f:\N\to \Z:f(n)\ne 0 \text{ for only finitely many elements } n\in \N \}\\
&=\{ (a_n)_{n=1}^{\infty}:a_n\in\Z \text{ and } a_n\ne 0 \text{ for only finitely many elements } n\in \N \}
\end{align}
$$

证明：由[2.5.5](#2.5.5)，$(\Z^{\oplus \N},+)$为Abel群，构造映射
$$
\begin{align}
\varphi:&\Z^{\oplus \N}\times \Z^{\oplus \N}\to \Z^{\oplus \N}\\
& ((a_1,a_2,\cdots),(b_1,b_2,\cdots))\mapsto (a_1,b_1,a_2,b_2,\cdots)
\end{align}
$$
首先证明$\varphi$为群同态映射。
$$
\begin{align}
&\varphi(((a_1,a_2,\cdots),(b_1,b_2,\cdots))+((c_1,c_2,\cdots),(d_1,d_2,\cdots)))\\
=&\varphi(((a_1+c_1,a_2+c_2,\cdots),(b_1+d_1,b_2+d_2,\cdots)))\\
=&(a_1+c_1,b_1+d_1,a_2+c_2,b_2+d_2,\cdots)\\
=&(a_1,b_1,a_2,b_2,\cdots)+(c_1,d_1,c_2,d_2,\cdots)\\
=&\varphi(((a_1,a_2,\cdots),(b_1,b_2,\cdots)))+\varphi(((c_1,c_2,\cdots),(d_1,d_2,\cdots)))
\end{align}
$$
其次容易证明$\varphi$为双射，进而$\Z^{\oplus \N}\times \Z^{\oplus \N}\cong \Z^{\oplus \N}$，命题得证！

### 2.5.10	第十题

#### 2.5.10.1	第一问

定义$F^{\mathrm{ab}}(S)$​上的等价关系
$$
a\sim b\iff \exists a-b\in 2F^{\mathrm{ab}}(S)
$$
证明：
$$
|F^{\mathrm{ab}}(S)/\sim|<\infty\iff |S|<\infty\implies |F^{\mathrm{ab}}(S)/\sim|=2^{|S|}
$$
证明：如果$|S|=\infty$，那么$F^{\mathrm{ab}}(S)=\Z^{\oplus S}$，其中
$$
\Z^{\oplus S}=\{ f:S\to \Z:f(s)\ne 0 \text{ for only finitely many elements } s\in S \}
$$

#### 2.5.10.2	第二问

证明：如果$F^{\mathrm{ab}}(A)\cong F^{\mathrm{ab}}(B)$，那么$A\cong B$，且$|A|<\infty\iff|B|<\infty$。

## 2.6	子群

### 2.6.1	第一题

#### <span id = '2.6.1.1'>2.6.1.1	第一问</span>

证明：对于群同态映射$\varphi:G\to H$，成立
$$
I<G\implies \varphi(I)<\text{im }\varphi
$$
证明：注意到，$\varphi(I)\sub\text{im }\varphi$，且
$$
\scriptsize{
g,h\in \varphi(I)
\iff \exists i,j\in I,\varphi(i)=g,\varphi(j)=h
\implies \exists i,j\in I,g*h^{-1}=\varphi(i)*\varphi(j)^{-1}=\varphi(i*j^{-1})\in \varphi(I)
}
$$
$\varphi(I)$为$\text{im }\varphi$的子群。

#### <span id = '2.6.1.2'>2.6.1.2	第二问</span>

证明：对于群同态映射$\varphi:G\to H$，成立
$$
J<\text{im }\varphi\implies \ker\varphi\sub \varphi^{-1}(J)<G
$$
证明：注意到，$\varphi^{-1}(J)\sub G$，且
$$
\scriptsize{
g,h\in \varphi^{-1}(J)
\iff \varphi(g),\varphi(h)\in J
\implies \varphi(g)*\varphi(h)^{-1}\in J
\iff \varphi(g*h^{-1})\in J
\iff g*h^{-1} \in \varphi^{-1}(J)
}
$$
因此$\varphi^{-1}(J)$为$G$的子群。而$0_H\in J$，因此$\ker\varphi=\varphi^{-1}(0_H)\sub \varphi^{-1}(J)$。

#### <span id = '2.6.1.3'>2.6.1.3	第三问</span>

证明：对于群同态映射$\varphi:G\to H$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ I:\ker\varphi\sub I<G \}&\longrightarrow \{ J<\text{im }\varphi \}\\
I&\longmapsto \varphi(I)
\end{aligned}
\end{align}
$$

证明：由[2.6.1.1](#2.6.1.1)，函数$\Psi$定义良好。

首先对于$\Psi$的单射性
$$
\scriptsize{
\Psi(I)=\Psi(J)
\iff \varphi(I)=\varphi(J)
\implies \varphi^{-1}(\varphi(I))=\varphi^{-1}(\varphi(J))
\iff I*\ker\varphi=J*\ker\varphi
\iff I=J
}
$$

其次对于$\Psi$的满射性。如果$J<\text{im }\varphi$，那么由[2.6.1.2](#2.6.1.2)，$\ker\varphi\sub \varphi^{-1}(J)<G$。注意到，$\Psi(\varphi^{-1}(J))=\varphi(\varphi^{-1}(J))=J\cap\text{im }\varphi=J$，因此$\Psi$为满射。

#### <span id = '2.6.1.4'>2.6.1.4	第四问</span>

证明：对于群同态映射$\varphi:G\to H$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ J<\text{im }\varphi \}&\longrightarrow \{ I:\ker\varphi\sub I<G \}\\
J&\longmapsto \varphi^{-1}(J)
\end{aligned}
\end{align}
$$
证明：由[2.6.1.2](#2.6.1.2)，函数$\Psi$定义良好。

首先对于$\Psi$的单射性
$$
\scriptsize{
\Psi(I)=\Psi(J)
\iff \varphi^{-1}(I)=\varphi^{-1}(J)
\implies \varphi(\varphi^{-1}(I))=\varphi(\varphi^{-1}(J))
\iff I\cap\text{im }\varphi=J\cap\text{im }\varphi
\iff I=J
}
$$
其次对于$\Psi$的满射性。如果$\ker\varphi\sub I<G$，那么由[2.6.1.1](#2.6.1.1)，$\varphi(I)<\text{im }\varphi$。注意到，$\Psi(\varphi(I))=\varphi^{-1}(\varphi(I))=I*\ker\varphi=I$，因此$\Psi$为满射。

#### <span id = '2.6.1.5'>2.6.1.5	第五问</span>

证明：对于群$(G,*)$，如果$N$为$G$的正规子群，那么
$$
\{ N*H:H <G \}=\{ H:N\sub H<G\}
$$
证明：由于
$$
H<G\implies N\sub H*N<G
$$
因此
$$
\{ N*H:H <G \}\sub \{ H:N\sub H<G\}
$$
由于
$$
N\sub H<G\implies H*N=H<G
$$
因此
$$
\{ N*H:H <G \}\supset \{ H:N\sub H<G\}
$$
综上所述
$$
\{ N*H:H <G \}=\{ H:N\sub H<G\}
$$

#### <span id = '2.6.1.6'>2.6.1.6	第六问</span>

证明：对于群同态映射$\varphi:G\to H$，如果$I$为$G$的子群，那么
$$
\frac{G}{\ker\varphi*I}\cong\frac{\text{im }\varphi}{\varphi(I)}
$$
证明：（优雅证明）注意到$\varphi(\ker\varphi*I)=\varphi(I)$，由[3.3.3.8](#3.3.3.8)
$$
\frac{G}{\ker\varphi*I}\cong\frac{\text{im }\varphi}{\varphi(\ker\varphi*I)}=\frac{\text{im }\varphi}{\varphi(I)}
$$

（朴素证明）定义映射
$$
\begin{align}
f:\begin{aligned}[t]
G&\longrightarrow \frac{\text{im }\varphi}{\varphi(I)}\\
g&\longmapsto \varphi(g)*\varphi(I)
\end{aligned}
\end{align}
$$

首先证明$f$为群同态映射，注意到
$$
f(g*h)=\varphi(g*h)*\varphi(I)=(\varphi(g)*\varphi(I))\bullet(\varphi(h)*\varphi(I))=f(g)\bullet f(h)
$$

其次证明$\ker f=\ker\varphi*I$，注意到
$$
\begin{align}
&g\in\ker f
\iff f(g)=\varphi(I)
\iff \varphi(g)*\varphi(I)=\varphi(I)\\
\iff &\varphi(g)\in\varphi(I)
\iff \exists i\in I,\varphi(g)=\varphi(i)
\iff \exists i\in I,g-i\in\ker\varphi\\
\iff&\exists i\in I,g\in\ker\varphi*i
\iff g\in\ker\varphi*I
\end{align}
$$

最后证明$\text{im }f=\text{im }\varphi/\varphi(I)$，这是显然的。

综上所述，由群同构第一定理
$$
\frac{G}{\ker\varphi*I}\cong\frac{\text{im }\varphi}{\varphi(I)}
$$

#### <span id = '2.6.1.7'>2.6.1.7	第一问</span>

证明：对于群同态映射$\varphi:G\to H$，如果$I\supset\ker\varphi$为$G$的子群，那么
$$
\frac{G}{I}\cong\frac{\text{im }\varphi}{\varphi(I)}
$$
证明：（优雅证明）由于$I\supset\ker\varphi$为$G$的子群，那么由[3.3.3.6](#3.3.3.6)，存在$G$的子群$J$，使得成立$I=\ker\varphi*J$。此时，$\varphi(I)=\varphi(\ker\varphi*J)=\varphi(J)$。由[3.3.3.7](#3.3.3.7)
$$
\frac{G}{I}=\frac{G}{\ker\varphi*J}\cong\frac{\text{im }\varphi}{\varphi(J)}=\frac{\text{im }\varphi}{\varphi(I)}
$$

（朴素证明）定义映射
$$
\begin{align}
f:\begin{aligned}[t]
G&\longrightarrow \frac{\text{im }\varphi}{\varphi(I)}\\
g&\longmapsto \varphi(g)*\varphi(I)
\end{aligned}
\end{align}
$$

首先证明$f$为群同态映射，注意到
$$
f(g*h)=\varphi(g*h)*\varphi(I)=(\varphi(g)*\varphi(I))\bullet (\varphi(h)*\varphi(I))=f(g)\bullet f(h)
$$

其次证明$\ker f=I$，注意到
$$
\begin{align}
&g\in\ker f
\iff f(g)=\varphi(I)
\iff \varphi(g)*\varphi(I)=\varphi(I)\\
\iff &\varphi(g)\in\varphi(I)
\iff \exists i\in I,\varphi(g)=\varphi(i)
\iff \exists i\in I,g-i\in\ker\varphi\\
\iff&\exists i\in I,g\in\ker\varphi*i
\iff g\in\ker\varphi*I=I
\end{align}
$$

最后证明$\text{im }f=\text{im }\varphi/\varphi(I)$，这是显然的。

综上所述，由群同构第一定理
$$
\frac{G}{I}\cong\frac{\text{im }\varphi}{\varphi(I)}
$$

#### <span id = '2.6.1.8'>2.6.1.8	第八问</span>

证明：如果$N$为群$(G,*,\;\cdot\;)$的子群，那么如下集合函数为双射。
$$
\begin{align}
\Phi:\begin{aligned}[t]
\{ H:N\sub H < G \}&\longrightarrow \{ K< G/N \}\\
H&\longmapsto H/N
\end{aligned}
\end{align}
$$

证明：（优雅证明）注意到如下自然群同态
$$
\begin{align}
\pi:\begin{aligned}[t]
G&\longrightarrow G/N\\
g&\longmapsto g*N
\end{aligned}
\end{align}
$$
其中$\ker\pi=N$，且$\text{im }\pi=G/N$。由[2.6.1.3](#2.6.1.3)，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ H:N\sub H<G \}&\longrightarrow \{ K<G/N \}\\
H&\longmapsto \pi(H)
\end{aligned}
\end{align}
$$
注意到
$$
\Phi(H)=H/N=\{ h*N:h\in H \}=\pi(H)=\Psi(H)
$$
因此$\Phi=\Psi$，进而$\Phi$为双射。

（朴素证明）首先证明$\varphi$的定义良好性。如果$N\sub H < G$，那么任取$g,h\in H$，因此$g*h^{-1}\in H$，进而
$$
(g*N)\bullet(h*N)^{-1}=(g*N)\bullet(h^{-1}*N)=(g*h^{-1})*N\in H/N
$$
因此$H/N$为$G/N$的子群，所以$\varphi$定义良好。

其次证明$\varphi$的单射性。如果$\varphi(H)=\varphi(K)$，那么$H/N=H/N$。任取$h\in H$，存在$k\in K$，使得成立$h*N=k*N$，因此$h\in k*N\sub K$，进而$H\sub K$。同理可得$K\sub H$，因此$H=N$，进而$\varphi$为单射。

最后证明$\varphi$的满射性。如果$K<G/N$，那么存在$H_0\sub G$，使得成立$K=\{ h*N:h\in H_0 \}$。任取$g,h\in H_0$，由于
$$
(g*h^{-1})*N=(g*N)\bullet(h^{-1}*N)=(g*N)\bullet(h*N)^{-1}\in K
$$
因此$g*h^{-1}\in H_0$，进而$H_0<G$。记$H=\lang H_0\cup N \rang$，那么$N\sub H<G$。任取$h=g_1*\cdots* g_n\in H$，其中对于任意$1\le k\le n$，成立$g_k\in H_0$或$g_k\in N$。不妨$n=2m$，且当$k$为奇数时，$g_k=h_{\frac{k+1}{2}}\in H_0$；当$k$为偶数时，$g_k=n_{\frac{k}{2}}\in N$。考察$h*N$
$$
\begin{align}
h*N=&(h_1*n_1*\cdots *h_{m-1}*n_{m-1}*h_m*n_m)*N\\
= & h_1*n_1*\cdots *h_{m-1}*n_{m-1}*h_m*n_m*N\\
= & h_1*n_1*\cdots *h_{m-1}*n_{m-1}*h_m*N\\
= & h_1*n_1*\cdots *h_{m-1}*n_{m-1}*N*h_m\\
= & \cdots\\
= & h_1*n_1*N*h_{2}*\cdots h_{m}\\
= & h_1*N*h_{2}*\cdots h_{m}\\
= & N*h_1*h_{2}*\cdots h_{m}\\
= & (h_1*h_{2}*\cdots h_{m})*N
\end{align}
$$
因此存在$h_0=h_1*h_{2}*\cdots h_{m}\in H_0$，使得成立$h*N=h_0*N\in K$，进而$H/N\sub K$。而显然$K\sub H/N$，因此$K=H/N$，进而$\varphi$为满射。

### 2.6.2	第二题

记$\C$上的$n$阶可逆矩阵群为$\mathrm{GL}_n(\C)$，$\C$上的$n$阶可逆上三角矩阵群为$U_n^*(\C)$，证明：$U^*_n(\C)$为$\mathrm{GL}_n(\C)$的子群。

证明：仅对$n=2$证明。
$$
\begin{pmatrix}
a&b\\
0&c
\end{pmatrix}
\begin{pmatrix}
d&e\\
0&f
\end{pmatrix}
=
\begin{pmatrix}
ad&ae+bf\\
0&cf
\end{pmatrix},\qquad
\begin{pmatrix}
a&b\\
0&c
\end{pmatrix}^{-1}=
\begin{pmatrix}
\frac{1}{a}&-\frac{b}{ac}\\
0&\frac{1}{c}
\end{pmatrix}
$$

### <spand id = '2.6.3'>2.6.3	第三题</span>

证明：
$$
\mathrm{SU}_2(\C)=
\left\{ \begin{pmatrix}
a+bi&c+di\\
-c+di&a-bi
\end{pmatrix}:a,b,c,d\in\R,a^2+b^2+c^2+d^2=1\right\}
$$

### 2.6.4	第四题

对于群$(G,*)$，以及元素$g\in G$，映射$\gamma_g(n)=g^n$，证明：$\gamma_g(\Z)$为循环群。

证明：如果$|g|=\infty$，那么$\Z\cong \gamma_g(\Z)$，同构态射为$k\mapsto g^k$。

如果$|g|=n$，那么$\Z_n\cong \gamma_g(\Z)$，同构态射为$[k]_n\to g^k$。

### 2.6.5	第五题

证明：如果$(G,*)$为交换群，那么对于$n\in\N^*$，$\{g^n:g\in G\}$为$G$的子群；如果$(G,*)$为非交换群，那么结论不成立。

证明：如果$G$为交换群，那么任取$g,h\in G$，成立$g^n*(h^n)^{-1}=g^n*(h^{-1})^n=(g*h^{-1})^n\in \{g^n:g\in G\}$，于是$\{g^n:g\in G\}$为$G$的子群。

### 2.6.6	第六题

证明：对于子群$H,K\sub G$，$H\cup K$为子群$\iff H\sub K$或$K\sub H$；一般的，如果$H_0\sub H_1\sub\cdots\sub G$为$G$的子群，那么$\displaystyle\bigcup_{n=0}^{\infty}H_n$为$G$的子群。

证明：充分性显然，对于必要性，如果$H\sub K$，那么命题成立。如果$H\not\sub K$，那么存在$h_0\in H$，使得成立$h_0\notin K$。由于$H\cup K$为子群，任取$k\in K$，因此$h_0,k\in H\cup K$，那么$h_0*k\in H\cup K$，于是存在$g\in H\cup K$，使得成立$h_0*k=g$。如果$g\in K$，那么$h_0=g*k^{-1}\in K$，矛盾！因此$g\in H$，于是$k=h_0^{-1}*g\in H$，进而$K\sub H$。充分性得证！

一般的，如果$H_0\sub H_1\sub\cdots\sub G$为$G$的子群，那么任取$h_1,h_2\in \displaystyle\bigcup_{n=0}^{\infty}H_n$，存在$n_1,n_2\in\N$，使得成立$h_1\in H_{n_1},h_2\in H_{n_2}$。不妨记$n_1\le n_2$，那么$h_1\in H_{n_1}\sub H_{n_2}$，因此$h_1*h_2^{-1}\in H_{n_2}\sub\displaystyle\bigcup_{n=0}^{\infty}H_n$，于是$\displaystyle\bigcup_{n=0}^{\infty}H_n$为$G$的子群。

### <span id = '2.6.7'>2.6.7	第七题</span>

[2.4.8](#2.4.8)：对于群$(G,*)$，以及$\mathscr{g}\in G$，定义群$G$的内自同构态射$\gamma_\mathscr{g}(g)=\mathscr{g}*g*\mathscr{g}^{-1}$，记$\mathrm{Inn}(G)=\{ \gamma_\mathscr{g}:G\to G:\mathscr{g}\in G \}$，那么$\mathrm{Inn}(G)$为$\mathrm{Aut}(G)$的子群。

证明：
$$
\mathrm{Inn}(G)\text{ is cyclic}
\iff
\mathrm{Inn}(G)\text{ is trivial}
\iff
G\text{ is abelian}
$$
证明：如果$G$是Abel群，那么对于任意$\mathscr{g}\in G$，$\gamma_\mathscr{g}=\mathbb{1}_G$，因此$\mathrm{Inn}(G)=\{ \mathbb{1}_G \}$为平凡群。

如果$\mathrm{Inn}(G)=\{ \mathbb{1}_G \}$为平凡群，那么显然$\mathrm{Inn}(G)=\{ \mathbb{1}_G \}\cong\Z/1\Z$为循环群。

如果$\mathrm{Inn}(G)$为循环群，那么存在$\mathscr{g}_0\in G$，使得对于任意$\mathscr{g}\in G$，存在$n\in\Z$，使得成立$\gamma_\mathscr{g}=\underbrace{\gamma_{\mathscr{g}_0}\circ\cdots\circ\gamma_{\mathscr{g}_0}}_{n\text{ times}}$，因此对于任意$g\in G$，成立$\mathscr{g}*g*\mathscr{g}^{-1}=\mathscr{g}_0^n*g*\mathscr{g}_0^{-n}$。取$g=\mathscr{g}_0$，可得$\mathscr{g}*\mathscr{g}_0=\mathscr{g}_0*\mathscr{g}$，因此$\gamma_{\mathscr{g}_0}=\mathbb{1}_G$，于是对于任意$\mathscr{g}\in G$，$\gamma_{\mathscr{g}}=\mathbb{1}_G$，因此$\mathrm{Inn}(G)=\{ \mathbb{1}_G \}$为平凡群。

如果$\mathrm{Inn}(G)=\{ \mathbb{1}_G \}$​为平凡群，那么对于任意$\mathscr{g}\in G$，$\varphi(\mathscr{g})=\gamma_{\mathscr{g}}=\mathbb{1}_G$，因此对于任意$g\in G$，成立$\gamma_{\mathscr{g}}(g)=g$，于是
$$
\mathscr{g}^{-1}*g*\mathscr{g}=g\implies g*\mathscr{g}=\mathscr{g}*g
$$
进而$G$是交换的。

### 2.6.8	第八题

证明：对于Abel群$(G,*)$，$G$是有限生成的$\iff$存在$n\in\N^*$，使得存在满的群同态映射$\Z^n\twoheadrightarrow G$。

证明：对于必要性，如果Abel群$G$是有限生成的，那么存在$g_1,\cdots,g_n\in G$，使得对于任意$g\in G$，存在$r_1,\cdots,r_n\in\Z$，使得成立$g=g_1^{r_1}*\cdots*g_n^{r_n}$。构造映射
$$
\begin{align}
\varphi:&\Z^n\to G\\
&(r_1,\cdots,r_n)\mapsto g_1^{r_1}*\cdots*g_n^{r_n}
\end{align}
$$
由$G=\lang g_1,\cdots,g_n \rang$可知$\varphi$为满射，且由$G$为Abel群容易证明$\varphi$为群同态映射。

对于充分性，如果存在$n\in\N^*$，使得存在满的群同态映射$\psi:\Z^n\twoheadrightarrow G$。记$\psi(0,\cdots,0,1,0,\cdots,0)=g_k$，其中$1\le k \le n$。由于$\psi$为满的，那么对于任意$g\in G$，存在$(r_1,\cdots,r_n)\in\Z^n$，使得成立
$$
\small{
g=\psi(r_1,\cdots,r_n)=\psi\left(\sum_{k=1}^{n}r_k(0,\cdots,0,1,0,\cdots,0)\right)=\prod_{k=1}^{n}(\psi(0,\cdots,0,1,0,\cdots,0))^{r_k}=g_1^{r_1}*\cdots*g_n^{r_n}
}
$$
于是$G=\lang g_1,\cdots,g_n \rang$。

### 2.6.9	第九题

#### <span id = '2.6.9.1'>2.6.9.1	第一问</span>

证明：$(\Q,+)$的有限生成子群为循环群，$(\Q,+)$不为有限生成群。

证明：仅对$(\Q,+)$的三元生成子群$\lang \frac{p_1}{q_1},\frac{p_2}{q_2},\frac{p_3}{q_3} \rang$进行证明，其中$p_k,q_k\in\N^*$，不妨$\mathrm{gcd}(p_k,q_k)=1$，且$p_iq_j\nmid p_jq_i$，其中$i,j,k\in\{1,2,3\}$，且$i\ne j$。

注意到$\lang \frac{p_1}{q_1},\frac{p_2}{q_2},\frac{p_3}{q_3} \rang=\frac{1}{q_1q_2q_3}\lang p_1q_2q_3,q_1p_2q_3,q_1q_2p_3 \rang$，记$A=p_1q_2q_3,B=q_1p_2q_3,C=q_1q_2p_3$，并记$\mathrm{gcd}(A,B,C)=r$，那么存在$a,b,c,A_0,B_0,C_0\in\Z$，使得成立$aA+bB+cC=r,A=rA_0,B=rB_0,C=rC_0,\mathrm{gcd}(A_0,B_0,C_0)=1$，于是$r\Z\sub\lang A,B,C \rang$。任取$s\in \lang A,B,C \rang$，于是存在$m,n,l\in\Z$，使得成立$s=mA+nB+lC=(mA_0+nB_0+lC_0)r\in r\Z$，于是$\lang A,B,C \rang\sub r\Z$，因此$\lang A,B,C \rang=r\Z$，进而$\lang \frac{p_1}{q_1},\frac{p_2}{q_2},\frac{p_3}{q_3} \rang=\frac{1}{q_1q_2q_3}\lang p_1q_2q_3,q_1p_2q_3,q_1q_2p_3 \rang=\frac{1}{q_1q_2q_3}\lang A,B,C \rang=\frac{r}{q_1q_2q_3}\Z$为循环群。

#### 2.6.9.2	第二问

证明：$(\Q,+)$不为有限生成群。

证明：反证，如果$(\Q,+)$为有限生成群，那么由[2.6.9.1](#2.6.9.1)，$(\Q,+)\cong\Z$，于是存在$p/q\in\Q$，不妨$\mathrm{gcd}(p,q)=1$且$p,q\in\N^*$，使得对于任意$r\in\Q$，存在$n\in\Z$，使得成立$r=(p/q)^n$。取$r\in\N^*\sub\Q$满足$\mathrm{gcd}(p,q,r)=1$，于是存在$n\in\Z$，使得成立$r=(p/q)^n$，不妨假设$n\in\N$，那么$p^n=rq^n$，矛盾！因此$(\Q,+)$不为有限生成群。

### 2.6.10	第十题

证明：
$$
\left\{ \begin{pmatrix}
a&b\\
c&d
\end{pmatrix}:a,b,c,d\in\Z,ad-bc=1\right\}
=\left\langle \begin{pmatrix}
0&-1\\1&0
\end{pmatrix},
\begin{pmatrix}
1&1\\0&1
\end{pmatrix}
\right\rangle
$$
证明：显然$\left\langle \begin{pmatrix}
0&-1\\1&0
\end{pmatrix},
\begin{pmatrix}
1&1\\0&1
\end{pmatrix}
\right\rangle\sub\left\{ \begin{pmatrix}
a&b\\
c&d
\end{pmatrix}:a,b,c,d\in\Z,ad-bc=1\right\}$，下面证明$\left\{ \begin{pmatrix}
a&b\\
c&d
\end{pmatrix}:a,b,c,d\in\Z,ad-bc=1\right\}\sub \left\langle \begin{pmatrix}
0&-1\\1&0
\end{pmatrix},
\begin{pmatrix}
1&1\\0&1
\end{pmatrix}
\right\rangle$​。注意到
$$
\small{
\begin{pmatrix}
0&-1\\1&0
\end{pmatrix}^{n}=
\begin{cases}
\begin{pmatrix}
1&0\\0&1
\end{pmatrix},\qquad & n\equiv 0\mod 4\\
\begin{pmatrix}
0&-1\\1&0
\end{pmatrix},\qquad & n\equiv 1\mod 4\\
\begin{pmatrix}
-1&0\\0&-1
\end{pmatrix},\qquad & n\equiv 2\mod 4\\
\begin{pmatrix}
0&1\\-1&0
\end{pmatrix},\qquad & n\equiv 3\mod 4\\
\end{cases},\qquad
\begin{pmatrix}
1&1\\0&1
\end{pmatrix}^n=
\begin{pmatrix}
1&n\\0&1
\end{pmatrix},\qquad n\in\N
}
$$

### 2.6.11	第十一题

### 2.6.12	第十二题

对于$m,n\in\N^*$，记$\mathrm{gcd}(m,n)=r$，证明：$\lang m,n \rang=r\Z$。

证明：注意到，存在$p,q\in\Z$，使得成立$pm+qn=r$，于是$r\Z \sub \lang m,n \rang$。任取$s\in \lang m,n \rang$，于是存在$a,b\in\Z$，使得成立$s=am+bn$。而$\mathrm{gcd}(m,n)=r$，那么存在$m_0,n_0\in\Z$，使得成立$m=m_0r,n=n_0r$，且$\mathrm{gcd}(m_0,n_0)=1$，因此$s=(am_0+bn_0)r\in r\Z$，于是$\lang m,n \rang \sub r\Z$，进而$\lang m,n \rang=r\Z$。

### 2.6.13	第十三题

### 2.6.14	第十四题

### <span id = '2.6.15'>2.6.15	第十五题</span>

证明：如果群同态映射存在左逆，那么其为单态射。

证明：如果群同态映射$\varphi$存在左逆$\psi$，任取$\alpha_1,\alpha_2$，满足$\varphi\circ \alpha_1=\varphi\circ \alpha_2$，那么
$$
\alpha_1=\mathbb{1}\circ \alpha_1=\psi\circ \varphi\circ \alpha_1=\psi\circ \varphi\circ \alpha_2=\mathbb{1}\circ \alpha_2=\alpha_2
$$
于是$\varphi$是单态射。

### 2.6.16	第十六题

构造[2.6.15](#2.6.15)的反例。

证明：构造群同态映射
$$
\begin{align}
\varphi:&\Z/3\Z\to S_3\\
&[0]_3\mapsto\begin{pmatrix}1&2&3\\1&2&3\end{pmatrix}\\
&[1]_3\mapsto\begin{pmatrix}1&2&3\\3&1&2\end{pmatrix}\\
&[2]_3\mapsto\begin{pmatrix}1&2&3\\2&3&1\end{pmatrix}\\
\end{align}
$$
一方面，任取$\alpha_1,\alpha_2:A\to \Z/3\Z$，满足$\varphi\circ \alpha_1=\varphi\circ \alpha_2$，注意到$\varphi:\Z/3\Z\to \varphi(\Z/3\Z)$为双射，因此$\alpha_1=\alpha_2$，于是$\varphi$为单态射。

另一方面，$S_3\to \Z/3\Z$仅存在平凡群同态映射，因此$\varphi$不存在左逆。

## 2.7	商群

### 2.7.1	第一题

#### <span id = '2.7.1.1'>2.7.1.1	第一问</span>

构造：对于群同态映射$\varphi:G\to H$，使得不成立$\text{im }\varphi\lhd H$。

证明：构造群同态映射
$$
\begin{align}
\varphi:\begin{aligned}[t]
\{\sigma,\tau\}&\longrightarrow D_3\\
\sigma&\longmapsto \sigma\\
\tau&\longmapsto \tau
\end{aligned}
\end{align}
$$
注意到$\varphi(\{\sigma,\tau\})=\{\sigma,\tau\}$不为$D_3$的正规子群。

#### <span id = '2.7.1.2'>2.7.1.2	第二问</span>

证明：对于群同态映射$\varphi:G\to H$，成立
$$
N\lhd G\implies \varphi(N)\lhd \text{im }\varphi
$$
证明：注意到，$\varphi(N)\sub\text{im }\varphi$，且
$$
\scriptsize{
\begin{align}
&g,h\in \varphi(N)
\iff \exists m,n\in N,\varphi(m)=g,\varphi(n)=h
\implies \exists m,n\in N,g*h^{-1}=\varphi(m)*\varphi(n)^{-1}=\varphi(m*n^{-1})\in \varphi(N)\\
&g\in G,n\in N\implies g*n*g^{-1}\in N\implies \varphi(g*n*g^{-1})\in\varphi(N)\iff \varphi(g)*\varphi(n)*\varphi(g)^{-1}\in\varphi(N)
\end{align}
}
$$
$\varphi(N)$为$\text{im }\varphi$的正规子群。

#### <span id = '2.7.1.3'>2.7.1.3	第三问</span>

证明：对于群同态映射$\varphi:G\to H$，成立
$$
M\lhd \text{im }\varphi\implies \ker\varphi\sub \varphi^{-1}(M)\lhd G
$$
证明：注意到，$\varphi^{-1}(M)\sub G$，且
$$
\scriptsize{
\begin{align}
&g,h\in \varphi^{-1}(M)
\iff \varphi(g),\varphi(h)\in M
\implies \varphi(g)*\varphi(h)^{-1}\in M
\iff \varphi(g*h^{-1})\in M
\iff g*h^{-1} \in \varphi^{-1}(M)\\
&g\in G,m\in\varphi^{-1}(M)\implies 
\varphi(g)\in \text{im }\varphi,\varphi(m)\in M\implies
\varphi(g*m*g^{-1})\in M
\iff g*m*g^{-1}\in\varphi^{-1}(M)
\end{align}
}
$$
因此$\varphi^{-1}(M)$为$G$的正规子群。而$0_H\in M$，因此$\ker\varphi=\varphi^{-1}(0_H)\sub \varphi^{-1}(M)$。

#### <span id = '2.7.1.4'>2.7.1.4	第四问</span>

证明：对于群同态映射$\varphi:G\to H$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ N:\ker\varphi\sub N\lhd G \}&\longrightarrow \{ M\lhd \text{im }\varphi \}\\
N&\longmapsto \varphi(N)
\end{aligned}
\end{align}
$$

证明：由[2.7.1.2](#2.7.1.2)，函数$\Psi$定义良好。

首先对于$\Psi$的单射性
$$
\scriptsize{
\Psi(N)=\Psi(M)
\iff \varphi(N)=\varphi(M)
\implies \varphi^{-1}(\varphi(N))=\varphi^{-1}(\varphi(M))
\iff N*\ker\varphi=M*\ker\varphi
\iff N=M
}
$$

其次对于$\Psi$的满射性。如果$M\lhd \text{im }\varphi$，那么由[2.7.1.3](#2.7.1.3)，$\ker\varphi\sub \varphi^{-1}(M)\lhd G$。注意到，$\Psi(\varphi^{-1}(M))=\varphi(\varphi^{-1}(M))=M\cap\text{im }\varphi=M$，因此$\Psi$为满射。

#### <span id = '2.7.1.5'>2.7.1.5	第五问</span>

证明：对于群同态映射$\varphi:G\to H$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ M\lhd \text{im }\varphi \}&\longrightarrow \{ N:\ker\varphi\sub N\lhd G \}\\
M&\longmapsto \varphi^{-1}(M)
\end{aligned}
\end{align}
$$
证明：由[2.7.1.3](#2.7.1.3)，函数$\Psi$定义良好。

首先对于$\Psi$的单射性
$$
\scriptsize{
\Psi(N)=\Psi(M)
\iff \varphi^{-1}(N)=\varphi^{-1}(M)
\implies \varphi(\varphi^{-1}(N))=\varphi(\varphi^{-1}(M))
\iff N\cap\text{im }\varphi=M\cap\text{im }\varphi
\iff N=M
}
$$
其次对于$\Psi$的满射性。如果$\ker\varphi\sub N\lhd G$，那么由[2.7.1.2](#2.7.1.2)，$\varphi(N)\lhd \text{im }\varphi$。注意到，$\Psi(\varphi(N))=\varphi^{-1}(\varphi(N))=N*\ker\varphi=N$，因此$\Psi$为满射。

#### <span id = '2.7.1.6'>2.7.1.6	第六问</span>

证明：如果$N$为群$(G,*,\;\cdot\;)$的正规子群，那么如下集合函数为双射。
$$
\begin{align}
\Phi:\begin{aligned}[t]
\{ M:N\sub M \lhd G \}&\longrightarrow \{ L\lhd G/N \}\\
M&\longmapsto M/N
\end{aligned}
\end{align}
$$

证明：（优雅证明）注意到如下自然群同态
$$
\begin{align}
\pi:\begin{aligned}[t]
G&\longrightarrow G/N\\
g&\longmapsto g*N
\end{aligned}
\end{align}
$$
其中$\ker\pi=N$，且$\text{im }\pi=G/N$。由[2.7.1.4](#2.7.1.4)，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ M:N\sub M \lhd G \}&\longrightarrow \{ L\lhd G/N \}\\
M&\longmapsto \pi(M)
\end{aligned}
\end{align}
$$
注意到
$$
\Phi(M)=M/N=\{ m*N:m\in M \}=\pi(M)=\Psi(M)
$$
因此$\Phi=\Psi$，进而$\Phi$为双射。

（朴素证明）首先证明$\varphi$的定义良好性。如果$N\sub M \lhd G$，那么任取$m,n\in M$，以及$g\in G$，因此$m*n^{-1}\in M$，且$g*m*g^{-1}\in M$，进而
$$
\begin{align}
&(m*N)\bullet(n*N)^{-1}=(m*N)\bullet(n^{-1}*N)=(m*n^{-1})*N\in M/N\\
&(g*N)\bullet(m*N)\bullet(g*N)^{-1}=(g*m*g^{-1})*N\in M/N
\end{align}
$$
因此$M/N$为$G/N$的正规子群，所以$\varphi$定义良好。

其次证明$\varphi$的单射性。如果$\varphi(M)=\varphi(L)$，那么$M/N=L/N$。任取$m\in M$，存在$l\in L$，使得成立$m*N=l*N$，因此$m\in l*N\sub L$，进而$M\sub L$。同理可得$L\sub M$，因此$L=M$，进而$\varphi$为单射。

最后证明$\varphi$的满射性。如果$L\lhd G/N$，那么存在$M_0\sub G$，使得成立$L=\{ m*N:m\in M_0 \}$。任取$m,n\in M_0$，以及$g\in G$，由于
$$
\begin{align}
&(m*n^{-1})*N=(m*N)\bullet(n^{-1}*N)=(m*N)\bullet(n*N)^{-1}\in L\\
&(g*m*g^{-1})*N=(g*N)\bullet(m*N)\bullet(g*N)^{-1}\in L
\end{align}
$$
因此$m*n^{-1}\in M_0$，且$g*m*g^{-1}\in M_0$，进而$M_0\lhd G$。记$M=[M_0\cup N]$，那么$N\sub M\lhd G$。任取$m=(g_1*h_1*g_1^{-1})*\cdots* (g_n*h_n*g_n^{-1})\in M$，其中对于任意$1\le i\le n$，成立$g_i\in G$，且$h_i\in M_0$或$h_i\in N$。不妨$n=2r$，且当$i$为奇数时，$h_i=m_{\frac{i+1}{2}}\in M_0$；当$i$为偶数时，$h_k=n_{\frac{k}{2}}\in N$。考察$m*N$
$$
\begin{align}
m*N=&((g_1*m_1*g_1^{-1})*\cdots* (g_{r}*m_{r}*g_{r}^{-1})*(g_r*n_r*g_r^{-1}))*N\\
= & g_1*m_1*g_1^{-1}*\cdots* g_{r}*m_{r}*g_{r}^{-1}*g_r*n_r*g_r^{-1}*N\\
= & g_1*m_1*g_1^{-1}\cdots* g_{r}*m_{r}*g_{r}^{-1}*g_r*n_r*N*g_r^{-1}\\
= & g_1*m_1*g_1^{-1}\cdots* g_{r}*m_{r}*g_{r}^{-1}*g_r*N*g_r^{-1}\\
= & g_1*m_1*g_1^{-1}\cdots* g_{r}*m_{r}*g_{r}^{-1}*N\\
= & g_1*m_1*g_1^{-1}\cdots* g_{r}*m_{r}*N*g_{r}^{-1}\\
= & g_1*m_1*g_1^{-1}\cdots* g_{r}*N*m_{r}*g_{r}^{-1}\\
= & g_1*m_1*g_1^{-1}\cdots*N* (g_{r}*m_{r}*g_{r}^{-1})\\
= & \cdots\\
= & N*(g_{1}*m_{1}*g_{1}^{-1})*\cdots*(g_{r}*m_{r}*g_{r}^{-1})\\
= & (g_{1}*m_{1}*g_{1}^{-1})*\cdots*(g_{r}*m_{r}*g_{r}^{-1})*N
\end{align}
$$
因此存在$m_0=(g_{1}*m_{1}*g_{1}^{-1})*\cdots*(g_{r}*m_{r}*g_{r}^{-1})\in M_0$，使得成立$m*N=m_0*N\in L$，进而$M/N\sub L$。而显然$L\sub M/N$，因此$L=M/N$，进而$\varphi$为满射。

### 2.7.2	第二题

写出$S_3$的全部子群，并分辨其中哪些为正规子群。

### 2.7.3	第三题

### 2.7.4	第四题

### 2.7.5	第五题

定义$\mathrm{SL}_2(\Z)$上的等价关系$A\sim B\iff A=B\text{ or }A+B=O$。证明：对于任取$A,B,M\in\mathrm{SL}_2(\Z)$，成立$A\sim B\implies AM\sim BM\text{ and }MA\sim MB$，且
$$
\mathrm{SL}_2(\Z)/\sim
=\left\langle \begin{pmatrix}
0&-1\\1&0
\end{pmatrix},
\begin{pmatrix}
1&1\\0&1
\end{pmatrix}
\right\rangle
$$

### 2.7.6	第六题

对于群$(G,*)$，以及$n\in\N^*$，定义关系$a\sim b\iff \exists g\in G,\text{ s.t. }a*b^{-1}=g^n$。

#### 2.7.6.1	第一问

证明：$\sim$不为等价关系。

证明：对于传递性，如果$a\sim b,b\sim c$，那么存在$g,h\in G$，使得成立$a*b^{-1}=g^n,b*c^{-1}=h^n$，因而$a*c^{-1}=g^n*h^n\ne(g*h)^n$。

#### 2.7.6.2	第二问

证明：如果$G$为可交换的，那么$\sim$为等价关系，且满足对于任意$a,b,g\in G$，成立$a\sim b\implies a*g\sim b*g\text{ and }g*a\sim g*b$。

证明：易证如果$G$为可交换的，那么$\sim$为等价关系。任取$a,b,g\in G$，如果$a\sim b$，那么存在$h\in G$，使得成立$a*b^{-1}=h^n$，因此$(a*g)*(b*g)^{-1}=(g*a)*(g*b)^{-1}=a*b^{-1}=h^n$，因此$a*g\sim b*g$且$g*a\sim g*b$。

### 2.7.7	第七题

对于群$G$，以及$n\in\N^*$，定义$N=\lang g\in G:|g|=n \rang$，证明：$N$为正规子群。

证明：任取$g\in G,h\in N$，那么$|h|=n$，注意到
$$
(g*h*g^{-1})^m=g*h^{m}*g^{-1}\begin{cases}
=e,\qquad & m=n\\
\ne e,\qquad & 1\le m<n
\end{cases}
$$
因此$|g*h*g^{-1}|=n$，于是$g*h*g^{-1}\in N$，进而$N$为正规子群。

### 2.7.8	第八题

证明：对于群$(G,*)$的子群$(H,*)$，以及$a,b\in G$，成立
$$
a^{-1}*b\in H \iff
b\in a*H \iff
a*H=b*H\\
a*b^{-1}\in H \iff
a\in H*b \iff
H*a=H*b
$$

### 2.7.9	第九题

证明：对于群$(G,*)$的左等价关系$\sim_L$与右等价关系$\sim_R$​，成立
$$
a\sim_L b\implies g*a\sim_L g*b,\qquad
a\sim_R b\implies a*g\sim_R b*g
$$

### 2.7.10	第十题

[2.6.7](#2.6.7)：对于群$(G,*)$，以及$\mathscr{g}\in G$，定义群$G$的内自同构态射$\gamma_\mathscr{g}(g)=\mathscr{g}*g*\mathscr{g}^{-1}$，记$\mathrm{Inn}(G)=\{ \gamma_\mathscr{g}:G\to G:\mathscr{g}\in G \}$。

证明：对于子群$N\sub G$，$N$为正规子群$\iff$对于任意$\mathscr{g}\in G$，成立$\gamma_{\mathscr{g}}(N)\sub N$。

考虑：如果$N\sub G$为正规子群，那么存在有趣的群同态映射$\mathrm{Inn}(G)\to\mathrm{Aut}(N)$。

证明：对于必要性，如果$N$为正规子群，那么任取$\mathscr{g}\in G$，可得$\gamma_{\mathscr{g}}(N)=\mathscr{g}*N*\mathscr{g}^{-1}=N$。

对于充分性，任取$\mathscr{g}\in G,n\in N$，那么$\mathscr{g}*n*\mathscr{g}^{-1}=\gamma_{\mathscr{g}}(n)\in\gamma_{\mathscr{g}}(N)\sub N$，因此$N$为正规子群。

有趣的群同态映射
$$
\begin{align}
&\mathrm{Inn}(G)\to\mathrm{Aut}(N)\\
&\gamma_\mathscr{g}:G\to G\mapsto \gamma_\mathscr{g}:N\to N
\end{align}
$$

### 2.7.11	第十一题

证明：$[G,G]=\lang g*h*g^{-1}*h^{-1}:g,h\in G \rang$为群$(G,*)$的正规子群。

证明：任取$g\in G,h\in[G,G]$，注意到$g*h*g^{-1}*h^{-1}\in [G,G]$，因此$g*h*g^{-1}\in [G,G]*h=[G,G]$，因此$[G,G]$为正规子群。


### 2.7.12	第十二题

对于集合$S$，自由群$F=F(S)$，Abel群$G$，集合函数$f:S\to G$，证明：$f$诱导了唯一一个群同态映射$F/[F,F]\to G$，且$F/[F,F]\cong F^{\mathrm{ab}}(S)$。

### 2.7.13	第十三题

证明：如果$F^{\mathrm{ab}}(A)\cong F^{\mathrm{ab}}(B)$，那么$A\cong B$，且$|A|<\infty\iff|B|<\infty$。

## 2.8	正则分解与Lagrange定理

### 2.8.1	第一题

证否：
$$
H\le G_1,G_2,\quad \frac{G_1}{H}\cong\frac{G_2}{H}\implies G_1\cong G_2
$$
证明：取$G_1=D_6,G_2=C_6,H=C_3$，那么$D_6/C_3=C_6/C_3=C_2$，但是$D_6\cong C_6$。

### 2.8.2	第二题

证明：
$$
N\le G,\quad [G:N]=2\implies N\lhd G
$$
证明：记$G/N=\{ N,g_0*N \}$，其中$g_0\ne e\in G$。任取$g\in G$，或$g\in N$，或$g\in g_0*N=G\setminus N$。如果$g\in N$，那么$g*N=N=N*g$；如果$g\in g_0*N=N*g_0$，那么$g*N=g_0*N=G\setminus N=N*g_0=N*g$。进而$N\lhd G$。

### 2.8.3	第三题

证明：有限群可被有限表示。

### 2.8.4	第四题

证明：$(a,b|a^2,b^2,(ab)^n)$是$D_{2n}$的表示。

### 2.8.5	第五题

证明：
$$
g\ne h\in G,\quad 
|g|=|h|=2,\quad 
|g*h|\ge 3
\implies 
\lang a,b \rang\cong D_{2n}
$$

### 2.8.6	第六题

### 2.8.7	第七题

### 2.8.8	第八题

证明：
$$
\mathrm{SL}_n(\R)\lhd \mathrm{GL}_n(\R)
$$
证明：任取$M\in \mathrm{GL}_n(\R),N\in \mathrm{SL}_n(\R)$，那么$\det(MNM^{-1})=\det(M)\det(N)\det(M^{-1})=\det(M)\det(M^{-1})=1$，因此$MNM^{-1}\in \mathrm{SL}_n(\R)$，进而$\mathrm{SL}_n(\R)\lhd \mathrm{GL}_n(\R)$。

### 2.8.9	第九题

证明：
$$
\mathrm{SO}_3(\R)\cong
\mathrm{SU}_2(\C)/\{ \pm I_2 \}
$$

### 2.8.10	第十题

描述：
$$
\frac{\R\times \R}{\Z\times\Z}
$$
证明：由于
$$
\R/\Z=\{ x+\Z:x\in\R \}=\{ x+\Z:x\in[0.1) \}
$$
那么
$$
\frac{\R\times \R}{\Z\times\Z}
=\{ (x,y)+\Z\times\Z:(x,y)\in\R\times\R \}
=\{ (x,y)+\Z\times\Z:(x,y)\in[0,1)\times[0,1) \}
$$

### 2.8.11	第十一题

证明：如果$N \lhd G,$
$$
H \lhd G\iff 
\frac{N}{H}\lhd\frac{G}{H}
$$

### 2.8.12	第十二题

证明：
$$
H\le G,\quad N\lhd G\implies HN\le G
$$

### 2.8.13	第十三题

对于有限交换群$(G,*)$，证明：如果$|G|$为奇数，那么对于任意$g\in G$，存在$h\in G$，使得成立$h^2=g$。

### 2.8.14	第十四题

证明：对于群$(G,*)$，记$n=|G|<\infty$，如果$\mathrm{gcd}(n,k)=1$，那么对于任意$g\in G$，存在$h\in G$，使得成立$h^k=g$。

### 2.8.15	第十五题

证明：
$$
n\mid\phi(a^n-1)
$$

### 2.8.16	第十六题

**Euler定理**：如果$\mathrm{gcd}(a,n)=1$，那么
$$
a^{\phi(n)}\equiv 1\mod n
$$

### 2.8.17	第十七题

对于有限Abel群$G$，$p$为$n=|G|$的素因子，证明：$G$存在$p$阶元。

证明：当$n=2$时，结论显然成立。

假设当$n\le N-1$时结论成立，那么当$n=N$时，考虑循环群$\lang g \rang$，其中$g\ne e\in G$。如果$|g|$为素数，那么取$h=g$；如果$|g|$不为素数，令$|g|=rs$，其中$r$为素数，注意到$\displaystyle|g^s|=\frac{|g|}{\mathrm{gcd}(s,|g|)}=\frac{rs}{\mathrm{gcd}(s,rs)}=\frac{rs}{s}=r$，那么取$h=h^s$。因此存在$h\in\lang g \rang$，使得$q=|h|$为素数。如果$p=q$，那么结论成立；如果$q\ne p$，那么令$G_1=G/\lang h \rang$，于是$p\mid |G_1|$，此时$|G_1|=N/q\le N-1$，于是存在$x\lang h \rang\in G/\lang h \rang$，使得成立$|x\lang h \rang|=p$，进而
$$
\small{
x^p\lang h \rang=\lang h \rang \implies x^p=h^m\implies 
x^{pq}=h^{mq}\implies
(x^q)^p=e\implies
|x^q|\mid p\implies
|x^q|=1\text{ or }p
}
$$
如果$x^q=e$，那么
$$
x^q\lang h \rang =\lang h\rang\implies |x\lang h \rang |\mid q\implies p\mid q
$$
矛盾！因此$|x^q|=p$，进而$n=N$时结论成立。

### 2.8.18	第十八题

证明：$2n$阶Abel群存在且存在唯一$2$阶元，其中$n$为奇数。

证明：首先证明偶数阶群$G$存在$2$阶元。反证，如果$G$不存在$2$阶元，那么对于任意元素$a\in G\setminus\{e\}$，$a^2\ne e$，而存在$b\in G\setminus\{e\}$，使得$a*b=e$，因此使得互为逆元的元素成对出现，而由于群$G$的阶为偶数，那么$G\setminus\{e\}$的阶为奇数，矛盾！因此$G$存在$2$阶元。

其次证明$2$阶元唯一。若存在不同的$2$阶元$a,b$，考虑生成群
$$
\lang a,b \rang=\{ e,a,b,ab \}
$$
由Lagrange定理，可得$4\mid 2n$，矛盾！

### 2.8.19	第十九题

构造有限群$G$，$p$为$|G|$的非平凡因子，但是$G$不存在$p$阶子群。

证明：对于$A_4$，$6$为$|A_4|=12$的非平凡因子，但是$A_4$不存在$6$阶子群。

### 2.8.20	第二十题

证明：对于有限Abel群$G$，$p$为$|G|$的因子，证明：$G$存在$p$阶子群。

### 2.8.21	第二十一题

证明：对于群$(G,*)$的有限子群$H$和$K$​，成立
$$
|HK|=\frac{|H||K|}{|H\cap K|}
$$
证明：任取$a,b\in H\cap K$，那么$a,b\in H$且$a,b\in K$，因此$a*b^{-1}\in H$且$a*b^{-1}\in K$，于是$a*b^{-1}\in H\cap K$，进而$H\cap K\le H$。

定义等价关系$a\sim b\iff a^{-1}*b\in H\cap K$，那么$[H:H\cap K]=| H/\sim |$。记$H/\sim=\{ h_1,\cdots,h_r \}$，下面证明
$$
HK=\bigsqcup_{k=1}^{r}h_k K
$$
首先证明不交性，任取$i\ne j\in\{1,\cdots,r\}$，若$h_iK\cap h_jK\ne\varnothing$，令$a\in h_iK\cap h_jK$，那么$a\in h_iK$且$a\in h_jK$，于是存在$k_i,k_j\in K$，使得成立$a=h_i*k_i=h_j*k_j$，于是$h^{-1}_i*h_j=k_i*k^{-1}_j\in K$，因此$h^{-1}_i*h_j\in H\cap K$，进而$h_i\sim h_j$，矛盾！

其次证明等式，任取$h\in H,k\in K$，存在$i\in\{ 1,\cdots,r \}$，使得成立$h\sim h_i$，那么$h^{-1}_i*h\in H\cap K$，因此$h^{-1}_i*h\in K$，于是存在$k_h\in K$，使得成立$h=h_i*k_h$，于是$h*k=h_i*(k_h*k)\in h_i K$，于是$\displaystyle HK\sub\bigsqcup_{k=1}^{r}h_kK$。$\displaystyle HK\supset\bigsqcup_{k=1}^{r}h_kK$显然，于是$\displaystyle HK=\bigsqcup_{k=1}^{r}h_kK$。

由Lagrange定理
$$
|HK|=|K|| H/\sim |=|K|[H:H\cap K]=\frac{|H||K|}{|H\cap K|}
$$

### 2.8.22	第二十二题

对于群同态映射$\varphi:G\to H$，令$\displaystyle N=\bigcap_{\text{im }\varphi\sub K\lhd H}K$，证明：$H/N$在$\mathsf{Grp}$范畴中满足$\text{coker }\varphi$的万有性质。

### 2.8.23	第二十三题

考虑$S_3$的子群$G=\{ (1),(12) \}$，证明：包含映射$G\hookrightarrow S_3$为平凡映射，尽管不为满射。

### 2.8.24	第二十四题

证明：$\mathsf{Grp}$范畴中的满态射不必存在右逆。

### 2.8.25	第二十五题

对于群$G$的交换正规子群$N$，构造有趣的群同态映射$G/N\to\mathrm{Aut}(N)$。

## 2.9	群作用

### 2.9.1	第一题

### 2.9.2	第二题

### 2.9.3	第三题

### 2.9.4	第四题

### 2.9.5	第五题

### 2.9.6	第六题

### 2.9.7	第七题

### 2.9.8	第八题

### 2.9.9	第九题

### 2.9.10	第十题

### 2.9.11	第十一题

### 2.9.12	第十二题

### 2.9.13	第十三题

### 2.9.14	第十四题

### 2.9.15	第十五题

### 2.9.16	第十六题

### 2.9.17	第十七题

### 2.9.18	第十八题

## 2.10	范畴中的群对象

### 2.10.1	第一题

### 2.10.2	第二题

### 2.10.3	第三题

### 2.10.4	第四题

### 2.10.5	第五题

#	第三章	环与模

## 3.1	环的定义

### <span id = '3.1.1'>3.1.1	第一题</span>

证明：对于环$R$，如果$0=1$，那么$R$为零环。

证明：这几乎是显然的。注意到
$$
1\cdot r=r,\qquad 0\cdot r=0
$$

### <span id = '3.1.2'>3.1.2	第二题</span>

对于集合$S$，定义二元运算
$$
\begin{align}
+:&\mathscr{P}(S)\times \mathscr{P}(S)\to \mathscr{P}(S)\\
&(A,B)\mapsto (A\cup B)\setminus(A\cap B)\\
\;\cdot\;:&\mathscr{P}(S)\times \mathscr{P}(S)\to \mathscr{P}(S)\\
&(A,B)\mapsto A\cap B
\end{align}
$$
证明：$(\mathscr{P}(S),+,\;\cdot\;)$为交换环。

证明：乘法结合律，加法交换律，乘法交换律显然！

加法单位元为$\varnothing$，乘法单位元为$S$。

加法逆元：$A$为$A$的加法逆元。

加法结合律：
$$
(A+B)+C=A+(B+C)=
(A\setminus(B\cup C))
\cup(B\setminus(C\cup A))
\cup (C\setminus(A\cup B))
$$
分配律：
$$
(A+B)\cdot C=A\cdot C+B\cdot C=((A\cup B)\cap C)\setminus (A\cap B\cap C)
$$

### 3.1.3	第三题

对于环$R$和集合$S$，说明如何定义定义二元运算$+$和$\cdot$，使得$(R^S,+,\;\cdot\;)$为环。

### 3.1.4	第四题

### 3.1.5	第五题

构造环$(R,+,\;\cdot\;)$的零因子$a,b\in R$，使得$a+b$不为零因子？

证明：$[2]_6$和$[3]_6$为$\Z/6\Z$的零因子，但是$[5]_6$不为$\Z/6\Z$的零因子。

### 3.1.6	第六题

**幂零(nilpotent)**：称环$(R,+,\;\cdot\;)$的元素$r\in R$为幂零的，如果存在$n\in\N$，使得成立$r^n=0$。

#### <span id = '3.1.6.1'>3.1.6.1	第一问</span>

证明：如果$r,s\in R$为幂零的，且$r\cdot s=s\cdot r$，那么$r+s$为幂零的。

证明：记$m,n\in\N$满足$r^m=s^n=0$，注意到
$$
(r+s)^{m+n}=\sum_{k=0}^{m+n}{m+n\choose k}r^{k}\cdot s^{m+n-k}=0
$$

#### <span id = '3.1.6.1'>3.1.6.2	第二问</span>

构造$r,s\in R$为幂零的，但是$r+s$不为幂零的。

证明：定义
$$
A=\begin{pmatrix}1&1\\-1&-1\end{pmatrix},\qquad
B=\begin{pmatrix}1&-1\\1&-1\end{pmatrix}
$$
那么
$$
A^2=B^2=\begin{pmatrix}0&0\\0&0\end{pmatrix},\qquad 
(A+B)^n=2^n\begin{pmatrix}1&0\\0&(-1)^n\end{pmatrix}
$$

### 3.1.7	第七题

证明：$[m]_n$为$\Z/n\Z$的幂零元素$\iff$对于$n$的任意素因子$p$，成立$p\mid m$。

证明：对于必要性，如果$[m]_n$为$\Z/n\Z$的幂零元素，那么存在$k\in\N$，使得成立$[m^k]_n=[0]_n$，即$n\mid m^k$。任取$n$的素因子$p$，成立$p\mid m^k$，因此$p\mid m$。

对于充分性，如果对于$n$的任意素因子$p$，成立$p\mid m$，那么对$n$素因子分解$\displaystyle n=\prod_{i=1}^{r}p_i$，因此存在正整数$\{ s_i \}_{i=1}^{r}$，使得对于任意$1\le i\le r$，成立$m=s_ip_i$，注意到$\displaystyle n=\prod_{i=1}^{r}p_i\mid \prod_{i=1}^{r}s_ip_i=m^r$，因此$n\mid m^r$，进而$[m]_n$为$\Z/n\Z$的幂零元素。

### 3.1.8	第八题

证明：方程$x^2=1$在整环中仅存在根$x=\pm 1$。

构造环$R$，使得方程$x^2=1$在环$R$中不仅存在根$x=\pm 1$。

证明：注意到
$$
x^2=1\implies (x+1)\cdot(x-1)=0\implies x+1=0\text{ or }x-1=0\implies x=\pm 1
$$
在环$\Z/8\Z$中$[1]_8,[-1]_8,[3]_8$均为$x^2=[1]_8$的根。

### 3.1.9	第九题

证明：环$(R,+,\;\cdot\;)$的单位依$\cdot$运算构成群。

证明：对于封闭性，任取单位$r,s\in R$，那么存在非零元$u,v\in R$，使得成立$u\cdot r=s\cdot v=1$，因此$u\cdot (r\cdot s)=(r\cdot s)\cdot v=1$，进而$r\cdot s$为单元。

对于单位元，注意到$1\in R$为单位。

对于逆元，任取单位$e\in R$，那么存在非零元$u,v\in R$，使得成立$u\cdot e=e\cdot v=1$，进而$u=u\cdot 1=u\cdot e\cdot v=1\cdot v=v$。

对于结合律，这是显然的！

### 3.1.10	第十题

证明：对于环$(R,+,\;\cdot\;)$，如果$e\in R$为右单位，且存在至少两个左逆，那么$e$不为左零因子，但为右零因子。

证明：如果存在$u,v,w\in R$，使得成立$u\cdot e=1$且$v\cdot e=w\cdot e=0$，因此$v,e$之一为非零元，进而$e$为有零因子。反证，如果$e$为左零因子，那么存在非零元$r\in R$，使得成立$e\cdot r=0$，进而$r=1\cdot r=u\cdot e \cdot r=u\cdot 0=0$，矛盾！因此$e$不为左零因子。

### 3.1.11	第十一题

构造四个元素的域。

证明：由于$4$阶群仅为$\Z/4\Z$和$\Z/2\Z\times \Z/2\Z$，而$\Z/4\Z$中$[2]_4$不为单位，因此$\Z/4\Z$不为域。

$\Z/2\Z\times \Z/2\Z$的加法运算表为

|      加法       | $([0]_2,[0]_2)$ | $([1]_2,[0]_2)$ | $([0]_2,[1]_2)$ | $([1]_2,[1]_2)$ |
| :-------------: | :-------------: | :-------------: | :-------------: | :-------------: |
| $([0]_2,[0]_2)$ | $([0]_2,[0]_2)$ | $([1]_2,[0]_2)$ | $([0]_2,[1]_2)$ | $([1]_2,[1]_2)$ |
| $([1]_2,[0]_2)$ | $([1]_2,[0]_2)$ | $([0]_2,[0]_2)$ | $([1]_2,[1]_2)$ | $([0]_2,[1]_2)$ |
| $([0]_2,[1]_2)$ | $([0]_2,[1]_2)$ | $([1]_2,[1]_2)$ | $([0]_2,[0]_2)$ | $([1]_2,[0]_2)$ |
| $([1]_2,[1]_2)$ | $([1]_2,[1]_2)$ | $([0]_2,[1]_2)$ | $([1]_2,[0]_2)$ | $([0]_2,[0]_2)$ |

乘法法运算表为

|      乘法       | $([0]_2,[0]_2)$ | $([1]_2,[0]_2)$ | $([0]_2,[1]_2)$ | $([1]_2,[1]_2)$ |
| :-------------: | :-------------: | :-------------: | :-------------: | :-------------: |
| $([0]_2,[0]_2)$ | $([0]_2,[0]_2)$ | $([0]_2,[0]_2)$ | $([0]_2,[0]_2)$ | $([0]_2,[0]_2)$ |
| $([1]_2,[0]_2)$ | $([0]_2,[0]_2)$ | $([0]_2,[1]_2)$ | $([1]_2,[1]_2)$ | $([1]_2,[0]_2)$ |
| $([0]_2,[1]_2)$ | $([0]_2,[0]_2)$ | $([1]_2,[1]_2)$ | $([1]_2,[0]_2)$ | $([0]_2,[1]_2)$ |
| $([1]_2,[1]_2)$ | $([0]_2,[0]_2)$ | $([1]_2,[0]_2)$ | $([0]_2,[1]_2)$ | $([1]_2,[1]_2)$ |

### 3.1.12	第十二题

定义
$$
\begin{align}
&\mathbb{H}=\{ a+bi+cj+dk:a,b,c,d\in\R \},\\
&\text{where }  i,j,k\text{ commute with }\R \text{ and satisfy the following relations:}\\
&i^2=j^2=k^2=-1,i\cdot j=-j\cdot i=k,\quad j\cdot k=-k\cdot j=i,\quad k\cdot i=-i\cdot k=j
\end{align}
$$
$\mathbb{H}$的元素称为**四元数(quaternion)**，$\mathbb{H}$的单位群的$8$阶非交换子群$Q_8=\{ \pm1,\pm i,\pm j,\pm k \}$称为**四元数群(quaternion group)**。

#### 3.1.12.1	第一问

证明：$(\mathbb{H},+,\;\cdot\;)$构成环。

证明：易证！

#### 3.1.12.2	第二问

计算：$(a+bi+cj+dk)\cdot(a-bi-cj-dk)$，其中$a,b,c,d\in\R$。

证明：
$$
(a+bi+cj+dk)\cdot(a-bi-cj-dk)=a^2+b^2+c^2+d^2
$$

#### 3.1.12.3	第三问

证明：$(\mathbb{H},+,\;\cdot\;)$构成除环。

证明：注意到
$$
(a+bi+cj+dk)\cdot\frac{a-bi-cj-dk}{a^2+b^2+c^2+d^2}=1
$$

#### 3.1.12.4	第四问

证明：$Q_8$的子群均为正规子群。

证明：$Q_8$的子群为
$$
\{1\},\quad \{ \pm 1 \},\quad \{ \pm 1,\pm i \},\quad \{ \pm 1,\pm j \},\quad \{ \pm 1,\pm k \},\quad \{ \pm1,\pm i,\pm j,\pm k \}
$$

#### 3.1.12.5	第五问

证明：$Q_8\not\cong D_8$

证明：$D_8$存在非正规的子群$\{ \mathbb{1},\tau \}$。

#### 3.1.12.6	第六问

证明：$Q_8$由$(x,y\mid x^2y^{-2},y^4,xyx^{-1}y)$表示。

### 3.1.13	第十三题

证明：$R[x]$为环。

### 3.1.14	第十四题

#### 3.1.14.1	第一问

证明：对于$f(x),g(x)\in R[x]$，成立
$$
\deg(f(x)+g(x))\le \max(\deg(f(x)),\deg(g(x)))
$$

#### <span id = '3.1.14.2'>3.1.14.2	第二问</span>

证明：对于$f(x),g(x)\in R[x]$，如果$R$为整环，那么
$$
\deg(f(x)g(x))=\deg(f(x))+\deg(g(x))
$$

证明：记$\displaystyle f(x)=\sum_{k=0}^{m}a_k x^k,g(x)=\sum_{k=0}^{n}b_k x^k$，其中$a_m,b_n\ne0$，由于$R$为整环，那么$a_mb_n\ne 0$，因此
$$
\begin{align}
&f(x)g(x)=\sum_{k=0}^{m+n}\sum_{i+j=k}a_i b_j x^{k}=a_mb_nx^{m+n}+\sum_{k=0}^{m+n-1}\sum_{i+j=k}a_i b_j x^{k}\\
\implies &\deg(f(x)g(x))=m+n=\deg(f(x))+\deg(g(x))
\end{align}
$$

### <span id = '3.1.15'>3.1.15	第十五题</span>

证明：$R[x]$为整环$\iff R$为整环。

证明：如果$R[x]$为整环，那么任取$a,b\in R$，使得成立$ab=0$，注意到$ax,bx\in R[x]$，因此$ax\cdot bx=abx^2=0$，进而$ax=0$或$bx=0$，于是$a=0$或$b=0$，那么$R$为整环。

如果$R$为整环，那么任取$f(x),g(x)\in R[x]$，使得成立$f(x)g(x)=0$，由[3.1.14.2](#3.1.14.2)，可得$\deg(f(x))+\deg(g(x))=\deg(f(x)g(x))=d(0)=-\infty$，因此$f(x)=0$或$g(x)=0$，进而$R[x]$为整环。

### 3.1.16	第十六题

#### 3.1.16.1	第一问

证明：$\displaystyle\sum_{n=0}^{\infty}a_n x^n$为$R[[x]]$的单位$\iff a_0$为$R$的单位。

证明：如果$\displaystyle\sum_{n=0}^{\infty}a_n x^n$为$R[[x]]$的单位，那么存在$\displaystyle\sum_{n=0}^{\infty}b_n x^n\in R[[x]]$，使得成立
$$
1=\left( \sum_{n=0}^{\infty}a_n x^n \right)\left( \sum_{n=0}^{\infty}b_n x^n \right)
=\sum_{n=0}^{\infty}\sum_{i+j=n}a_i b_j x^{n}\implies a_0b_0=1\\
1=\left( \sum_{n=0}^{\infty}b_n x^n \right)\left( \sum_{n=0}^{\infty}a_n x^n \right)
=\sum_{n=0}^{\infty}\sum_{i+j=n}a_i b_j x^{n}\implies b_0a_0=1
$$
因此$a_0\in R$为单位。

如果$a_0$为$R$的单位，那么存在$b_0,c_0\in R$，使得成立$a_0b_0=c_0a_0=1$，递归定义
$$
b_{n}=-c_0\sum_{i=1}^{n}a_ib_{n-i},\qquad c_n=-\sum_{i=1}^{n}c_{n-i}a_i\cdot b_0,\qquad n\in\N^*
$$
那么对于任意$n\in\N^*$，成立$\displaystyle \sum_{i+j=n}a_i b_j x^{n}=\sum_{i+j=n}c_i a_j x^{n}=0$​，进而
$$
\left( \sum_{n=0}^{\infty}a_n x^n \right)\left( \sum_{n=0}^{\infty}b_n x^n \right)
=\sum_{n=0}^{\infty}\sum_{i+j=n}a_i b_j x^{n}=a_0b_0+\sum_{n=1}^{\infty}\sum_{i+j=n}a_i b_j x^{n}=1\\
\left( \sum_{n=0}^{\infty}c_n x^n \right)\left( \sum_{n=0}^{\infty}a_n x^n \right)
=\sum_{n=0}^{\infty}\sum_{i+j=n}c_i a_j x^{n}=c_0a_0+\sum_{n=1}^{\infty}\sum_{i+j=n}c_i a_j x^{n}=1
$$
因此$\displaystyle\sum_{n=0}^{\infty}a_n x^n$为$R[[x]]$的单位。

#### 3.1.16.2	第二问

$1-x\in R[[x]]$的乘法逆元为什么？

证明：
$$
\sum_{n=0}^{\infty}x^n=\frac{1}{1-x}
$$

#### 3.1.16.3	第三问

证明：$R[[x]]$为整环$\iff R$为整环。

证明：如果$R[[x]]$为整环，那么任取$a,b\in R$，使得成立$ab=0$，注意到$ax,bx\in R[[x]]$，因此$ax\cdot bx=abx^2=0$，进而$ax=0$或$bx=0$，于是$a=0$或$b=0$，那么$R$为整环。

如果$R$为整环，那么任取$\displaystyle f(x)=\sum_{n=0}^{\infty}a_n x^n,g(x)=\sum_{n=0}^{\infty}b_n x^n$，使得成立$f(x)g(x)=0$。反证，如果$f(x)\ne 0$且$g(x)\ne 0$，那么记$s=\min\{ n\in \N:a_n\ne 0 \},r=\min\{ n\in \N:b_n\ne 0 \}$，因此$\displaystyle f(x)=\sum_{n=0}^{\infty}a_n x^n=x^s\sum_{n=0}^\infty a_{n+s} x^{n},g(x)=x^r\sum_{n=0}^{\infty}b_{n+r} x^n$，进而
$$
\begin{align}
&0=f(x)g(x)=x^{s+r}\left(\sum_{n=0}^\infty a_{n+s} x^{n}\right)\left(\sum_{n=0}^\infty b_{n+r} x^{n}\right)=\sum_{n=0}^{\infty}\sum_{i+j=n}a_{i+s}b_{j+r}x^{n+s+r}\\
\implies& 0=a_sb_r\implies a_s=0\text{ or }b_r=0
\end{align}
$$
矛盾！因此$f(x)=0$或$g(x)=0$，进而$R[[x]]$为整环！

### 3.1.17	第十七题

解释为什么多项式环$R[x]$与单环$R[\N]$意义相同。

## 3.2	$\mathsf{Ring}$范畴

### 3.2.1	第一题

证明：如果$\varphi:\{0\}\to R$为环同态映射，那么$R=\{0\}$。

证明：注意到
$$
0_R=\varphi(0)=\varphi(1)=1_R
$$
由[3.1.1](#3.1.1)，$R=\{0\}$。

### 3.2.2	第二题

对于环$R$和$S$，假设集合函数$\varphi:R\to S$对于$+$与$\;\cdot\;$运算封闭。

#### 3.2.2.1	第一问

证明：如果$\varphi$为满射，那么$\varphi(1_R)=1_S$。

证明：任取$s\in S$，由于$\varphi$为满射，因此存在$r\in R$，使得成立$\varphi(r)=s$。由于
$$
s\cdot\varphi(1_R)=\varphi(r)\cdot\varphi(1_R)=\varphi(r\cdot1_R)=\varphi(r)=s\\
\varphi(1_R)\cdot s=\varphi(1_R)\cdot\varphi(r)=\varphi(1_R\cdot s)=\varphi(r)=s
$$
那么$\varphi(1_R)=1_S$。

#### 3.2.2.2	第二问

证明：如果$\varphi\ne 0$且$S$为整环，那么$\varphi(1_R)=1_S$。

证明：因为$\varphi\ne0$，因此存在$r\in R$，使得成立$\varphi(r)\ne0$。注意到
$$
\varphi(r)=\varphi(r\cdot 1_R)=\varphi(r)\varphi(1_R)
$$
而$S$为整环，因此$\varphi(1_R)=1_S$。

### 3.2.3	第三题

### <span id = '3.2.4'>3.2.4	第四题</span>

定义集合函数
$$
\begin{align}
\varphi:\begin{aligned}[t]
\mathbb{H}&\longrightarrow\mathfrak{gl}_4(\R)\\
a+bi+cj+dk&\longmapsto 
\begin{pmatrix}
a&b&c&d\\
-b&a&-d&c\\
-c&d&a&-b\\
-d&-c&b&a
\end{pmatrix}
\end{aligned}
\end{align}
$$

$$
\begin{align}
\psi:\begin{aligned}[t]
\mathbb{H}&\longrightarrow\mathfrak{gl}_2(\C)\\
a+bi+cj+dk&\longmapsto \begin{pmatrix}
a+bi&c+di\\
-c+di&a-bi
\end{pmatrix}
\end{aligned}
\end{align}
$$

证明：$\varphi$和$\psi$为单的环同态映射。

证明：$\varphi$和$\psi$的单射性显然！

注意到
$$
\varphi(1)=\begin{pmatrix}
1&0&0&0\\
0&1&0&0\\
0&0&1&0\\
0&0&0&1
\end{pmatrix},\qquad 
\psi(1)=\begin{pmatrix}
1&0\\0&1
\end{pmatrix}
$$

$$
\begin{align}
&\varphi((a_1+b_1i+c_1j+d_1k)+(a_2+b_2i+c_2j+d_2k))\\
= & \varphi((a_1+a_2)+(b_1+b_2)i+(c_1+c_2)j+(d_1+d_2)k)\\
= & \begin{pmatrix}
(a_1+a_2)&(b_1+b_2)&(c_1+c_2)&(d_1+d_2)\\
-(b_1+b_2)&(a_1+a_2)&-(d_1+d_2)&(c_1+c_2)\\
-(c_1+c_2)&(d_1+d_2)&(a_1+a_2)&-(b_1+b_2)\\
-(d_1+d_2)&-(c_1+c_2)&(b_1+b_2)&(a_1+a_2)
\end{pmatrix}\\
= & \begin{pmatrix}
a_1&b_1&c_1&d_1\\
-b_1&a_1&-d_1&c_1\\
-c_1&d_1&a_1&-b_1\\
-d_1&-c_1&b_1&a_1
\end{pmatrix}
+\begin{pmatrix}
a_2&b_2&c_2&d_2\\
-b_2&a_2&-d_2&c_2\\
-c_2&d_2&a_2&-b_2\\
-d_2&-c_2&b_2&a_2
\end{pmatrix}
\\
= & \varphi(a_1+b_1i+c_1j+d_1k)+\varphi(a_2+b_2i+c_2j+d_2k)
\end{align}
$$

$$
\small{
\begin{align}
&\varphi((a_1+b_1i+c_1j+d_1k)(a_2+b_2i+c_2j+d_2k))\\
= & \varphi((a_1a_2-b_1b_2-c_1c_2-d_1d_2)+(a_2b_1+a_1b_2-c_2d_1+c_1d_2)i\\
&+(a_2c_1+a_1c_2+b_2d_1-b_1d_2)j+(-b_2c_1+b_1c_2+d_2d_1+a_1+d_2)k)\\
= & {\tiny{\begin{pmatrix}
(a_1a_2-b_1b_2-c_1c_2-d_1d_2)&(a_2b_1+a_1b_2-c_2d_1+c_1d_2)&(a_2c_1+a_1c_2+b_2d_1-b_1d_2)&(-b_2c_1+b_1c_2+d_2d_1+a_1+d_2)\\
-(a_2b_1+a_1b_2-c_2d_1+c_1d_2)&(a_1a_2-b_1b_2-c_1c_2-d_1d_2)&-(-b_2c_1+b_1c_2+d_2d_1+a_1+d_2)&(a_2c_1+a_1c_2+b_2d_1-b_1d_2)\\
-(a_2c_1+a_1c_2+b_2d_1-b_1d_2)&(-b_2c_1+b_1c_2+d_2d_1+a_1+d_2)&(a_1a_2-b_1b_2-c_1c_2-d_1d_2)&-(a_2b_1+a_1b_2-c_2d_1+c_1d_2)\\
-(-b_2c_1+b_1c_2+d_2d_1+a_1+d_2)&-(a_2c_1+a_1c_2+b_2d_1-b_1d_2)&(a_2b_1+a_1b_2-c_2d_1+c_1d_2)&(a_1a_2-b_1b_2-c_1c_2-d_1d_2)
\end{pmatrix}}}\\
= & \begin{pmatrix}
a_1&b_1&c_1&d_1\\
-b_1&a_1&-d_1&c_1\\
-c_1&d_1&a_1&-b_1\\
-d_1&-c_1&b_1&a_1
\end{pmatrix}
\begin{pmatrix}
a_2&b_2&c_2&d_2\\
-b_2&a_2&-d_2&c_2\\
-c_2&d_2&a_2&-b_2\\
-d_2&-c_2&b_2&a_2
\end{pmatrix}
\\
= & \varphi(a_1+b_1i+c_1j+d_1k)\varphi(a_2+b_2i+c_2j+d_2k)
\end{align}
}
$$

$$
\begin{align}
&\psi((a_1+b_1i+c_1j+d_1k)+(a_2+b_2i+c_2j+d_2k))\\
= & \psi((a_1+a_2)+(b_1+b_2)i+(c_1+c_2)j+(d_1+d_2)k)\\
= & \begin{pmatrix}
(a_1+a_2)+(b_1+b_2)i&(c_1+c_2)+(d_1+d_2)i\\
-(c_1+c_2)+(d_1+d_2)i&(a_1+a_2)-(b_1+b_2)i
\end{pmatrix}\\
= & \begin{pmatrix}
a_1+b_1i&c_1+d_1i\\
-c_1+d_1i&a_1-b_1i
\end{pmatrix}+
\begin{pmatrix}
a_2+b_2i&c_2+d_2i\\
-c_2+d_2i&a_2-b_2i
\end{pmatrix}\\
= & \psi(a_1+b_1i+c_1j+d_1k)+\psi(a_2+b_2i+c_2j+d_2k)
\end{align}
$$

$$
\small{
\begin{align}
&\psi((a_1+b_1i+c_1j+d_1k)(a_2+b_2i+c_2j+d_2k))\\
= & \psi((a_1a_2-b_1b_2-c_1c_2-d_1d_2)+(a_2b_1+a_1b_2-c_2d_1+c_1d_2)i\\
&+(a_2c_1+a_1c_2+b_2d_1-b_1d_2)j+(-b_2c_1+b_1c_2+d_2d_1+a_1+d_2)k)\\
= & \begin{pmatrix}
\begin{pmatrix}
(a_1a_2-b_1b_2-c_1c_2-d_1d_2)
\\+(a_2b_1+a_1b_2-c_2d_1+c_1d_2)i
\end{pmatrix}
&
\begin{pmatrix}
(a_2c_1+a_1c_2+b_2d_1-b_1d_2)\\
+(-b_2c_1+b_1c_2+d_2d_1+a_1+d_2)i
\end{pmatrix}\\
\begin{pmatrix}-(a_2c_1+a_1c_2+b_2d_1-b_1d_2)\\
+(-b_2c_1+b_1c_2+d_2d_1+a_1+d_2)i
\end{pmatrix}
&
\begin{pmatrix}(a_1a_2-b_1b_2-c_1c_2-d_1d_2)\\
-(a_2b_1+a_1b_2-c_2d_1+c_1d_2)i
\end{pmatrix}
\end{pmatrix}\\
= & \begin{pmatrix}
a_1+b_1i&c_1+d_1i\\
-c_1+d_1i&a_1-b_1i
\end{pmatrix}
\begin{pmatrix}
a_2+b_2i&c_2+d_2i\\
-c_2+d_2i&a_2-b_2i
\end{pmatrix}\\
= & \psi(a_1+b_1i+c_1j+d_1k)\psi(a_2+b_2i+c_2j+d_2k)
\end{align}
}
$$

因此$\varphi$和$\psi$为单的环同态映射。

### 3.2.5	第五题

定义集合函数
$$
\begin{align}
\varphi:\begin{aligned}[t]
(\mathbb{H}\setminus\{0\},\;\cdot\;)&\longrightarrow (\R^+,\;\cdot\;)\\
a+bi+cj+dk&\longmapsto a^2+b^2+c^2+d^2
\end{aligned}
\end{align}
$$
证明：$\varphi$为群同态映射，且$\ker\varphi\cong \mathrm{SU}_2(\C)$。

证明：注意到
$$
\begin{align}
&\varphi((a_1+b_1i+c_1j+d_1k)(a_2+b_2i+c_2j+d_2k))\\
= & \varphi((a_1a_2-b_1b_2-c_1c_2-d_1d_2)+(a_2b_1+a_1b_2-c_2d_1+c_1d_2)i\\
&+(a_2c_1+a_1c_2+b_2d_1-b_1d_2)j+(-b_2c_1+b_1c_2+d_2d_1+a_1+d_2)k)\\
= & (a_1a_2-b_1b_2-c_1c_2-d_1d_2)^2+(a_2b_1+a_1b_2-c_2d_1+c_1d_2)^2\\
&+(a_2c_1+a_1c_2+b_2d_1-b_1d_2)^2+(-b_2c_1+b_1c_2+d_2d_1+a_1+d_2)^2\\
= & (a_1^2+b_1^2+c_1^2+d_1^2)(a_2^2+b_2^2+c_2^2+d_2^2)\\
= & \varphi(a_1+b_1i+c_1j+d_1k)\varphi(a_2+b_2i+c_2j+d_2k)
\end{align}
$$
因此$\varphi$为群同态映射。

而$\ker\varphi=\{ a+bi+cj+dk:a^2+b^2+c^2+d^2=1 \}$​，构造映射
$$
\begin{align}
\psi:\begin{aligned}[t]
\ker\varphi&\longrightarrow\mathrm{SU}_2(\C)\\
a+bi+cj+dk&\longmapsto 
\begin{pmatrix}
a+bi&c+di\\
-c+di&a-bi
\end{pmatrix}
\end{aligned}
\end{align}
$$
注意到
$$
\begin{align}
&\det\begin{pmatrix}
a+bi&c+di\\
-c+di&a-bi
\end{pmatrix}=a^2+b^2+c^2+d^2\\
&\scriptsize{
\begin{pmatrix}
a+bi&c+di\\
-c+di&a-bi
\end{pmatrix}
\begin{pmatrix}
a-bi&-c-di\\
c-di&a+bi
\end{pmatrix}
=\begin{pmatrix}
a+bi&c+di\\
-c+di&a-bi
\end{pmatrix}=
\begin{pmatrix}
a^2+b^2+c^2+d^2&0\\
0&a^2+b^2+c^2+d^2
\end{pmatrix}
}
\end{align}
$$
因此$\psi$为良好定义的。由[3.2.4](#3.2.4)，$\psi$为单的群同态映射。由[2.6.3](#2.6.3)，$\psi$为满射。因此$\psi$为群同构映射，进而$\ker\varphi\cong \mathrm{SU}_2(\C)$。

### 3.2.6	第六题

### 3.2.7	第七题

### 3.2.8	第八题

#### <span id = '3.2.8.1'>3.2.8.1	第一问</span>

证明：整环的非零子环为整环。

证明：这当然是显然的！

#### 3.2.8.2	第二问

证明：域的非零子环为整环。

证明：由[3.2.8.1](#3.2.8.1)，这当然是显然的！

### 3.2.9	第九题

定义环$R$的**中心(center)**为$\mathrm{Cent}(R)=\{ x\in R:x\cdot r=r\cdot x,\forall r\in R \}$。

#### <span id = '3.2.9.1'>3.2.9.1	第一问</span>

证明：环的中心为子环。

证明：注意到$1\in \mathrm{Cent}(R)$，因此只需证明$\mathrm{Cent}(R)$依$+$运算构成子群。任取$x,y\in\mathrm{Cent}(R)$，那么对于任意$r\in R$，成立$x\cdot r=r\cdot x$，且$y\cdot r=r\cdot y$，因此
$$
(x-y)\cdot r=x\cdot r-y\cdot r=r\cdot x-r\cdot y=r\cdot (x-y)
$$
于是$x-y\in\mathrm{Cent}(R)$，进而$(\mathrm{Cent}(R),+)$为群。

#### <span id = '3.2.9.2'>3.2.9.2	第二问</span>

证明：除环的中心为域。

证明：这当然是显然的！

### 3.2.10	第十题

定义环$R$的元素$r\in R$的**中心化子(centralizer)**为$\mathrm{Cent}_R(r)=\{ x\in R:x\cdot r=r\cdot x \}$。

#### <span id = '3.2.10.1'>3.2.10.1	第一问</span>

证明：环的中心化子为子环。

证明：注意到$1\in \mathrm{Cent}_R(r)$，因此只需证明$\mathrm{Cent}_R(r)$依$+$运算构成子群。任取$x,y\in\mathrm{Cent}_R(r)$，那么$x\cdot r=r\cdot x$，且$y\cdot r=r\cdot y$，因此
$$
(x-y)\cdot r=x\cdot r-y\cdot r=r\cdot x-r\cdot y=r\cdot (x-y)
$$
于是$x-y\in\mathrm{Cent}_R(r)$，进而$(\mathrm{Cent}_R(r),+)$为群。

#### <span id = '3.2.10.2'>3.2.10.2	第二问</span>

证明：环的中心为环的中心化子的交，即
$$
\mathrm{Cent}(R)=\bigcap_{r\in R}\mathrm{Cent}_R(r)
$$
证明：一方面，任取$x\in\mathrm{Cent}(R)$，那么对于任意$r\in R$，成立$x\cdot r=r\cdot x$，因此$x\in \mathrm{Cent}_R(r)$，那么$\displaystyle x\in\bigcap_{r\in R}\mathrm{Cent}_R(r)$，进而$\displaystyle \mathrm{Cent}(R)\sub\bigcap_{r\in R}\mathrm{Cent}_R(r)$。

另一方面，任取$\displaystyle x\in\bigcap_{r\in R}\mathrm{Cent}_R(r)$，那么对于任意$r\in R$，成立$x\in\mathrm{Cent}_R(r)$，因此成立$x\cdot r=r\cdot x$，那么$x\in\mathrm{Cent}(R)$，进而$\displaystyle \mathrm{Cent}(R)\supset\bigcap_{r\in R}\mathrm{Cent}_R(r)$。

#### <span id = '3.2.10.3'>3.2.10.3	第三问</span>

证明：除环的中心化子为除环。

证明：只需证明，除环$R$的中心化子$\mathrm{Cent}_R(r)$中的非零元存在乘法逆元。不妨$r\ne0$，任取非零元$x\in\mathrm{Cent}_R(r)$，那么成立$x\cdot r=r\cdot x$。$x\in R$存在逆元$x^{-1}$，使得成立$x\cdot x^{-1}=x^{-1}\cdot x=1$，由于
$$
r\cdot x^{-1}=r\cdot x^{-1}\cdot r^{-1}\cdot r=r\cdot (r\cdot x)^{-1}\cdot r=r\cdot (x\cdot r)^{-1}\cdot r=r\cdot r^{-1}\cdot x^{-1}\cdot r=x^{-1}\cdot r
$$
因此$x^{-1}\in\mathrm{Cent}_R(r)$，进而中心化子$\mathrm{Cent}_R(r)$中的非零元存在乘法逆元。

### 3.2.11	第十一题

#### 3.2.11.1	第一问

证明：$p^2$阶除环为交换环，其中$p$为素数。

证明：如果$R$为非交换环，由[3.2.9.1](#3.2.9.1)，那么$|\mathrm{Cent}(R)|=p$。任取$r\in R\setminus\mathrm{Cent}(R)$，由[3.2.10.2](#3.2.10.2)，$\{r\}\cup \mathrm{Cent}(R)\sub \mathrm{Cent}_R(r)$，那么$|\mathrm{Cent}_R(r)|\ge p+1$。由[3.2.10.1](#3.2.10.1)，$|\mathrm{Cent}_R(r)|=p^2$，因此$\mathrm{Cent}_R(r)=R$，进而$R$为交换环，矛盾！

#### 3.2.11.2	第二问

**Wedderburn定理**：有限除环为域。

### 3.2.12	第十二题

### 3.2.13	第十三题

### 3.2.14	第十四题

### 3.2.15	第十五题

### 3.2.16	第十六题

证明：Abel群$(\Z,+)$上的环至多同构。

### 3.2.17	第十七题

对于环$(R,+,\;\cdot\;)$，记$\mathrm{End}_{\mathsf{Ab}}(R)$为Abel群$(R,+)$的自同态环，证明：$\mathrm{Cent}(\mathrm{End}_{\mathsf{Ab}}(R))\cong \mathrm{Cent}(R)$。

### 3.2.18	第十八题

### 3.2.19	第十九题

证明：对于$n\in\N^*$，成立$\mathrm{End}_{\mathsf{Ab}}(\Z/n\Z)\cong \Z/n\Z$。

## 3.3	理想与商环

### <span id = '3.3.1'>3.3.1	第一题</span>

证明：对于环$(R,+,\;\cdot\;)$的理想$I$，成立
$$
1\in I\iff I=R
$$
证明：这几乎是显然的，因为对于任意$r\in R$，成立
$$
r=r\cdot 1\in I
$$

### <span id = '3.3.2'>3.3.2	第二题</span>

证明：对于环同态映射$\varphi:R\to S$，如果$I\sub R$为$R$的子环，那么$\varphi(I)$为$S$的子环。

证明：作包含映射$i:\varphi(I)\hookrightarrow S$，由于对于任意$r,s\in I$，成立
$$
\begin{align}
&i(\varphi(r)+\varphi(s))=i(\varphi(r+s))=\varphi(r+s)=\varphi(r)+\varphi(s)=i(\varphi(r))+i(\varphi(s))\\
&i(\varphi(r)\cdot\varphi(s))=i(\varphi(r\cdot s))=\varphi(r\cdot s)=\varphi(r)\cdot \varphi(s)=i(\varphi(r))\cdot i(\varphi(s))\\
&i(1_S)=i(\varphi(1_R))=\varphi(1_R)=1_S
\end{align}
$$
因此$i$为环同态映射，进而$\varphi(I)$为$S$的子环。

### 3.3.3	第三题

#### 3.3.3.1	第一问

构造环同态映射$\varphi:R\to S$，使得$\text{im }\varphi$不为$S$的理想。

证明：构造环同态映射
$$
\begin{align}
\varphi:\begin{aligned}[t]
(\Z,+,\;\cdot\;)&\longrightarrow(\Q,+,\;\cdot\;)\\
n&\longmapsto n
\end{aligned}
\end{align}
$$
注意到$\text{im }\varphi=\Z$不为$\Q$的理想。

#### <span id = '3.3.3.2'>3.3.3.2	第二问</span>

证明：对于环同态映射$\varphi:R\to S$，如果$I$为$R$的理想，那么$\varphi(I)$为$\text{im }\varphi$的理想。

证明：首先证明$\varphi(I)$为$\text{im }\varphi$的子群，注意到
$$
r,s\in I
\implies r-s\in I
\implies \varphi(r-s)\in\varphi(I)
\iff \varphi(r)-\varphi(s)\in\varphi(I)
$$

其次证明$\varphi(I)$满足吸收律，注意到
$$
\begin{align}
&r\in R,i\in I
\implies r\cdot i\in I,i\cdot r\in I\\
\implies &\varphi(r\cdot i)\in\varphi(I),\varphi(i\cdot r)\in\varphi(I)
\iff \varphi(r)\cdot \varphi(i)\in\varphi(I),\varphi(i)\cdot \varphi(r)\in\varphi(I)
\end{align}
$$

#### <span id = '3.3.3.3'>3.3.3.3	第三问</span>

证明：对于环同态映射$\varphi:R\to S$，如果$J$是$\text{im }\varphi$的理想，那么$\varphi^{-1}(J)$为$R$的理想，且$\ker\varphi\sub\varphi^{-1}(J)$。

证明：首先证明$\varphi^{-1}(J)$为$R$的子群，注意到
$$
\small{
r,s\in \varphi^{-1}(J)
\iff \varphi(r),\varphi(s)\in J
\implies \varphi(r)-\varphi(s)\in J
\iff \varphi(r-s)\in J
\iff r-s \in \varphi^{-1}(J)
}
$$
其次证明$I$满足吸收律，注意到
$$
\begin{align}
&r\in R,i\in \varphi^{-1}(J)
\implies \varphi(r)\in \text{im }\varphi,\varphi(i)\in J\\
\implies &\varphi(r)\cdot\varphi(i)\in J,\varphi(i)\cdot\varphi(r)\in J
\iff \varphi(r\cdot i)\in J,\varphi(i\cdot r)\in J\\
\iff & r\cdot i\in \varphi^{-1}(J),i\cdot r\in \varphi^{-1}(J)
\end{align}
$$

而$0_S\in J$，因此$\ker\varphi=\varphi^{-1}(0_S)\sub \varphi^{-1}(J)$。

#### <span id = '3.3.3.4'>3.3.3.4	第四问</span>

证明：对于环同态映射$\varphi:R\to S$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ I\supset\ker\varphi\text{ is ideal of }R \}&\longrightarrow \{ J\text{ is ideal of }\text{im }\varphi \}\\
I&\longmapsto \varphi(I)
\end{aligned}
\end{align}
$$

证明：由[3.3.3.2](#3.3.3.2)，函数$\Psi$定义良好。

首先对于$\Psi$的单射性
$$
\scriptsize{
\Psi(I)=\Psi(J)
\iff \varphi(I)=\varphi(J)
\implies \varphi^{-1}(\varphi(I))=\varphi^{-1}(\varphi(J))
\iff I+\ker\varphi=J+\ker\varphi
\iff I=J
}
$$

其次对于$\Psi$的满射性。如果$J$为$\text{im }\varphi$的理想，那么由[3.3.3.3](#3.3.3.3)，$\varphi^{-1}(J)\supset\ker\varphi$为$R$的理想。注意到，$\Psi(\varphi^{-1}(J))=\varphi(\varphi^{-1}(J))=J\cap\text{im }\varphi=J$，因此$\Psi$为满射。

#### <span id = '3.3.3.5'>3.3.3.5	第五问</span>

证明：对于环同态映射$\varphi:R\to S$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ J\text{ is ideal of }\text{im }\varphi \}&\longrightarrow \{ I\supset\ker\varphi\text{ is ideal of }R \}\\
J&\longmapsto \varphi^{-1}(J)
\end{aligned}
\end{align}
$$
证明：由[3.3.3.3](#3.3.3.3)，函数$\Psi$定义良好。

首先对于$\Psi$的单射性
$$
\scriptsize{
\Psi(I)=\Psi(J)
\iff \varphi^{-1}(I)=\varphi^{-1}(J)
\implies \varphi(\varphi^{-1}(I))=\varphi(\varphi^{-1}(J))
\iff I\cap\text{im }\varphi=J\cap\text{im }\varphi
\iff I=J
}
$$
其次对于$\Psi$的满射性。如果$I\supset\ker\varphi$为$R$的理想，那么由[3.3.3.2](#3.3.3.2)，$\varphi(I)$为$\text{im }\varphi$的理想。注意到，$\Psi(\varphi(I))=\varphi^{-1}(\varphi(I))=I+\ker\varphi=I$，因此$\Psi$为满射。

#### <span id = '3.3.3.6'>3.3.3.6	第六问</span>

证明：对于环$(R,+,\;\cdot\;)$，如果$I$为$R$的理想，那么
$$
\{ I+J:J\text{ is ideal} \}=\{ J\supset I\text{ is ideal}\}
$$
证明：如果$J$为$R$的理想，那么$I+J$为$R$的理想，且$I\sub I+J$，因此
$$
\{ I+J:J\text{ is ideal} \}\sub\{ J\supset I\text{ is ideal}\}
$$
如果$J\supset I$为$R$的理想，那么$J=I+J$，因此
$$
\{ I+J:J\text{ is ideal} \}\supset\{ J\supset I\text{ is ideal}\}
$$
综上所述
$$
\{ I+J:J\text{ is ideal} \}=\{ J\supset I\text{ is ideal}\}
$$

#### <span id = '3.3.3.7'>3.3.3.7	第七问</span>

证明：对于环同态映射$\varphi:R\to S$，如果$I$为$R$的理想，那么
$$
\frac{R}{\ker\varphi+I}\cong\frac{\text{im }\varphi}{\varphi(I)}
$$
证明：（优雅证明）注意到$\varphi(\ker\varphi+I)=\varphi(I)$，由[3.3.3.8](#3.3.3.8)
$$
\frac{R}{\ker\varphi+I}\cong\frac{\text{im }\varphi}{\varphi(\ker\varphi+I)}=\frac{\text{im }\varphi}{\varphi(I)}
$$

（朴素证明）定义映射
$$
\begin{align}
f:\begin{aligned}[t]
R&\longrightarrow \frac{\text{im }\varphi}{\varphi(I)}\\
r&\longmapsto \varphi(r)+\varphi(I)
\end{aligned}
\end{align}
$$

首先证明$f$为环同态映射，注意到
$$
\begin{align}
&f(r+s)=\varphi(r+s)+\varphi(I)=(\varphi(r)+\varphi(I))+(\varphi(s)+\varphi(I))=f(r)+f(s)\\
&f(r\cdot s)=\varphi(r\cdot s)+\varphi(I)=(\varphi(r)+\varphi(I))\cdot(\varphi(s)+\varphi(I))=f(r)\cdot f(s)\\
&f(1)=\varphi(1)+\varphi(I)=1+\varphi(I)
\end{align}
$$

其次证明$\ker f=\ker\varphi+I$，注意到
$$
\begin{align}
&r\in\ker f
\iff f(r)=\varphi(I)
\iff \varphi(r)+\varphi(I)=\varphi(I)\\
\iff &\varphi(r)\in\varphi(I)
\iff \exists i\in I,\varphi(r)=\varphi(i)
\iff \exists i\in I,r-i\in\ker\varphi\\
\iff&\exists i\in I,r\in\ker\varphi+i
\iff r\in\ker\varphi+I
\end{align}
$$

最后证明$\text{im }f=\text{im }\varphi/\varphi(I)$，这是显然的。

综上所述，由环同构第一定理
$$
\frac{R}{\ker\varphi+I}\cong\frac{\text{im }\varphi}{\varphi(I)}
$$

#### <span id = '3.3.3.8'>3.3.3.8	第八问</span>

证明：对于环同态映射$\varphi:R\to S$，如果$I\supset\ker\varphi$为$R$的理想，那么
$$
\frac{R}{I}\cong\frac{\text{im }\varphi}{\varphi(I)}
$$
证明：（优雅证明）由于$I\supset\ker\varphi$为$R$的理想，那么由[3.3.3.6](#3.3.3.6)，存在$R$的理想$J$，使得成立$I=\ker\varphi+J$。此时，$\varphi(I)=\varphi(\ker\varphi+J)=\varphi(J)$。由[3.3.3.7](#3.3.3.7)
$$
\frac{R}{I}=\frac{R}{\ker\varphi+J}\cong\frac{\text{im }\varphi}{\varphi(J)}=\frac{\text{im }\varphi}{\varphi(I)}
$$

（朴素证明）定义映射
$$
\begin{align}
f:\begin{aligned}[t]
R&\longrightarrow \frac{\text{im }\varphi}{\varphi(I)}\\
r&\longmapsto \varphi(r)+\varphi(I)
\end{aligned}
\end{align}
$$

首先证明$f$为环同态映射，注意到
$$
\begin{align}
&f(r+s)=\varphi(r+s)+\varphi(I)=(\varphi(r)+\varphi(I))+(\varphi(s)+\varphi(I))=f(r)+f(s)\\
&f(r\cdot s)=\varphi(r\cdot s)+\varphi(I)=(\varphi(r)+\varphi(I))\cdot(\varphi(s)+\varphi(I))=f(r)\cdot f(s)\\
&f(1)=\varphi(1)+\varphi(I)=1+\varphi(I)
\end{align}
$$

其次证明$\ker f=I$，注意到
$$
\begin{align}
&r\in\ker f
\iff f(r)=\varphi(I)
\iff \varphi(r)+\varphi(I)=\varphi(I)\\
\iff &\varphi(r)\in\varphi(I)
\iff \exists i\in I,\varphi(r)=\varphi(i)
\iff \exists i\in I,r-i\in\ker\varphi\\
\iff&\exists i\in I,r\in\ker\varphi+i
\iff r\in\ker\varphi+I=I
\end{align}
$$

最后证明$\text{im }f=\text{im }\varphi/\varphi(I)$，这是显然的。

综上所述，由环同构第一定理
$$
\frac{R}{I}\cong\frac{\text{im }\varphi}{\varphi(I)}
$$

#### <span id = '3.3.3.9'>3.3.3.9	第九问</span>

证明：如果$I$为环$(R,+,\;\cdot\;)$的理想，那么如下集合函数为双射。
$$
\begin{align}
\Phi:\begin{aligned}[t]
\{ J\supset I\text{ is ideal of }R \}&\longrightarrow \{ K\text{ is ideal of } R/I \}\\
J&\longmapsto J/I
\end{aligned}
\end{align}
$$

证明：注意到如下自然环同态
$$
\begin{align}
\pi:\begin{aligned}[t]
R&\longrightarrow R/I\\
r&\longmapsto r+I
\end{aligned}
\end{align}
$$
其中$\ker\pi=I$，且$\text{im }\pi=R/I$。由[3.3.3.4](#3.3.3.4)，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ J\supset I\text{ is ideal of }R \}&\longrightarrow \{ K\text{ is ideal of }R/I \}\\
J&\longmapsto \pi(J)
\end{aligned}
\end{align}
$$
注意到
$$
\Phi(J)=J/I=\{ j+I:j\in J \}=\pi(J)=\Psi(J)
$$
因此$\Phi=\Psi$，进而$\Phi$为双射。

### <span id = '3.3.4'>3.3.4	第四题</span>

证明：如果环$(R,+,\;\cdot\;)$的子环为理想，那么$R\cong \Z/n\Z$，其中$n$为$R$的特征。

证明：由于$\mathsf{Ring}$范畴的初始对象为整数环$\Z$，那么对于环$R\in \mathrm{Obj}(\mathsf{Ring})$，存在且存在唯一环同态映射$\varphi:\Z\to R,\quad m\mapsto m1_R$。由[3.3.2](#3.3.2)，$\text{im }\varphi$为$R$的子环。注意到$1\in\text{im }\varphi$，而$\text{im }\varphi$为理想，因此$\text{im }\varphi=R$。由此可知对于任意$r\in R$，存在$m_r\in\Z$，使得成立$r=m_r1_R$，因此$R=\lang 1_R\rang$。

如果$R=\Z$，那么$\varphi:\Z\to\Z,\quad m\mapsto m$，此时$\ker\varphi=\{ 0 \}$，那么$R$的特征为$0$，因此$R=\Z\cong\Z/0\Z$。

如果$R=\Z/n\Z$，那么$\varphi:\Z\to \Z/n\Z,\quad m\mapsto [m]_{n}$，此时$\ker\varphi=n\Z$，那么$R$的特征为$n$，因此$R=\Z/n\Z$。

### 3.3.5	第五题

### 3.3.6	第六题

### 3.3.7	第七题

#### <span id = '3.3.7.1'>3.3.7.1	第一问</span>

证明：以及$r\in R$，$R\cdot r$为$R$的左理想，$r\cdot R$为$R$的右理想。

证明：一方面，对于任意$s,t\in R$，注意到$s\cdot (t\cdot r)=(s\cdot t)\cdot r\in R\cdot r$，因此$R\cdot r$为$R$的左理想。

另一方面，对于任意$s,t\in R$，注意到$(r\cdot t)\cdot s=r\cdot (t\cdot s)\in r\cdot R$，因此$r\cdot R$为$R$的右理想。

#### 3.3.7.2	第二问

证明：对于环$(R,+,\;\cdot\;)$，$r\in R$为左单位$\iff R=r\cdot R$；$r\in R$为右单位$\iff R=R\cdot r$。

证明：对于必要性，如果$r\in R$为左单位，那么注意到对于任意$x\in R$，成立
$$
x=1\cdot x=(r\cdot s)\cdot x=r\cdot (s\cdot x)\in r\cdot R
$$
因此$R\sub r\cdot R$，而显然$r\cdot R\sub R$，因此$R=r\cdot R$。

对于充分性，如果$R=r\cdot R$，那么由$1\in R$，可知存在$s\in R$，使得成立$r\cdot s=1$，因此$r\in R$为左单位。

### 3.3.8	第八题

证明：对于非零环$(R,+,\;\cdot\;)$，环$R$为除环$\iff R$仅存在平凡左理想$\iff  R$仅存在平凡右理想。

证明：如果$R$为除环，任取$R$的非零左理想$I$，那么存在$r\in I\setminus\{0\}$，而$R$为除环，因此$1=r^{-1}\cdot r\in I$，那么$I=R$，进而$R$仅存在平凡左理想。同理对于$R$的右理想。

如果$R$不为除环，那么存在$r_0\in R\setminus\{0\}$，使得对于任意$r\in R$，成立$r\cdot r_0\ne1$且$r_0\cdot r\ne 1$。由[3.3.7.1](#3.3.7.1)，考虑左理想$R\cdot r_0$，由条件假设，$1\notin R\cdot r_0$，因此$\{0\}\subsetneq R\cdot r_0 \subsetneq R$，进而$R$存在非平凡左理想$R\cdot r_0$。同理对于$R$的右理想。

### <span id = '3.3.9'>3.3.9	第九题</span>

证明：对于非零交换环$(R,+,\;\cdot\;)$，$R$为域$\iff R$仅存在平凡理想。

证明：如果$R$为域，任取$R$的非零理想$I$，那么存在$r\in I\setminus\{0\}$，而$R$为域，因此$1=r^{-1}\cdot r\in I$，那么$I=R$，进而$R$仅存在平凡理想。

如果$R$不为域，那么存在$r_0\in R\setminus\{0\}$，使得对于任意$r\in R$，成立$r_0\cdot r\ne1$。考虑主理想$(r_0)=r_0\cdot R$，由条件假设，$1\notin I$，因此$\{0\}\subsetneq (r_0) \subsetneq R$，进而$R$存在非平凡理想$(r_0)$。

### 3.3.10	第十题

证明：如果$F$为域且$R$为非零环，那么环同态映射$\varphi:F\to R$为单的。

证明：由于$\ker \ker F$为域$F$的理想，那么由[3.3.9](#3.3.9)，$\ker \varphi=\{0\}$或$\ker \varphi=F$。如果$\ker\varphi=F$，那么$R=\{0\}$，矛盾！因此$\ker\varphi=\{0\}$，进而$\varphi$为单的。

### 3.3.11	第十一题

证明：不存在环同态映射$\varphi:\C\to\R$。

证明：如果$\varphi:\C\to\R$​为环同态映射，那么
$$
\varphi(i)^2=\varphi(i^2)=\varphi(-1)=-\varphi(1)=-1<0
$$
矛盾！

### 3.3.12	第十二题

**幂零根(nilradical)**：定义环$(R,+,\;\cdot\;)$的幂零根为
$$
\mathrm{Nil}(R)=\{ r\in R:\exists n\in\N^*,\text{ s.t. }r^n=0 \}
$$

#### 3.3.12.1	第一问

证明：交换环的幂零根为理想。

证明：对于交换环$(R,+,\;\cdot\;)$，由[3.1.6.1](#3.1.6.1)，$\mathrm{Nil}(R)$为$R$的子群。

任取$r\in R$，以及$n\in\mathrm{Nil}(R)$，那么存在$m\in \N^*$，使得成立$n^m=0$。由于
$$
(r\cdot n)^m=r^m\cdot n^m=r^m\cdot 0=0
$$
因此$r\cdot n\in\mathrm{Nil}(R)$，进而$\mathrm{Nil}(R)$为$R$的理想。

#### 3.3.12.2	第二问

构造环，使其幂零根不为理想。

证明：
$$
A=\begin{pmatrix}1&1\\-1&-1\end{pmatrix},\qquad
B=\begin{pmatrix}1&-1\\1&-1\end{pmatrix}
$$
那么
$$
\begin{align}
&A^2=B^2=\begin{pmatrix}0&0\\0&0\end{pmatrix},\quad 
(A+B)^n=2^n\begin{pmatrix}1&0\\0&(-1)^n\end{pmatrix}\\
&(AB)^n=2^{2n-1}\begin{pmatrix}1&-1\\-1&1\end{pmatrix},\quad
(BA)^n=2^{2n-1}\begin{pmatrix}1&1\\1&1\end{pmatrix}
\end{align}
$$
因此矩阵环$\mathfrak{gl}_2(\R)$的幂零根不为理想，甚至不为子群。

### 3.3.13	第十三题

**即约环(reduced ring)**：称环$(R,+,\;\cdot \;)$为即约环，如果$\mathrm{Nil}(R)=\{ 0 \}$。

**即约部分(reduced part)**：称$R/\mathrm{Nil}(R)$为交换环$(R,+,\;\cdot \;)$的即约部分。

证明：交换环的即约部分为即约环；换言之，对于交换环$(R,+,\;\cdot \;)$，成立$\mathrm{Nil}(R/\mathrm{Nil}(R))=\{ \mathrm{Nil}(R) \}$

证明：任取$r+\mathrm{Nil}(R)\in \mathrm{Nil}(R/\mathrm{Nil}(R))$，因此存在$n$​，使得成立
$$
\begin{align}
&(r+\mathrm{Nil}(R))^n=\mathrm{Nil}(R)
\iff r^n+\mathrm{Nil}(R)=\mathrm{Nil}(R)
\iff r^n\in \mathrm{Nil}(R)\\
\iff & r\in\mathrm{Nil}(R)
\iff r+\mathrm{Nil}(R)=\mathrm{Nil}(R)
\end{align}
$$

### 3.3.14	第十四题

#### <span id = '3.3.14.1'>3.3.14.1	第一问</span>

证明：整环的特征为$0$或素数。

证明：由于$\mathsf{Ring}$范畴的初始对象为整数环$\Z$，那么对于整环$R\in \mathrm{Obj}(\mathsf{Ring})$，存在且存在唯一环同态映射$\varphi:\Z\to R,\quad n\mapsto n1_R$。由第一环同构定理，$\Z/\text{char }\Z\cong \text{im }\varphi< R$。由[3.2.8.1](#3.2.8.1)，$\Z/\text{char }\Z$为整环，那么$\text{char }\Z$为$0$或素数。

#### 3.3.14.2	第二问

构造特征为$1$的环。

证明：零环。

### 3.3.15	第十五题

**Bool环(Boolean ring)**：称非零环$(R,+,\;\cdot \;)$为Bool环，如果对于任意$r\in R$，成立$r^2=r$。

#### 3.3.15.1	第一问

对于集合$S$，定义二元运算
$$
\begin{align}
+:&\mathscr{P}(S)\times \mathscr{P}(S)\to \mathscr{P}(S)\\
&(A,B)\mapsto (A\cup B)\setminus(A\cap B)\\
\;\cdot\;:&\mathscr{P}(S)\times \mathscr{P}(S)\to \mathscr{P}(S)\\
&(A,B)\mapsto A\cap B
\end{align}
$$
那么由[3.1.2](#3.1.2)，$(\mathscr{P}(S),+,\cdot)$为交换环。

证明：$(\mathscr{P}(S),+,\cdot)$为Bool环。

证明：这是显然的！

#### 3.3.15.2	第二问

证明：Bool环为交换环。

证明：注意到，对于任意$r,s\in R$，成立
$$
r+s=(r+s)^2
=r^2+r\cdot s+s\cdot r+s^2
=r+r\cdot s+s\cdot r+s
\implies r\cdot s+s\cdot r=0
$$
因此由[3.3.15.3](#3.3.15.3)
$$
r\cdot s
=r\cdot s+0
=r\cdot s+r\cdot s+s\cdot r
=2(r\cdot s)+s\cdot r
=0+s\cdot r
=s\cdot r
$$
进而Bool环$R$为交换环。

#### <span id = '3.3.15.3'>3.3.15.3	第三问</span>

证明：Bool环的特征为$2$。

证明：由于$\mathsf{Ring}$范畴的初始对象为整数环$\Z$，那么对于Bool环$R\in \mathrm{Obj}(\mathsf{Ring})$，存在且存在唯一环同态映射$\varphi:\Z\to R,\quad n\mapsto n1_R$。注意到对于任意$r\in R$，成立
$$
2r=(2r)^2=(r+r)^2=4r^2=4r\implies 2r=0_R
$$
因此$\ker\varphi\supset 2\Z$。

如果存在奇数$m$，使得成立$m\in\ker\varphi$，那么$\varphi(m)=0_R$，此时
$$
1_R=\varphi(1)=\varphi(m-(m-1))=\varphi(m)-\varphi(m-1)=0_R
$$
由[3.1.1](#3.1.1)，$R$为零环，矛盾！进而$\ker\varphi= 2\Z$，$R$的特征为$2$。

#### 3.3.15.4	第四问

证明：如果整环$R$为Bool环，那么$R\cong \Z/2\Z$。

证明：由于$R$为Bool环，那么对于任意$r\in R$，成立$r(r-1_R)=0_R$。而$R$为整环，那么$r=0_R$，或$r=1_R$。又因为$R$不零环，那么$0_R\ne 1_R$，因此$R=\{0_R,1_R\}$，进而$R\cong \Z/2\Z$。

### 3.3.16	第十六题

#### 3.3.16.1	第一问

证明：对于集合$S$和子集$T\sub S$，$\{ E:T\sub E\sub S \}$为幂集环$(\mathscr{P}(S),+,\cdot)$的理想。

#### 3.3.16.2	第二问

证明：如果集合$S$为有限集，那么对于幂集环$(\mathscr{P}(S),+,\cdot)$的任意理想$I$，存在子集$T\sub S$，使得成立$I=\{ E:T\sub E\sub S \}$。

#### 3.3.16.3	第三问

构造无限集$S$的理想$I$，使得不存在子集$T\sub S$，成立$I=\{ E:T\sub E\sub S \}$。

### 3.3.17	第十七题

## 3.4	素理想与极大理想

### 3.4.0	第零题

#### <span id = '3.4.0.1'>3.4.0.1	第一问</span>

证明：对于非零交换环间的同态映射$\varphi:R\to S$，如果$I\supset \ker\varphi$为$R$的素理想，那么$\varphi(I)$为$\text{im }\varphi$的素理想。

证明：如果$I$为$R$的素理想，那么由[3.3.3.2](#3.3.3.2)，$\varphi(I)$为$\text{im }\varphi$的理想。由[3.3.3.8](#3.3.3.8)
$$
\begin{align}
     & I\text{ is prime ideal of }R\\
\iff & R/I\text{ is integral domain and }I\subsetneq R\\
\iff & \text{im }\varphi/\varphi(I)\text{ is integral domain and }\varphi(I)\subsetneq \text{im }\varphi\\
\iff & \varphi(I)\text{ is prime ideal of im }\varphi\\
\end{align}
$$

#### <span id = '3.4.0.2'>3.4.0.2	第二问</span>

证明：对于非零交换环间的同态映射$\varphi:R\to S$，如果$J$为$\text{im }\varphi$的素理想，那么$\varphi^{-1}(J)$为$R$的素理想，且$\ker\varphi\sub \varphi^{-1}(J)$。

证明：如果$J$为$\text{im }\varphi$的素理想，那么由[3.3.3.3](#3.3.3.3)，$\varphi^{-1}(J)$为$R$的理想，且$\ker\varphi\sub \varphi^{-1}(J)$。由[3.3.3.8](#3.3.3.8)，以及[3.3.3.4](#3.3.3.4)
$$
\begin{align}
     & J\text{ is prime ideal of im }\varphi\\
\iff & \text{im }\varphi/J\text{ is integral domain and }J\subsetneq \text{im }\varphi\\
\iff & \text{im }\varphi/\varphi(\varphi^{-1}(J))\text{ is integral domain and }\varphi(\varphi^{-1}(J))\subsetneq \text{im }\varphi\\
\iff & R/\varphi^{-1}(J)\text{ is integral domain and }\varphi^{-1}(J)\subsetneq R\\
\iff & \varphi^{-1}(J)\text{ is prime ideal of }R
\end{align}
$$
#### <span id = '3.4.0.3'>3.4.0.3	第三问</span>

证明：对于非零交换环间的同态映射$\varphi:R\to S$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ I\supset\ker\varphi\text{ is prime ideal of }R \}&\longrightarrow \{ J\text{ is prime ideal of }\text{im }\varphi \}\\
I&\longmapsto \varphi(I)
\end{aligned}
\end{align}
$$
证明：由[3.4.0.1](#3.4.0.1)，函数$\Psi$定义良好。

首先对于$\Psi$的单射性。由[3.3.3.4](#3.3.3.4)，$\Psi$为单射。

其次对于$\Psi$的满射性。如果$J$为$\text{im }\varphi$的素理想，那么由[3.4.0.2](#3.4.0.2)，$\varphi^{-1}(J)\supset\ker\varphi$为$R$的素理想。由[3.3.3.4](#3.3.3.4)，$\Psi$为满射。

#### 3.4.0.4	第四问

证明：对于非零交换环间的同态映射$\varphi:R\to S$，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ J\text{ is prime ideal of }\text{im }\varphi \}&\longrightarrow \{ I\supset\ker\varphi\text{ is prime ideal of }R \}\\
J&\longmapsto \varphi^{-1}(J)
\end{aligned}
\end{align}
$$
证明：由[3.4.0.2](#3.4.0.2)，函数$\Psi$定义良好。

首先对于$\Psi$的单射性。由[3.3.3.5](#3.3.3.5)，$\Psi$为单射。

其次对于$\Psi$的满射性。如果$I\supset\ker\varphi$为$R$的素理想，那么由[3.4.0.1](#3.4.0.1)，$\varphi(I)$为$\text{im }\varphi$的素理想。由[3.3.3.5](#3.3.3.5)，$\Psi$为满射。

#### 3.4.0.5	第五问

证明：如果$I$为环$(R,+,\;\cdot\;)$的理想，那么如下集合函数为双射。
$$
\begin{align}
\Phi:\begin{aligned}[t]
\{ J\supset I\text{ is prime ideal of }R \}&\longrightarrow \{ K\text{ is prime ideal of } R/I \}\\
J&\longmapsto J/I
\end{aligned}
\end{align}
$$

证明：注意到如下自然环同态
$$
\begin{align}
\pi:\begin{aligned}[t]
R&\longrightarrow R/I\\
r&\longmapsto r+I
\end{aligned}
\end{align}
$$
其中$\ker\pi=I$，且$\text{im }\pi=R/I$。由[3.4.0.3](#3.4.0.3)，如下集合函数为双射。
$$
\begin{align}
\Psi:\begin{aligned}[t]
\{ J\supset I\text{ is prime ideal of }R \}&\longrightarrow \{ K\text{ is prime ideal of }R/I \}\\
J&\longmapsto \pi(J)
\end{aligned}
\end{align}
$$
注意到
$$
\Phi(J)=J/I=\{ j+I:j\in J \}=\pi(J)=\Psi(J)
$$
因此$\Phi=\Psi$，进而$\Phi$为双射。

### 3.4.1	第一题

### 3.4.2	第二题

证明：Noether环的像为Noether环。

证明：如果交换环$(R,+,\;\cdot\;)$为Noether环，$\varphi:R\to S$为环同态映射，那么不妨设
$$
R=(x_{1},\cdots, x_{n})=\sum_{k=1}^{n}(x_{k})
=\sum^{n}_{k=1}x_{k}R
=\left\{ \sum_{k=1}^{n}x_{k}\cdot r_{k}:r_{k}\in R \right\}
$$
显然
$$
\text{im} \varphi = (\varphi(x_1),\cdots,\varphi(x_n))=\sum_{k=1}^{n}(\varphi (x_{k}))
=\sum_{k=1}^{n}\varphi (x_{k})\cdot \text{im} \varphi 
=\left\{ \sum_{k=1}^{n}\varphi (x_{k})\cdot \varphi (r_{k}):r_{k}\in R \right\}
$$
因此$\text{im} \varphi$为Noether环。

### 3.4.3	第三题

证明：$\Z[x]$的理想$(2,x)$不为主理想。

证明：如果存在$\varphi \in \mathbb{Z}[x]$，使得成立$(2,x)=(\varphi(x))$，那么对于任意非零多项式$h(x)\in \mathbb{Z}[x]$，由\ref{pro:积的次数为次数的和}，那么
$$
\deg(\varphi(x)h(x))=\deg(\varphi(x))+\deg(h(x))\ge \deg(\varphi(x))
$$
而$2\in (\varphi(x))$，那么$\varphi(x)=1$或$\varphi(x)=2$。如果$\varphi(x)=1$，那么$(\varphi(x))=\mathbb{Z}[x]\supset \mathbb{Z}$。而$(2,x)\cap \mathbb{R}=2\mathbb{Z}$，矛盾！如果$\varphi(x)=2$，注意到$x\in (2,x)$，但是$x\notin (\varphi(x))$，矛盾！综上所述，$(2,x)$不为主理想。

### 3.4.4	第四题

证明：如果$F$为域，那么$F[x]$为PID。

### 3.4.5	第五题

证明：对于交换环$(R,+,\;\cdot\;)$的理想$I$与$J$，如果$I+J=R$，那么$I\cdot J=I\cap J$。

### 3.4.6	第六题

证明：对于环$(R,+,\;\cdot\;)$的理想$I$与$J$，如果$R/(I\cdot J)$为即约环，那么$I\cdot J=I\cap J$。

### 3.4.7	第七题

证明：对于域$F$，$F[x]$为PID。

### 3.4.8	第八题

证明：对于环$R$，如果$f(x)\in R[x]$为首一多项式，那么$f(x)$不为零因子。

证明：

### 3.4.9	第九题

证明：对于环$R$，如果$f(x)\in R[x]$为右零因子，那么存在$r\in R\setminus\{0\}$，使得成立$rf(x)=0$。

### 3.4.10	第十题

### 3.4.11	第十一题

对于交换环$R$，如果$\{ f_k(x) \}_{k=1}^{n}\sub R[x]$，且$a\in R$，那么
$$
\begin{align}
&(x-a)+\sum_{k=1}^{n}(f_k(x))=(x-a)+\sum_{k=1}^{n}(f_k(a))\\
&\frac{R[x]}{\displaystyle (x-a)+\sum_{k=1}^{n}(f_k(x))}\cong\frac{R}{\displaystyle \sum_{k=1}^{n}(f_k(a))}
\end{align}
$$

### 3.4.12	第十二题

对于交换环$R$，如果$\{a_k\}_{k=1}^{n}\sub R$，那么
$$
\frac{R[x_1,\cdots,x_n]}{(x_1-a_1,\cdots,x_n-a_n)}\cong R
$$

# 第四章	群：再次邂逅

## 4.1	共轭作用

### 4.1.1	第一题

证明：对于$p$-群$(G,*)$，如果$|S|\not\equiv 0\mod p$，那么群$(G,*)$关于集合$S$的作用存在不动点。

证明：
$$
|\mathrm{Fix}_G(S)|\equiv |S|\not\equiv 0\mod p
$$

### 4.1.2	第二题

证明：
$$
\mathrm{Cent}(D_{2n-1})=\{\mathbb{1}\},\qquad
\mathrm{Cent}(D_{2n})=\{\mathbb{1},\sigma^n\}
$$
证明：
$$
D_n=\{ \sigma^i\circ\tau^j:\sigma^{n}=\tau^{2}=\sigma\circ\tau\circ\sigma\circ\tau=\mathbb{1},0\le i<n,j\in\{ 0,1 \} \}
$$
注意到
$$
\sigma^i\circ\tau^j\circ\sigma^s\circ\tau^t=\sigma^s\circ\tau^t\circ\sigma^i\circ\tau^j
\iff\begin{cases}
\mathbb{1}=\mathbb{1},\qquad & (j,t)=(0,0)\\
n\mid 2i,\qquad & (j,t)=(0,1)\\
n\mid 2s,\qquad & (j,t)=(1,0)\\
n\mid 2(i-s),\qquad & (j,t)=(1,1)
\end{cases}
$$
因此，对于$D_{2n-1}$​
$$
\sigma^i\circ\tau^j\circ\sigma^s\circ\tau^t=\sigma^s\circ\tau^t\circ\sigma^i\circ\tau^j,\forall 0\le s<2n-1,\forall t\in\{0,1\}\iff \sigma^i\circ\tau^j=\mathbb{1}
$$
对于$D_{2n}$
$$
\sigma^i\circ\tau^j\circ\sigma^s\circ\tau^t=\sigma^s\circ\tau^t\circ\sigma^i\circ\tau^j,\forall 0\le s<2n,\forall t\in\{0,1\}\iff \sigma^i\circ\tau^j=\mathbb{1}\text{ or }\sigma^n
$$
进而
$$
\mathrm{Cent}(D_{2n-1})=\{\mathbb{1}\},\qquad
\mathrm{Cent}(D_{2n})=\{\mathbb{1},\sigma^n\}
$$

### 4.1.3	第三题

证明：
$$
\begin{align}
&\mathrm{Cent}(S_n)=S_n,\qquad & n=1,2\\
&\mathrm{Cent}(S_n)=\{ \mathbb{1} \},\qquad & n\ge 3
\end{align}
$$
证明：$n=1,2$结论易得。对于$n\ge 3$，任取$\varphi\in S_n$，使得对于任意$\psi\in S_n$，成立$\varphi\circ\psi=\psi\circ\varphi$。如果$\varphi\ne\mathbb{1}$，那么不妨$\varphi(n)=n_0\le n-1$。取
$$
\psi(k)=\begin{cases}
\varphi(k+1),\qquad & 1\le k\le n-1\\
\varphi(1),\qquad & k=n
\end{cases}
$$
由于$\varphi\circ\psi=\psi\circ\varphi$，那么对于任意$k\in\{ 1,\cdots,n-1 \}\setminus\{ n_0 \}$​，成立
$$
\begin{align}
&(\varphi\circ\psi)(k)=(\psi\circ\varphi)(k)\\
\iff &\varphi(\psi(k))=\psi(\varphi(k))\\
\iff &\varphi(\varphi(k+1))=\varphi(\varphi(k)+1)\\
\iff&\varphi(k+1)=\varphi(k)+1
\end{align}
$$
如果$n_0=1$，那么$\varphi(n)=\varphi(2)+n-2=1$，于是$\varphi(2)=1-n<0$，矛盾！

如果$n_0=n-1$，那么对于任意$1\le k\le n-1$，成立$\varphi(k)=\varphi(1)+k-1$，而$\varphi(n)=n_0=n-1\ne n$，那么存在$1\le k_0\le n-1$，使得成立$\varphi(k_0)=n$。如果$k_0\le n-2$，那么$\varphi(k_0+1)=\varphi(k_0)+1=n+1>n$，矛盾！如果$k_0=n-1$，那么$\varphi(n-2)=\varphi(k_0-1)=\varphi(k_0)-1=n-1=\varphi(n)$，矛盾！进而矛盾！

如果$2\le n_0 \le n-2$，那么对于任意$1\le k\le n_0$，$\varphi(k)=\varphi(1)+k-1$；对于任意$n_0+1\le k\le n$，$\varphi(k)=\varphi(n_0+1)+(k-n_0-1)$。由于$\varphi$为双射，而$\varphi(n)<n$，那么对于任意$1\le k\le n_0$，$\varphi(k)=n-n_0+k$；对于任意$n_0+1\le k\le n$，$\varphi(k)=k-n_0$。于是$\varphi(n)=n-n_0=n_0$，于是$n=2n_0$，进而$n$为偶数。那么对于任意$1\le k\le n/2$，$\varphi(k)=k+n/2$；对于任意$n/2+1\le k\le n$，$\varphi(k)=k-n/2$。

### <span id = '4.1.4'>4.1.4	第四题</span>

证明：
$$
N<\mathrm{Cent}(G)\iff N\lhd G
$$
证明：显然！

### <span id = '4.1.5'>4.1.5	第五题</span>

证明：
$$
G/\mathrm{Cent}(G)\cong \mathrm{Inn}(G)
$$
证明：考虑群同态映射$\Gamma:G\to \mathrm{Aut}_{\mathsf{Grp}}(G),\quad \mathscr{g}\mapsto \gamma_{\mathscr{g}}$，其中群内自同构映射$\gamma_{\mathscr{g}}:G\to G,\quad g\mapsto \mathscr{g}* g *\mathscr{g}^{-1}$。注意到$\ker \Gamma=\mathrm{Cent}(G)\lhd G$，$\text{im }\Gamma=\mathrm{Inn}(G)=\{ \gamma_\mathscr{g}:G\to G:\mathscr{g}\in G \}$。那么由群同构定理，可得$G/\mathrm{Cent}(G)\cong \mathrm{Inn}(G)$。

### 4.1.6	第六题

证明：对于素数$p$和$q$，如果$|G|=pq$，那么或$G$交换，或$\mathrm{Cent}(G)=\{e\}$。

证明：由[4.1.5](#4.1.5)，$\mathrm{Cent}(G)\lhd G$，因此$|\mathrm{Cent}(G)|\in\{ 1,p,q,pq \}$。

如果$|\mathrm{Cent}(G)|=1$，那么$\mathrm{Cent}(G)=\{e\}$。

如果$|\mathrm{Cent}(G)|=p$，那么$|G/\mathrm{Cent}(G)|=q$，因此$G/\mathrm{Cent}(G)\cong\Z/q\Z$。由[4.1.5](#4.1.5)，$\mathrm{Inn}(G)\cong\Z/q\Z$。由[2.6.7](#2.6.7)，$G$为Abel群。

同理，如果$|\mathrm{Cent}(G)|=q$，那么$G$为Abel群。

如果$|\mathrm{Cent}(G)|=pq$，那么$G=\mathrm{Cent}(G)$，因此$G$为Abel群。

### 4.1.7	第七题

构造$p^3$阶非Abel群，其中$p$为素数。

证明：$D_4$

### 4.1.8	第八题

#### <span id = '4.1.8.1'>4.1.8.1	第一问</span>

证明：对于$p$-群$(G,*)$，如果$N,M\lhd G$且$N\lneq M$，那么存在$L\lhd G$，使得成立$N<L<M$，且$[L:N]=p$。

证明：由第三同构定理，$M/N\lhd G/N$。由[4.1.9](#4.1.9)，$p\mid |M/N\cap\mathrm{Cent}(G/N)|$，其中$\mathrm{Cent}(G/N)=\{ g*N\in G/N:\mathscr{g}*g*N=g*\mathscr{g}*N,\forall \mathscr{g}*N\in G/N \}$。由Cauchy定理，群$M/N\cap\mathrm{Cent}(G/N)$存在$p$阶元$g*N$，那么群$\mathrm{Cent}(G/N)$存在$p$阶元$g*N$，此亦为商群$G/N$的$p$阶元，同时也为商群$M/N$的$p$阶元。记$L/N=\lang g*N\rang$，其中$L=\lang g,n:n\in N\rang$，因此$N<L$，且$[L:N]=|L/N|=p$。而$L/N<M/N$，因此$L<M$。由于$L/N<\mathrm{Cent}(G/N)$，那么由[4.1.4](#4.1.4)，$L/N\lhd G/N$。由第三同构定理，$L\lhd G$。

#### 4.1.8.2	第二问

证明：对于素数$p$，如果$|G|=p^r$，那么对于任意$0\le k \le r$，存在$N\lhd G$，使得成立$|N|=p^k$。

证明：由[4.1.8.1](#4.1.8.1)，结合归纳法，易证！

### <span id = '4.1.9'>4.1.9	第九题</span>

证明：对于$p$-群$(G,*)$，如果$N\sub G$为非平凡正规子群，那么$\{e\}\subsetneq N\cap\mathrm{Cent}(G)$，且$p\mid |N\cap\mathrm{Cent}(G)|$。

证明：考虑群$G$在集合$N$上的共轭作用$\bullet:G\times N\to N,\quad (\mathscr{g},n)\mapsto \mathscr{g}*n*\mathscr{g}^{-1}$，其不动点为$\mathrm{Fix}_G(N)=\{ n\in N:\mathscr{g}*n=n*\mathscr{g},\forall\mathscr{g}\in G \}$，而群$G$的中心为$\mathrm{Cent}(G)=\{ g\in G:\mathscr{g}*g=g*\mathscr{g},\forall \mathscr{g}\in G \}$，因此$\mathrm{Fix}_G(N)=N\cap\mathrm{Cent}(G)$。注意到$|N\cap\mathrm{Cent}(G)|\equiv|\mathrm{Fix}_G(N)|\equiv |N|\equiv 0\mod p$，而$\{e\}\in N\cap\mathrm{Cent}(G)$，因此$\{e\}\subsetneq N\cap\mathrm{Cent}(G)$，且$p\mid |N\cap\mathrm{Cent}(G)|$。

### 4.1.10	第十题

证明：对于奇数阶群$(G,*)$，如果$g\in G$与$g^{-1}$共轭，那么$g=e$。

### 4.1.11	第十一题

证明：对于有限群$(G,*)$，如果存在$g_1,\cdots,g_n\in G$，使得成立$\displaystyle G=\bigsqcup_{k=1}^{n}\mathrm{Conj}_G(g_k)$，且对于任意$1\le i,j\le n$，成立$g_i*g_j=g_j*g_i$，那么$G$为Abel群。

### 4.1.12	第十二题

证明：$D_8$和$Q_8$的类公式均为$8=2+2+2+2$。

证明：易得！

### 4.1.13	第十三题

证明：如果$(G,*)$为$6$阶非交换群，那么$\mathrm{Cent}(G)=\{e\}$，且由$2$阶和$3$阶等价类。

### 4.1.14	第十四题

证明：对于群$(G,*)$，如果$[G:\mathrm{Cent}(G)]=n$，那么对于任意子集$S\sub G$，$S$的共轭子集数不多于$n$。

### 4.1.15	第十五题

证明：如果群$(G,*)$的类公式为$60=1+15+20+12+12$，那么$G$为单群。

### 4.1.16	第十六题

对于有限群$(G,*)$，以及子群$H\sub G$，满足$[G:H]=2$。对于$h\in H$，记$[h]_{H}=\{ \mathscr{h}*h*\mathscr{h}^{-1}:\mathscr{h}\in H \}$，$[h]_{G}=\{ \mathscr{g}*h*\mathscr{g}^{-1}:\mathscr{g}\in G \}$。证明：
$$
\begin{align}
&\mathrm{Cent}_G(h)\sub H\implies |[h]_G|=2|[h]_H|\\
&\mathrm{Cent}_G(h)\not\sub H\implies [h]_G=[h]_H
\end{align}
$$

### 4.1.17	第十七题

证明：如果$H$为有限群$(G,*)$的真子群，那么$G$不为$H$的共轭子群的并。

### 4.1.18	第十八题

证明：对于群$(G,*)$在非平凡集合$S$上的可传递作用$\bullet:G\times S\to S$，存在$\mathscr{g}\in G$，使得对于任意$s\in S$，成立$\mathscr{g}\bullet s\ne s$。

### 4.1.19	第十九题

证明：如果$H$为有限群$(G,*)$的真子群，那么存在$g\in G$，使得成立$\mathrm{Conj}_G(g)\cap H=\varnothing$。

### 4.1.20	第二十题

对于$G=\mathrm{GL}_2(\C)$，令$H$表示由上三角矩阵构成的子群，证明：$G$为$H$的共轭子群的并。

### 4.1.21	第二十一题

对于群$(G,*)$的子群$H,K$，满足$H\sub\mathrm{Norm}_G(K)$，定义函数$\Psi:H\to \mathrm{Aut}_{\mathsf{Grp}}(K),\quad h\mapsto \psi_h$，其中$\psi_h:K\to K,\quad k\mapsto h*k*{h}^{-1}$。证明：$\Psi$为群同态映射，且$\ker\Psi=H\cap\mathrm{Cent}_G(K)$。

### 4.1.22	第二十二题

证明：对于有限群$(G,*)$，如果$p$为$|G|$的最小素因子，且$\Z/p\Z\lhd G$，那么$\Z/p\Z\sub \mathrm{Cent}(G)$。

## 4.2	Sylow定理

### 4.2.1	第一题

证明：对于有限群$(G,*)$，如果$p$为$|G|$的素因子，那么$G$的$p$阶元个数$n$成立$n\equiv 1\mod p$。
### 4.2.2	第二题

**特征子群(characteristic subgroup)**：称群$(G,*)$的子群$(H,*)$为特征子群，如果对于任意群同构映射$\varphi:G\to G$，成立$\varphi(H)\sub H$。

#### 4.2.2.1	第一问

证明：群的特征子群为正规子群。

证明：取群内自同构映射即可。

#### 4.2.2.2	第二问

证明：对于群$(G,*)$，如果$H\subset N\subset G$，且$H$为$N$的特征子群，$N$为$G$的正规子群，那么$H$为$G$的正规子群。

#### 4.2.2.3	第三问

证明：对于群$(G,*)$与群$(H,*)$，如果$G$存在且存在唯一子群$N$，使得成立$N\cong H$，那么$N$为$G$的正规子群。

#### 4.2.2.4	第四问

证明：如果$N$为有限群$(G,*)$的正规子群，且$\text{gcd}(|N|,|G/N|)=1$，那么$N$为$G$的特征子群。

### <span id = '4.2.3'>4.2.3	第三题</span>

证明：对于非零Abel群$(G,*)$，成立
$$
G\text{为单群}\iff G\text{为素数阶}群
$$

证明：充分性显然！对于必要性，如果$G$为Abel单群，而$G$的子群为正规子群，那么$G$仅存在平凡子群，由Lagrange定理\ref{thm:Lagrange定理}，$G$为素数阶群。

### 4.2.4	第四题

### 4.2.5	第五题

证明：如果$(G,*)$为单群，$\varphi:G\to H$为非平凡群同态映射，那么$\varphi$为单射。

证明：取$H$的正规子群$N$，由\ref{pro:正规子群的原像为正规子群}，$\ker\varphi\sub \varphi^{-1}(N)\lhd G$。而$G$为单群，因此$\varphi^{-1}(N)=\{e\}$或$\varphi^{-1}(N)=G$。如果$\varphi^{-1}(N)=\{e\}$，那么$\ker\varphi=\{e\}$，因此由\ref{pro:群同态单的等价条件}，$\varphi$为单射。如果$\varphi^{-1}(N)=G$，那么

### 4.2.6	第六题

证明：对于$p$-群$(G,*)$，成立
$$
G\text{为单群}\iff |G|=p
$$

证明：由[4.2.3](#4.2.3)，充分性显然。

### 4.2.7	第七题

证明：不存在如下阶的单群。
$$
6,10,14,15,20,21,22,26,28,33,34,35,38,39,42,44,46,51,52,55,57,58
$$

### 4.2.8	第八题

对于有限群$(G,*)$，记
$$
N=\bigcap_{P\text{为Sylow }p\text{-子群}}P
$$
证明：$N$为极大正规$p$-子群。

### 4.2.9	第九题

证明：对于有限群$(G,*)$的Sylow $p$-子群$P$，如果$H\sub\mathrm{Norm}_G(P)$为$p$-子群，那么$H\sub P$。

### <span id = '4.2.10'>4.2.10	第十题</span>

证明：对于有限群$(G,*)$的Sylow $p$-子群$P$，记$\Omega=\{ G\text{的Sylow }p\text{-子群} \}$，定义作用
$$
\begin{align}
\bullet:\begin{aligned}[t]
P\times \Omega&\longrightarrow\Omega\\
(\mathscr{p},Q)&\longmapsto \mathscr{p}*Q*\mathscr{p}^{-1}
\end{aligned}
\end{align}
$$
那么
$$
\mathrm{Fix}_P(\Omega)=\{P\}
$$
证明：注意到
$$
\mathrm{Fix}_{P}(\Omega)=\{ Q\in\Omega:\mathscr{p}*Q=Q*\mathscr{p},\forall \mathscr{p}\in P \}
$$
而
$$
\mathrm{Norm}_G(Q)=\{ \mathscr{g}\in G:\mathscr{g}*Q=Q*\mathscr{g} \}
$$
因此$Q\in\mathrm{Fix}_P(\Omega)\iff P<\mathrm{Norm}_G(Q)$。任取$Q\in\mathrm{Fix}_P(\Omega)$，那么$P<\mathrm{Norm}_G(Q)$。因为$Q\lhd \mathrm{Norm}_G(Q)$，而$Q$为$\mathrm{Norm}_G(Q)$的Sylow $p$-子群，所以$\mathrm{Norm}_G(Q)$存在且存在唯一Sylow $p$-子群。又因为$P$为$\mathrm{Norm}_G(Q)$的Sylow $p$-子群，所以$Q=P$，从而$\mathrm{Fix}_P(\Omega)=\{P\}$。

### 4.2.11	第十一题

给出Sylow第三定义的一个新的证明：对于素数$p$，如果$(n,p)=1$，那么$np^r$阶群的$p^r$阶子群数$N_p$成立$N_p\equiv 1\mod p$，且$N_p\mid n$。

**证明**：对于$np^r$阶群$(G,*)$，考虑任意Sylow $p$-子群$P$在集合$\Omega=\{ P<G:|P|=p^r \}=\{ P_k \}_{k=1}^{N_p}$上的共轭作用
$$
\begin{align}
\bullet:\begin{aligned}[t]
P\times \Omega&\longrightarrow\Omega\\
(\mathscr{p},Q)&\longmapsto \mathscr{p}*Q*\mathscr{p}^{-1}
\end{aligned}
\end{align}
$$
由[4.2.10](#4.2.10)，$\mathrm{Fix}_P(\Omega)=\{P\}$，从而
$$
N_p\equiv |\Omega|\equiv |\mathrm{Fix}_P(\Omega)|\equiv 1\mod p
$$
由于$P$的共轭子群个数为$[G:\mathrm{Norm}_G(P)]$，因此$N_p=[G:\mathrm{Norm}_G(P)]$，从而$N_p\mid |G|=np^r$。而$N_p\equiv 1\mod p$，因此$(N_p,p)=1$，进而$N_p\mid n$。

### 4.2.12	第十二题

证明：对于有限群$(G,*)$的Sylow $p$-子群$P$，如果$\mathrm{Norm}_G(P)\sub H<G$，那么
$$
[G:H]\equiv 1\mod p
$$

### 4.2.13	第十三题

#### 4.2.13.1	第一问

证明：对于有限群$(G,*)$的Sylow $p$-子群$P$，如果$P\lhd G$，那么$P$为$G$的特征子群。

#### 4.2.13.2	第二问

证明：对于有限群$(G,*)$的Sylow $p$-子群$P$，如果$P\lhd N\lhd G$，那么$P\lhd G$。

#### 4.2.13.3	第三问

证明：对于有限群$(G,*)$的Sylow $p$-子群$P$，成立
$$
\mathrm{Norm}_G(\mathrm{Norm}_G(P))=P
$$

### 4.2.14	第十四题

证明：不存在如下阶的单群。
$$
18,40,45,50,54
$$

### 4.2.15	第十五题

对于$n\le 15$且$n\ne 8,12$，求解$n$阶群的结构。

### 4.2.16	第十六题

证明：$8$阶非交换群同构于$D_8$或$Q_8$。

### 4.2.17	第十七题

证明：$64$阶除环为域。

### 4.2.18	第十八题

证明：对于素数$p,q$，如果$p<q$且$p\not\mid q-1$，那么$pq$阶群$(G,*)$成立$G\cong \Z/pq\Z$。

证明：对于$pq$阶群$(G,*)$，由Sylow第三定理\ref{thm:Sylow第三定理}，$G$存在且仅存在唯一$p$阶子群$H$，存在且存在唯一$q$阶子群$K$，且$H\cap K=\{e\}$。由\ref{cor:Sylow p-子群为正规子群的等价条件}，$H,K\lhd G$。

由\ref{cor:素数阶群为循环群}，$H\cong \Z/p\Z$且$K\cong \Z/q\Z$。设$H=\{ h^i:0\le i<p \}$，$K=\{ k^j:0\le j<q \}$。由于
$$
h^i*k^j=h^k*k^l\implies h^{i-k}=k^{l-j}\in H\cap K=\{e\}\implies i=k,j=l
$$
那么
$$
G=\{ h^i*k^j:0\le i<p,0\le j<q \}
$$

由于$K\lhd G$，那么$a*K*a^{-1}=K$，由此定义群内自同构映射
$$
\begin{align}
\varphi:\begin{aligned}[t]
K&\longrightarrow K\\
x&\longmapsto h*x*h^{-1}
\end{aligned}
\end{align}
$$
由命题\ref{pro:素数阶群的自同构群}，$\varphi\in\mathrm{Aut}_{\mathsf{Grp}}(K)\cong \Z/(q-1)\Z$，因此$\varphi^{q-1}=\mathbb{1}$。由于$p\nmid q-1$，那么$\mathrm{gcd}(p,q-1)=1$，因此由命题\ref{thm:互素的等价条件}，存在$a,b$，使得成立$ap+b(q-1)=1$。由$\varphi^{p}=1$，那么
$$
\varphi=\varphi^{ap+b(q-1)}=(\varphi^p)^a\circ (\varphi^{q-1})^b=\mathbb{1}
$$
因此$h*k=k*h$。由命题\ref{pro:2.1.14}，$|h*k|=|h||k|=pq$，进而$G=\lang h*k \rang \cong \Z/pq\Z$。

### 4.2.19	第十九题

求解$pq$阶群的结构，其中$p\ne q$为素数。

### 4.2.20	第二十题

$168$阶单群中$7$阶元素有多少个？

### 4.2.21	第二十一题

证明：$pqr$阶群不为单群，其中$p<q<r$为素数。

### 4.2.22	第二十二题

证明：对于$n$阶群$(G,*)$，如果$p$为$n$的素因子，且
$$
\{ m:m\mid n,n\equiv 1\mod p \}=\{1\}
$$
那么$G$为单群。

### 4.2.23	第二十三题

#### 4.2.23.1	第一问

证明：对于$n$阶群$(G,*)$，对于任意$n$的素因子$p$，成立$N_p!\mid n$，其中$N_p$为$G$的Sylow $p$-子群数。

#### 4.2.23.2	第二问

证明：对于$n$阶群$(G,*)$，如果$G$为单群，$H$为$G$的子群，且$[G:H]=m$，那么$m!\mid n$。

### 4.2.24	第二十四题

#### 4.2.24.1	第一问

证明：阶数最小的非交换单群为$A_5$，其阶数为$60$。

#### 4.2.24.2	第二问

证明：阶数第二小的非交换单群的阶数为$168$。

### 4.2.25	第二十五题

证明：$60$阶单群包含指数为$5$的子群。

## 4.3	合成列与可解性

### 4.3.1	第一题

证明：$\Z$存在任意长度的正规列。

### 4.3.2	第二题

#### 4.3.2.1	第一问

计算循环群的合成长度。

#### 4.3.2.2	第二问

计算可解群的合成长度。

### 4.3.3	第三题

#### 4.3.3.1	第一问

证明：有限群存在合成列。

#### 4.3.3.2	第二问

证明：$\Z$不存在合成列。

### 4.3.4	第四题

构造：$G\ncong H$，使得$G$与$H$的合成因子相同。

### 4.3.5	第五题

证明：
$$
H,K\lhd G\implies H*N\lhd G
$$

证明：
$$
\begin{align}
H,K\lhd G
\iff & \forall g\in G,h\in H,k\in K,g*h*g^{-1}\in H,g*k*g^{-1}\in K\\
\implies & \forall g\in G,h\in H,k\in K,(g*h*g^{-1})*(g*k*g^{-1})\in H*K\\
\iff & \forall g\in G,h\in H,k\in K,g*(h*k)*g^{-1}\in H*K\\
\iff & H*N\lhd G
\end{align}
$$

### 4.3.6	第六题

证明：
$$
G\times H\text{存在合成列}\iff G,H\text{存在合成列}
$$

### 4.3.7	第七题

使用Schreier定理证明Jordan-Hölder定理。

### 4.3.8	第八题

证明：对于群同态映射$\varphi:G\to H$，成立
$$
\varphi([g,h])=[\varphi(g),\varphi(h)],\qquad 
\varphi([G,G])\sub [\text{im }\varphi,\text{im}\varphi]
$$

证明：
$$
\varphi([g,h])=\varphi(g*h*g^{-1}*h^{-1})=\varphi(g)*\varphi(h)*\varphi(g)^{-1}*\varphi(h)^-1=[\varphi(g),\varphi(h)]\in  [\text{im }\varphi,\text{im}\varphi]
$$

### 4.3.9	第九题

构造非平凡$p$-群的Abel正规列。

### 4.3.10	第十题

### 4.3.11	第十一题

#### 4.3.11.1	第一问

证明：如果$N$为幂零群$(G,*)$的非平凡正规子群，那么$N\cap\mathrm{Cent}(G)$非平凡。

#### 4.3.11.2	第二问

证明：$p$-群为幂零群。

### 4.3.12	第十二题

#### 4.3.12.1	第一问

证明：如果$H$为有限幂零群$(G,*)$的真子群，那么$H\subsetneq \mathrm{Norm}_G(H)$。

#### 4.3.12.2	第二问

证明：有限幂零群的Sylow子群为正规子群。

### 4.3.13	第十三题

证明：群的导群为特征子群。

### 4.3.14	第十四题

证明：如果$H$为可解群$(G,*)$的非平凡正规子群，那么$G$存在非平凡正规交换子群$K$，使得成立$K\sub H$。

### 4.3.15	第十五题

#### 4.3.15.1	第一问

证明：$p^2q$阶群可解，其中$p,q$为素数。

#### 4.3.15.2	第二问

Burnside定理：$p^mq^n$阶群可解，其中$p,q$为素数。

### 4.3.16	第十六题

证明：如果$|G|<120$且$|G|\ne 60$，那么群$(G,*)$可解。

### 4.3.17	第十七题

证明：
$$
\text{奇数阶群可解}\iff \text{有限非交换单群阶数偶}
$$

## 4.4	对称群

### 4.4.1	第一题

计算$(18632)(47)$在$S_8$共轭类。

### 4.4.2	第二题

证明：置换的轮换分解。

### 4.4.3	第三题

### 4.4.4	第四题

### 4.4.5	第五题

计算$S_n$的类公式。

### 4.4.6	第六题

计算$S_4$的正规子群。

### 4.4.7	第七题

证明：
$$
S_n=\langle (12),(12\cdots n) \rangle
$$

### 4.4.8	第八题

### 4.4.9	第九题

### 4.4.10	第十题

证明：$S_n$中的$n$-轮换个数为$(n-1)!$。

### 4.4.11	第十一题

对于素数$p$，计算$S_p$的Sylow $p$-子群。

### 4.4.12	第十二题

### 4.4.13	第十三题

### 4.4.14	第十四题

证明：当$n\ge 4$时，$\mathrm{Cent}(A_n)=\{\mathbb{1}\}$。

### 4.4.15	第十五题

### 4.4.16	第十六题

### 4.4.17	第十七题

### 4.4.18	第十八题

### 4.4.19	第十九题

### 4.4.20	第二十题

### 4.4.21	第二十一题

### 4.4.22	第二十二题