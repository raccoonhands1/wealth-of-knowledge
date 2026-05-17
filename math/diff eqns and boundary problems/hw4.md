## 1
for which of the following are these diff eqns exact? for those vals determine general sln
### a
$$(4x+ay+1) + (6x+2y-3)y^\prime = 0$$
$$
\begin{align} 
M = 4x+ay+1 \\
N=6x+2y-3 \\
 \\
\frac{{\partial M}}{\partial y} = a \\
\frac{{\partial N}}{\partial x} = 6 \\
\end{align}
$$
thus $\frac{{\partial M}}{\partial y}=\frac{{\partial N}}{\partial x}$ when a = 6

$$
\psi = \int (4x+6y+1)\,dx = 2x^2 + 6xy + x + h(y)
$$
$$
\psi_y = 6x + h^\prime(y) = 6x+2y-3 \implies h(y)=y^2-3y
$$
general solution
$$
2x^2 + 6xy + x + y^2 - 3y = C
$$

### b
$$
(e^{2x} \sin y + ae^{2x}\cos y) + (4e^{2x}\sin y + be^{2x}\cos y)y^\prime = 0
$$
$$
\begin{align}
M &= e^{2x}\sin y+ ae^{2x}\cos y \\
N &= 4e^{2x}\sin y+be^{2x}\cos y \\[6pt]

\frac{{\partial M}}{\partial y} &= e^{2x}\cos y - ae^{2x}\sin y \\
\frac{{\partial N}}{\partial x} &= 8e^{2x}\sin y + 2be^{2x}\cos y \\[6pt]


8e^{2x}\sin y + 2be^{2x}\cos y &= e^{2x}\cos y - ae^{2x}\sin y \\ \\

\end{align}
$$
$$
\begin{align}
a = -8,\ b = \tfrac{1}{2}
\end{align}
$$

$$
\psi = \int M\,dx = \int (e^{2x}\sin y - 8e^{2x}\cos y)\,dx = \tfrac{1}{2}e^{2x}\sin y - 4e^{2x}\cos y + h(y)
$$
$$
\psi_y = \tfrac{1}{2}e^{2x}\cos y + 4e^{2x}\sin y + h^\prime(y) = 4e^{2x}\sin y + \tfrac{1}{2}e^{2x}\cos y
$$
general solution
$$
{\tfrac{1}{2}e^{2x}\sin y - 4e^{2x}\cos y = C}
$$


### c
$$
(3x^2 + axy-2y^2)+(4x^2+bxy-3y^2)y^\prime=0
$$
$$
\begin{align}
M &= 3x^2+axy-2y^2 \\
N &= 4x^2 +bxy - 3y^2 \\[6pt]
\frac{{\partial M}}{\partial y} &= ax - 4y \\
\frac{{\partial N}}{\partial x} &= 8x + by \\[6pt]
ax - 4y &= 8x + by \\[6pt]
a=8,\ & b=-4
\end{align}
$$

$$
\psi = \int (3x^2+8xy-2y^2)\,dx = x^3 + 4x^2 y - 2xy^2 + h(y)
$$
$$
\psi_y = 4x^2 - 4xy + h^\prime(y) = 4x^2 - 4xy - 3y^2 \implies h(y)=-y^3
$$
general solution
$$
{x^3 + 4x^2 y - 2xy^2 - y^3 = C}
$$


### d
$$
\left( \frac{2y}{x} + \frac{3y}{x^2} + \frac{ay^2}{x^2} \right) + \left( \frac{4y}{x^2} + \frac{b}{x} + c\ln x \right)y^\prime = 0
$$
$$
\begin{align}
M &= \tfrac{2y}{x} + \tfrac{3y}{x^2} + \tfrac{ay^2}{x^2} \\
N &= \tfrac{4y}{x^2} + \tfrac{b}{x} + c\ln x \\[6pt]
\frac{{\partial M}}{\partial y} &= \tfrac{2}{x} + \tfrac{3}{x^2} + \tfrac{2ay}{x^2} \\
\frac{{\partial N}}{\partial x} &= -\tfrac{8y}{x^3} - \tfrac{b}{x^2} + \tfrac{c}{x}
\end{align}
$$
there are no values of a, b, and c that satisfy the exactness requirement
## 2
$$
M = 8x+4y-3x^2,\quad N = 4x+2y
$$
$$
\frac{{\partial M}}{\partial y} = 4 = \frac{{\partial N}}{\partial x} 
$$
$$
\psi = \int(8x+4y-3x^2)\,dx = 4x^2 + 4xy - x^3 + h(y)
$$
$$
\psi_y = 4x + h^\prime(y) = 4x+2y \implies h(y) = y^2
$$
$$
4x^2 + 4xy - x^3 + y^2 = C
$$
apply y(2)=-7, 16 - 56 - 8 + 49 = 1, so C=1
$$
y^2 + 4xy + 4x^2 - x^3 = 1
$$
$$
y = \frac{-4x \pm \sqrt{16x^2 - 4(4x^2 - x^3 - 1)}}{2} = -2x \pm \sqrt{x^3+1}
$$
$$
y(x) = -2x - \sqrt{x^3+1}
$$
defined where $x^3+1 \geq 0$, i.e. $x \geq -1$. you need $x^3+1 > 0$ for differentiability, so

x exists on interval (-1, inf)

## 3
### a
$$
M = 2xy+y^2+y,\quad N = x+y
$$
$$
M_y = 2x+2y+1,\quad N_x = 1
$$
$$
\frac{M_y - N_x}{N} = \frac{2x+2y}{x+y} = 2
$$
so $\mu(x) = e^{\int 2\,dx} = e^{2x}$

$$
e^{2x}(2xy+y^2+y) + e^{2x}(x+y)y^\prime = 0
$$
$$
\psi_y = e^{2x}(x+y) \implies \psi = e^{2x}\left(xy + \tfrac{y^2}{2}\right) + g(x)
$$
$$
\psi_x = 2e^{2x}\left(xy+\tfrac{y^2}{2}\right) + e^{2x} y + g^\prime(x) = e^{2x}(2xy + y^2 + y)
$$
so $g^\prime (x) = 0$ 
$$
e^{2x}\left(xy + \tfrac{y^2}{2}\right) = C
$$
### b
$$
M = 1,\quad N = \tfrac{x}{y} - \sin y
$$
$$
M_y = 0,\quad N_x = \tfrac{1}{y}
$$
$$
\frac{N_x - M_y}{M} = \tfrac{1}{y}
$$
so $\mu(y) = e^{\int dy/y} = y$

$$
y + (x - y\sin y)y^\prime = 0
$$
$$
\psi = \int y\,dx = xy + h(y)
$$
$$
\psi_y = x + h^\prime(y) = x - y\sin y \implies h(y) = \int -y\sin y\,dy = y\cos y - \sin y
$$
$$
xy + y\cos y - \sin y = C
$$

## 4
$$
y^\prime = y+1-t, \ y(0)=0
$$

$$
\phi_{n+1}(t) = \int_0^t \big(\phi_n(s) + 1 - s\big)\,ds
$$
iterate with Picard's method from $\phi_0(t)=0$

$$
\phi_1(t) = \int_0^t (1-s)\,ds = t - \tfrac{t^2}{2}
$$
$$
\phi_2(t) = \int_0^t \left(s - \tfrac{s^2}{2} + 1 - s\right)ds = t - \tfrac{t^3}{6}
$$
$$
\phi_3(t) = \int_0^t \left(s - \tfrac{s^3}{6} + 1 - s\right)ds = t - \tfrac{t^4}{24}
$$
pattern is
$$
\phi_n(t) = t - \frac{t^{n+1}}{(n+1)!}
$$
verify assuming $\phi_n(t) = t - \tfrac{t^{n+1}}{(n+1)!}$
$$
\phi_{n+1}(t) = \int_0^t \left(s - \tfrac{s^{n+1}}{(n+1)!} + 1 - s\right)ds = t - \tfrac{t^{n+2}}{(n+2)!}
$$
limit is
$$
\phi(t) = \lim_{n\to\infty}\left(t - \frac{t^{n+1}}{(n+1)!}\right) = t
$$
verify
$$
\phi^\prime(t) = 1,\quad \phi(t)  = 1
$$
and $\phi(0)=0$

## 5
transform the following diff eqns with intitial condition into equivalent integral eqns
### a
$$
y(t) = 2 + \int_0^t \big(s\,y(s)^2 + s^3\big)\,ds
$$
### b
$$
y(t) = 3 + \int_1^t \big(y(s)^2 + s\big)\,ds
$$
