## 1
### a
$$
y^{\prime\prime} + 4y = 0,\quad y(0)=0,\ y^\prime(0)=1
$$
$$
r^2 + 4 = 0 \implies r = \pm 2i
$$
$$
y = c_1\cos(2t) + c_2\sin(2t)
$$
$$
\begin{align}
c_1 &= 0 \\
2c_2 &= 1 \implies c_2 = \tfrac{1}{2}
\end{align}
$$
$$
y = \tfrac{1}{2}\sin(2t)
$$
the function oscillates with constant amplitude from -inf inf

### b
$$
y^{\prime\prime} + 4y^\prime + 5y = 0,\quad y(0)=1,\ y^\prime(0)=0
$$
$$
r^2 + 4r + 5 = 0 \implies r = -2 \pm i
$$
$$
y = e^{-2t}(c_1\cos t + c_2\sin t)
$$
$$
\begin{align}
c_1 &= 1 \\
-2c_1 + c_2 &= 0 \implies c_2 = 2
\end{align}
$$
$$
y = e^{-2t}(\cos t + 2\sin t)
$$
the function oscillates with decaying amplitude & approaches 0

### c
$$
y^{\prime\prime} - 2y^\prime + 5y = 0,\quad y(\pi/2)=2,\ y^\prime(\pi/2)=2
$$
$$
r^2 - 2r + 5 = 0 \implies r = 1 \pm 2i
$$
$$
y = e^t(c_1\cos(2t) + c_2\sin(2t))
$$
at $t=\pi/2$, $\cos\pi = -1$, $\sin\pi = 0$
$$
y(\pi/2) = -c_1 e^{\pi/2} = 2 \implies c_1 = -2e^{-\pi/2}
$$
$$
y^\prime = e^t(c_1\cos(2t)+c_2\sin(2t)) + e^t(-2c_1\sin(2t)+2c_2\cos(2t))
$$
$$
y^\prime(\pi/2) = e^{\pi/2}(-c_1) + e^{\pi/2}(-2c_2) = 2
$$
$$
2e^{-\pi/2}\cdot e^{\pi/2} - 2c_2 e^{\pi/2} = 2 \implies 2 - 2c_2 e^{\pi/2} = 2 \implies c_2 = 0
$$
$$
y = -2e^{t-\pi/2}\cos(2t)
$$
the function oscillates with growing amplitude & diverges

## 2
### a
$$
t^2 y^{\prime\prime} + ty^\prime - 4y = 0,\quad t>0
$$
$$
\alpha(\alpha-1) + \alpha - 4 = 0 \implies \alpha^2 - 4 = 0 \implies \alpha = \pm 2
$$
$$
y = c_1 t^2 + c_2 t^{-2}
$$

### b
$$
t^2 y^{\prime\prime} + ty^\prime + 4y = 0,\quad t>0
$$
$$
\alpha^2 + 4 = 0 \implies \alpha = \pm 2i
$$
$$
t^{\pm 2i} = e^{\pm 2i\ln t} = \cos(2\ln t) \pm i\sin(2\ln t)
$$
$$
y = c_1\cos(2\ln t) + c_2\sin(2\ln t)
$$

### c
$$
t^2 y^{\prime\prime} + 5ty^\prime + 5y = 0,\quad t>0
$$
$$
\alpha(\alpha-1) + 5\alpha + 5 = 0 \implies \alpha^2 + 4\alpha + 5 = 0 \implies \alpha = -2 \pm i
$$
$$
t^{-2\pm i} = t^{-2}\,e^{\pm i\ln t}
$$
$$
y = t^{-2}\!\left(c_1\cos(\ln t) + c_2\sin(\ln t)\right)
$$

## 3
$$
y^{\prime\prime} + 4y^\prime + 4y = 0,\quad y(0)=1,\ y^\prime(0)=b
$$
$$
r^2 + 4r + 4 = 0 \implies (r+2)^2 = 0 \implies r = -2\ \text{(this is repeated)}
$$
$$
y = (c_1 + c_2 t)e^{-2t}
$$
$$
c_1 = 1,\quad c_2 - 2c_1 = b \implies c_2 = b+2
$$
$$
y = (1 + (b+2)t)e^{-2t}
$$
$$
y^\prime = e^{-2t}\!\left[b - 2(b+2)t\right]
$$
setting $y^\prime = 0$
$$
t^* = \frac{b}{2(b+2)},\quad b \neq -2
$$
at $t^*$, $y^{\prime\prime} = -2(b+2)e^{-2t^*}$

$b > 0$: maximum at $t^* = \dfrac{b}{2(b+2)} > 0$

$b = 0$: maximum at $t^*=0$, value $y=1$

$-2 < b < 0$: $t^* < 0$, no extremum for $t \geq 0$

$b = -2$: no critical point

$b < -2$: minimum at $t^* = \dfrac{b}{2(b+2)} > 0$

value at extremum
$$
y(t^*) = \tfrac{b+2}{2}\,e^{\!\!\left(\tfrac{-b}{b+2}\right)}
$$
for all $b$, $y \to 0$ as $t \to \infty$

## 4
### a
$$
y^{\prime\prime} - 2y^\prime - 3y = 3e^{2t}
$$
$$
r^2 - 2r - 3 = 0 \implies (r-3)(r+1)=0 \implies r = 3,\,-1
$$
$$
y_h = c_1 e^{3t} + c_2 e^{-t}
$$
try $Y = Ae^{2t}$
$$
4A - 4A - 3A = 3 \implies A = -1
$$
$$
y = c_1 e^{3t} + c_2 e^{-t} - e^{2t}
$$

### b
$$
y^{\prime\prime} + 2y^\prime + 5y = 3\sin(2t)
$$
$$
r^2 + 2r + 5 = 0 \implies r = -1\pm 2i
$$
$$
y_h = e^{-t}(c_1\cos(2t)+c_2\sin(2t))
$$
try $Y = A\cos(2t) + B\sin(2t)$
$$
\begin{align}
Y^{\prime\prime} + 2Y^\prime + 5Y &= (A+4B)\cos(2t) + (-4A+B)\sin(2t) = 3\sin(2t)
\end{align}
$$
$$
A + 4B = 0,\quad -4A + B = 3 \implies A = -\tfrac{12}{17},\ B = \tfrac{3}{17}
$$
$$
y = e^{-t}(c_1\cos(2t)+c_2\sin(2t)) - \tfrac{12}{17}\cos(2t) + \tfrac{3}{17}\sin(2t)
$$

### c
$$
y^{\prime\prime} - y^\prime - 2y = -2t + 4t^2
$$
$$
r^2 - r - 2 = 0 \implies (r-2)(r+1)=0 \implies r=2,\,-1
$$
$$
y_h = c_1 e^{2t} + c_2 e^{-t}
$$
try $Y = At^2 + Bt + C$
$$
2A - (2At+B) - 2(At^2+Bt+C) = 4t^2-2t
$$
$$
-2At^2 + (-2A-2B)t + (2A-B-2C) = 4t^2-2t+0
$$
$$
A=-2,\quad -2A-2B=-2 \implies B=3,\quad 2A-B-2C=0 \implies C=-\tfrac{7}{2}
$$
$$
y = c_1 e^{2t} + c_2 e^{-t} - 2t^2 + 3t - \tfrac{7}{2}
$$

### d
$$
y^{\prime\prime} + 9y = t^2 e^{3t} + 6
$$
$$
r^2 + 9 = 0 \implies r = \pm 3i
$$
$$
y_h = c_1\cos(3t) + c_2\sin(3t)
$$
try $Y_1 = (At^2+Bt+C)e^{3t}$ for $t^2e^{3t}$
$$
Y_1^{\prime\prime} + 9Y_1 = \left[18At^2 + (12A+18B)t + (2A+6B+18C)\right]e^{3t}
$$
$$
18A=1,\quad 12A+18B=0,\quad 2A+6B+18C=0
$$
$$
A=\tfrac{1}{18},\quad B=-\tfrac{1}{27},\quad C=\tfrac{1}{162}
$$
try $Y_2 = D$ for const
$$
9D = 6 \implies D = \tfrac{2}{3}
$$
$$
y = c_1\cos(3t)+c_2\sin(3t) + \left(\tfrac{t^2}{18}-\tfrac{t}{27}+\tfrac{1}{162}\right)e^{3t} + \tfrac{2}{3}
$$

### e
$$
y^{\prime\prime} + 2y^\prime + y = 2e^{-t}
$$
$$
r^2+2r+1=0 \implies (r+1)^2=0 \implies r=-1\ \text{(repeated)}
$$
$$
y_h = (c_1+c_2 t)e^{-t}
$$
$e^{-t}$ already satisfies the homogeneous equation (double root), try $Y = At^2 e^{-t}$
$$
Y^{\prime\prime}+2Y^\prime+Y = 2Ae^{-t} = 2e^{-t} \implies A=1
$$
$$
y = (c_1 + c_2 t)e^{-t} + t^2 e^{-t}
$$
