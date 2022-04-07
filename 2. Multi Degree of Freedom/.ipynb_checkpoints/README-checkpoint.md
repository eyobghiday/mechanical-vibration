# Multi Degree of Freedom

## Theory
Consider a system of coupled oscillators with masses defined in Figure1, as well as coupling springs defined in said figure.
Figure 1: Four carts and five springs
Solving for the normal modes and normal frequencies of this system is best accomplished using matrix methods, which is shown in the following equations. The mass matrix (M) of the system is shown in equation one. This matrix is symmetric and diagonal.
![](src/m5.png)
Or 
The K matrix is a mathematical representation of the manner in which the springs of this system
are connected, and how they respond to each other. K for the system in Figure1 is shown in equation two, which is also symmetric.
![](src/fig1.png)
Fundamental formula to the solution (simplified) from our class is given by the fourier series:
$$ F(t) = \sum_{n=-N}^N c_p \exp \left( \frac{i 2\pi n t}{T_0}\right) $$
with 
$$ c_n = \frac{1}{T_0} \int_{0}^{2} f(t) \exp \left( \frac{-i 2\pi n t}{T_0}\right) \mathrm{d}t $$
and
$$ x(t) = \sum_{n=-N}^N C_p|G_p|\exp \left( \frac{i 2\pi n t}{T_0}-\phi_p\right) $$ 

\begin{}Mx^{\cdot }+Kx=0\\
\left ( K-\omega ^{2}M\right) A=0\\
determinant \left( K-\omega ^{2}M\right) =0\end

where...,  A=\begin{bmatrix}
a_{1} \\
a_{2} \\
a_{3} \\
a_{1} \\
a_{5}
\end{bmatrix}

\begin{bmatrix}
m_{1} & 0 & 0 & 0 & 0 \\
0 & m_{2} & 0 & 0 & 0 \\
0 & 0 & m _{3} & 0 & 0 \\
0 & 0 & 0 & m _{4} & 0 \\
0 & 0 & 0 & 0 & m _{5}
\end{bmatrix}\ddot X+\begin{bmatrix}
k_{1}+k_{2} & -k_{2} & 0 & 0 & 0 \\
-k_{2} & k_{2}+k_{3} & -k_{3} & 0 & 0 \\
0 & -k_{3} & k_{3}+k_{4} & -k_{4}& 0 \\
0 & 0 & -k_{4} & k_{4}+k_{5} & -k _{5} \\
0 & 0 & 0 & -k _{5} & k_{5}+k_{6}
\end{bmatrix} \dot X= \begin{matrix}
0 \\ 0 \\
0 \\ 0 \\ 0 \\

\begin{bmatrix}
10 & 0 & 0 & 0 & 0 \\
0 & 10 & 0 & 0 & 0 \\
0 & 0 & 10 & 0 & 0 \\
0 & 0 & 0 & 10 & 0 \\
0 & 0 & 0 & 0 & 10
\end{bmatrix}\ddot X+\begin{bmatrix}
2 & -1 & 0 & 0 & 0 \\
-1 & 2 & -1 & 0 & 0 \\
0 & -1 & 2 & -1 & 0 \\
0 & 0 & -1 & 2 & -1 \\
0 & 0 & 0 & -1 & 2
\end{bmatrix}\dot X=\begin{bmatrix}
0 \\
0 \\
0 \\
0 \\
0
\end{bmatrix}
\end{bmatrix}

![](src/fig1.png)
![](src/fig2.png)
![](src/fig3.png)

