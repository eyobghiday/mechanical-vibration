# Mechanical Vibration
This repo is a project for the analysis, study and design of mechanical vibrations for my MMAE-535 Vibrations course.  The topics include one dimensional motion of elastic continuum, traveling waves, standing waves, energy flux, and the use of Fourier integrals. Problem statement in dynamic elasticity, uniqueness of solution, basic solution of elastodynamics, integral representations, steady state time harmonic response. Elastic waves in unbounded medium, plane harmonic waves in elastic half-spaces, reflection and transmission at interfaces, Rayleigh waves, Stoneley waves, slowness diagrams, dispersive waves in waveguides and phononic composites, thermal effects and effects of viscoelasticity, anisotropy, and nonlinearity on wave propagation.

### Questions?
The codes I wrote here are purely for eucational purposes, so please take caution when you refer to them. For questions, comments, edit and changes, please contact me. Or tag my username <b> @eyobghiday </b> in the code.

## FEM Analysis for Complex Structures
Each component of the platform has been fundamentally designed for parallel processing. Executing a script in parallel is as simple as calling mpirun filename. This framework allows for rapid prototyping of finite element formulations and solvers on laptops and workstations, and the same code may then be deployed on large high-performance computers.

## Multi Degree of Freedom Vibration
## Theory

The K matrix is a mathematical representation of the manner in which the springs of this system
are connected, and how they respond to each other. K for the system in Figure1 is shown in equation two, which is also symmetric.

Fundamental formula to the solution (simplified) from our class is given by the fourier series and green's functions as:

<div class="box" align="center">

<img src="https://i.upmath.me/svg/%20F(t)%20%3D%20%5Csum_%7Bn%3D-N%7D%5EN%20c_n%20%5Cexp%20%5Cleft(%20%5Cfrac%7Bi%202%5Cpi%20n%20t%7D%7BT_0%7D%5Cright)%20" alt=" F(t) = \sum_{n=-N}^N c_n \exp \left( \frac{i 2\pi n t}{T_0}\right) " />

where
</br> 
<img src="https://i.upmath.me/svg/%20c_n%20%3D%20%5Cfrac%7B1%7D%7BT_0%7D%20%5Cint_%7B0%7D%5E%7B2%7D%20f(t)%20%5Cexp%20%5Cleft(%20%5Cfrac%7B-i%202%5Cpi%20n%20t%7D%7BT_0%7D%5Cright)%20%5Cmathrm%7Bd%7Dt%20" alt=" c_n = \frac{1}{T_0} \int_{0}^{2} f(t) \exp \left( \frac{-i 2\pi n t}{T_0}\right) \mathrm{d}t " />

and
</br> 
<img src="https://i.upmath.me/svg/%20x(t)%20%3D%20%5Csum_%7Bn%3D-N%7D%5EN%20C_n%7CG_n%7C%5Cexp%20%5Cleft(%20%5Cfrac%7Bi%202%5Cpi%20n%20t%7D%7BT_0%7D-%5Cphi_p%5Cright)%20" alt=" x(t) = \sum_{n=-N}^N C_n|G_n|\exp \left( \frac{i 2\pi n t}{T_0}-\phi_p\right) " /> 
</div>
Now consider a system of coupled oscillators with masses defined in the figure below, as well as the coupling springs defined. 
<div class="box" align="center">
        <img src="src/m5_n.png" align="center" width="500"/>
</div>

We have five carts and five springs
Solving for the normal modes and normal frequencies of this system is best accomplished using matrix methods, which is shown in the following equations. The mass matrix (M) of the system is shown in equation one. This matrix is symmetric and diagonal.
<div class="box" align="center">

<img src="https://i.upmath.me/svg/%0AMx%5E%7B%5Ccdot%20%7D%2BKx%3D0%5C%5C%0A%5Cleft%20(%20K-%5Comega%20%5E%7B2%7DM%5Cright)%20A%3D0%5C%5C%0Adet%20%20%5Cleft(%20K-%5Comega%20%5E%7B2%7DM%5Cright)%20%3D0%5C%5C%0A" alt="
Mx^{\cdot }+Kx=0\\
\left ( K-\omega ^{2}M\right) A=0\\
det  \left( K-\omega ^{2}M\right) =0\\
" />



Since the masses are unforced and undamped the matrix A is given by s :
<img src="https://i.upmath.me/svg/%0A%20A%3D%5Cbegin%7Bbmatrix%7D%0Aa_%7B1%7D%20%5C%5C%0Aa_%7B2%7D%20%5C%5C%0Aa_%7B3%7D%20%5C%5C%0Aa_%7B1%7D%20%5C%5C%0Aa_%7B5%7D%5C%5C%0A%5Cend%7Bbmatrix%7D%0A" alt="
 A=\begin{bmatrix}
a_{1} \\
a_{2} \\
a_{3} \\
a_{1} \\
a_{5}\\
\end{bmatrix}
" />
</div>

Let's set app our matrix equation as follows;

<div class="box" align="center">

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Bbmatrix%7D%0Am_%7B1%7D%20%26%200%20%26%200%20%26%200%20%26%200%20%5C%5C%0A0%20%26%20m_%7B2%7D%20%26%200%20%26%200%20%26%200%20%5C%5C%0A0%20%26%200%20%26%20m%20_%7B3%7D%20%26%200%20%26%200%20%5C%5C%0A0%20%26%200%20%26%200%20%26%20m%20_%7B4%7D%20%26%200%20%5C%5C%0A0%20%26%200%20%26%200%20%26%200%20%26%20m%20_%7B5%7D%0A%5Cend%7Bbmatrix%7D%0A%5Cddot%20X%2B%5Cbegin%7Bbmatrix%7D%0Ak_%7B1%7D%2Bk_%7B2%7D%20%26%20-k_%7B2%7D%20%26%200%20%26%200%20%26%200%20%5C%5C%0A-k_%7B2%7D%20%26%20k_%7B2%7D%2Bk_%7B3%7D%20%26%20-k_%7B3%7D%20%26%200%20%26%200%20%5C%5C%0A0%20%26%20-k_%7B3%7D%20%26%20k_%7B3%7D%2Bk_%7B4%7D%20%26%20-k_%7B4%7D%26%200%20%5C%5C%0A0%20%26%200%20%26%20-k_%7B4%7D%20%26%20k_%7B4%7D%2Bk_%7B5%7D%20%26%20-k%20_%7B5%7D%20%5C%5C%0A0%20%26%200%20%26%200%20%26%20-k%20_%7B5%7D%20%26%20k_%7B5%7D%2Bk_%7B6%7D%0A%5Cend%7Bbmatrix%7D%20%5Cdot%20X%3D%20%5Cbegin%7Bbmatrix%7D%0Aa_%7B1%7D%20%5C%5C%0Aa_%7B2%7D%20%5C%5C%0Aa_%7B3%7D%20%5C%5C%0Aa_%7B1%7D%20%5C%5C%0Aa_%7B5%7D%5C%5C%0A%5Cend%7Bbmatrix%7D%0A" alt="
\begin{bmatrix}
m_{1} &amp; 0 &amp; 0 &amp; 0 &amp; 0 \\
0 &amp; m_{2} &amp; 0 &amp; 0 &amp; 0 \\
0 &amp; 0 &amp; m _{3} &amp; 0 &amp; 0 \\
0 &amp; 0 &amp; 0 &amp; m _{4} &amp; 0 \\
0 &amp; 0 &amp; 0 &amp; 0 &amp; m _{5}
\end{bmatrix}
\ddot X+\begin{bmatrix}
k_{1}+k_{2} &amp; -k_{2} &amp; 0 &amp; 0 &amp; 0 \\
-k_{2} &amp; k_{2}+k_{3} &amp; -k_{3} &amp; 0 &amp; 0 \\
0 &amp; -k_{3} &amp; k_{3}+k_{4} &amp; -k_{4}&amp; 0 \\
0 &amp; 0 &amp; -k_{4} &amp; k_{4}+k_{5} &amp; -k _{5} \\
0 &amp; 0 &amp; 0 &amp; -k _{5} &amp; k_{5}+k_{6}
\end{bmatrix} \dot X= \begin{bmatrix}
a_{1} \\
a_{2} \\
a_{3} \\
a_{1} \\
a_{5}\\
\end{bmatrix}
" />


Now let's say we have 

<img src="https://i.upmath.me/svg/%20m_%7B1%7D%3Dm_%7B2%7D%3D10%2C%20m_%7B3%7D%3D5%2C%20m_%7B4%7D%3Dm_%7B5%7D%3D2%3B%20%5C%5C%20and%20%5C%5C%0Ak_%7Bi%7D%3D1%20%5Cquad%5Cforall%20n%5Cin%5Cmathbb%201%5Cleq%20i%5Cleq5%20" alt=" m_{1}=m_{2}=10, m_{3}=5, m_{4}=m_{5}=2; \\ and \\
k_{i}=1 \quad\forall n\in\mathbb 1\leq i\leq5 " /> 
</div>

We can plot find all the natural natural frequencies of the system and plot all the modeshapes as the following write a code in Matlab or Python to produce a graph. 

<div class="box" align="center">

<img src="https://i.upmath.me/svg/%5Cbegin%7Bbmatrix%7D%0A10%20%26%200%20%26%200%20%26%200%20%26%200%20%5C%5C%0A0%20%26%2010%20%26%200%20%26%200%20%26%200%20%5C%5C%0A0%20%26%200%20%26%2010%20%26%200%20%26%200%20%5C%5C%0A0%20%26%200%20%26%200%20%26%2010%20%26%200%20%5C%5C%0A0%20%26%200%20%26%200%20%26%200%20%26%2010%0A%5Cend%7Bbmatrix%7D%20%0A%5Cddot%20X%2B%0A%5Cbegin%7Bbmatrix%7D%0A2%20%26%20-1%20%26%200%20%26%200%20%26%200%20%5C%5C%0A-1%20%26%202%20%26%20-1%20%26%200%20%26%200%20%5C%5C%0A0%20%26%20-1%20%26%202%20%26%20-1%20%26%200%20%5C%5C%0A0%20%26%200%20%26%20-1%20%26%202%20%26%20-1%20%5C%5C%0A0%20%26%200%20%26%200%20%26%20-1%20%26%202%0A%5Cend%7Bbmatrix%7D%20%5Cdot%20X%3D%5Cbegin%7Bbmatrix%7D%0A0%20%5C%5C%0A0%20%5C%5C%0A0%20%5C%5C%0A0%20%5C%5C%0A0%0A%5Cend%7Bbmatrix%7D%0A" alt="\begin{bmatrix}
10 &amp; 0 &amp; 0 &amp; 0 &amp; 0 \\
0 &amp; 10 &amp; 0 &amp; 0 &amp; 0 \\
0 &amp; 0 &amp; 10 &amp; 0 &amp; 0 \\
0 &amp; 0 &amp; 0 &amp; 10 &amp; 0 \\
0 &amp; 0 &amp; 0 &amp; 0 &amp; 10
\end{bmatrix} 
\ddot X+
\begin{bmatrix}
2 &amp; -1 &amp; 0 &amp; 0 &amp; 0 \\
-1 &amp; 2 &amp; -1 &amp; 0 &amp; 0 \\
0 &amp; -1 &amp; 2 &amp; -1 &amp; 0 \\
0 &amp; 0 &amp; -1 &amp; 2 &amp; -1 \\
0 &amp; 0 &amp; 0 &amp; -1 &amp; 2
\end{bmatrix} \dot X=\begin{bmatrix}
0 \\
0 \\
0 \\
0 \\
0
\end{bmatrix}
" />

</div>


Graph 2. Shows all the modes this spring mass system will vibrate. 
<div class="box" align="center">
        <img src="src/modals.png" align="center" width="400" height="300"/>
</div>

The graph below shows a 3D plot with real and imaginary parts in Matalb. And finally we can check the orthogonality of the system by creating a modal matrix. They are indeed diagona. </br>

<div class="box" align="center">
        <img src="src/Fig2.png" align="center" width="300" height="250"/>
        <img src="src/Fig3.png" align="center" width="300" height="250"/>
<br>
</div>
