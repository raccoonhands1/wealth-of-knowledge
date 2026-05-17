## 1
### a
$$
y^{\prime\prime} + 4y^\prime + 3y = 0,\quad y(0)=2,\ y^\prime(0)=-1
$$
$$
r^2 + 4r + 3 = 0 \implies (r+1)(r+3)=0 \implies r=-1,-3
$$
$$
y = c_1 e^{-t} + c_2 e^{-3t}
$$
$$
\begin{align}
c_1 + c_2 &= 2 \\
-c_1 - 3c_2 &= -1
\end{align}
\implies c_2 = -\tfrac{1}{2},\ c_1 = \tfrac{5}{2}
$$
$$
y = \tfrac{5}{2}e^{-t} - \tfrac{1}{2}e^{-3t}
$$

### b
$$
4y^{\prime\prime} - y = 0,\quad y(-2)=1,\ y^\prime(-2)=-1
$$
$$
4r^2 - 1 = 0 \implies r = \pm\tfrac{1}{2}
$$
$$
y = c_1 e^{t/2} + c_2 e^{-t/2}
$$
$$
\begin{align}
c_1 e^{-1} + c_2 e &= 1 \\
c_1 e^{-1} - c_2 e &= -2
\end{align}
\implies c_1 = -\tfrac{e}{2},\ c_2 = \tfrac{3}{2e}
$$
$$
y = -\tfrac{1}{2}e^{(t+2)/2} + \tfrac{3}{2}e^{-(t+2)/2}
$$

### c
$$
2y^{\prime\prime} - 3y^\prime + y = 0,\quad y(0)=2,\ y^\prime(0)=\tfrac{1}{2}
$$
$$
2r^2 - 3r + 1 = 0 \implies (2r-1)(r-1)=0 \implies r=\tfrac{1}{2},1
$$
$$
y = c_1 e^{t/2} + c_2 e^t
$$
$$
\begin{align}
c_1 + c_2 &= 2 \\
\tfrac{1}{2}c_1 + c_2 &= \tfrac{1}{2}
\end{align}
\implies c_1 = 3,\ c_2 = -1
$$
$$
y = 3e^{t/2} - e^t
$$

for maximum, set $y^\prime = 0$
$$
\tfrac{3}{2}e^{t/2} - e^t = 0 \implies e^{t/2} = \tfrac{3}{2} \implies t = 2\ln\!\tfrac{3}{2}
$$
$$
y\!\left(2\ln\tfrac{3}{2}\right) = 3\cdot\tfrac{3}{2} - \left(\tfrac{3}{2}\right)^2 = \tfrac{9}{2} - \tfrac{9}{4} = \tfrac{9}{4}
$$

for zero, set $y = 0$
$$
3e^{t/2} - e^t = 0 \implies e^{t/2} = 3 \implies t = 2\ln 3
$$

## 2
### a
$$
y_1 = e^{3t},\quad y_2 = e^{-2t}
$$
$$
W = e^{3t}(-2e^{-2t}) - e^{-2t}(3e^{3t}) = -2e^t - 3e^t = -5e^t
$$

### b
$$
y_1 = e^{2t},\quad y_2 = te^{2t}
$$
$$
W = e^{2t}(e^{2t} + 2te^{2t}) - te^{2t}(2e^{2t}) = e^{4t} + 2te^{4t} - 2te^{4t} = e^{4t}
$$

### c
$$
y_1 = e^t\sin t,\quad y_2 = e^t\cos t
$$
$$
\begin{align}
W &= e^t\sin t\,(e^t\cos t - e^t\sin t) - e^t\cos t\,(e^t\sin t + e^t\cos t) \\
&= e^{2t}\!\left[\sin t\cos t - \sin^2 t - \cos t\sin t - \cos^2 t\right] \\
&= -e^{2t}
\end{align}
$$

## 3
$$
W[f,g] = fg^\prime - gf^\prime = 3e^{4t},\quad f = e^{2t},\ f^\prime = 2e^{2t}
$$
$$
e^{2t}g^\prime - 2e^{2t}g = 3e^{4t} \implies g^\prime - 2g = 3e^{2t}
$$
integrating factor $\mu = e^{-2t}$
$$
\left(e^{-2t}g\right)^\prime = 3 \implies g = 3te^{2t} + ce^{2t}
$$
g is not uniquely determined since c is free

## 4
$$
t^2 y^{\prime\prime} - t(t+2)y^\prime + (t+2)y = 0
$$
divide by $t^2$
$$
y^{\prime\prime} - \frac{t+2}{t}\,y^\prime + \frac{t+2}{t^2}\,y = 0 \implies p(t) = -\frac{t+2}{t}
$$
by Abel's theorem
$$
W = c\exp\!\left(-\int p(t)\,dt\right) = c\exp\!\left(\int\!\left(1+\frac{2}{t}\right)dt\right) = c\,t^2 e^t
$$
