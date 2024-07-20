考虑如下递推公式的通项：
$$
x_{n+2}=px_{n+1}-qx_n
$$
其特征方程为
$$
\lambda^2-p\lambda+q=0
$$
判别式为
$$
\Delta=p^2-4q
$$

首先，当$\Delta=p^2-4q>0$时，容易知道通项为
$$
x_n
=A\left(\frac{p+\sqrt{p^2-4q}}{2}\right)^n
+B\left(\frac{p-\sqrt{p^2-4q}}{2}\right)^n
$$

其次，当$\Delta=p^2-4q=0$时，容易知道通项为
$$
x_n=(An+B)\left(\frac{p}{2}\right)^2
$$

最后，当$\Delta=p^2-4q<0$时，记
$$
\begin{align}
&\rho=\left|\frac{p+i\sqrt{4q-p^2}}{2}\right|=\sqrt{q}\\
&\theta=\arg\frac{p+i\sqrt{4q-p^2}}{2}=
\begin{cases}
\arctan\mathrm{sgn}(p)\sqrt{\frac{4q}{p^2}-1},\quad & p\ne0\\
\frac{\pi}{2},\quad & p=0
\end{cases}
\end{align}
$$
其中$\theta\in(0,\pi)$。那么容易知道通项为
$$
x_n=\rho^n(A\cos{n\theta}+B\sin{n\theta})
$$
为了探究$x_n$的周期性，注意到
$$
\cos\theta=\frac{p}{2\sqrt{q}}
$$
我们想要找到$r\in\Q$，使得$\theta=r\pi$。事实上，这大概率是不存在的。

我们使用mathematica求解$q=4,p=1$的情况：

```mathematica
(* 求解通项公式 *)
RSolve[{a[2 + n] == a[n + 1] - 4*a[n]}, a[n], n];

(* 定义函数，令A=B=1，注意此处将rho^n已除掉，以消除半径扩大的影响 *)
f[n_] = Re[(1/4 - (I Sqrt[15])/4)^n + (1/4 + (I Sqrt[15])/4)^n];

(* 输出该数列的前1000项 *)
result = Table[f[n], {n, 1, 1000}];

(* 判定该数列的前1000项是否存在相同元素 *)
DuplicateFreeQ[result]
```

返回

```mathematica
True
```

表明该数列的前1000项不存在相同元素。

```mathematica
(* 判断arccos(1/4)/pi是否为有理数 *)
Element[ArcCos[1/4]/Pi, Rationals]
```

返回属于有理数域，但是

```mathematica
(* 判断e/pi是否为有理数 *)
Element[E/Pi, Rationals]
```

同样返回属于有理数域，所以我怀疑mathematica算错了。