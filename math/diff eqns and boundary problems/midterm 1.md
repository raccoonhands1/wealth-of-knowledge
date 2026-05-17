### general solutions

identifiers:

$$
y^\prime + P(t)y = G(t)

$$

1c)
$$
\begin{align}
y^\prime+3y=10\sin t, \ y(0) =a\\[6pt]
\mu = e^{\int 3 \, dt } = e^{3t} \\

\frac{d}{dy} (e^{3t}y) = 10e^{3t} \sin t \\
e^{3t}y = \int 10e^{3t} \sin t \, dt \\
e^{3t}y = 10 \int e^{3t}\sin t \, dx \\[6pt]

 \text{IBP}\\[6pt] 
\int udv = uv - \int vdu \\[6pt]


u = \sin t, \ du = \cos t \\
dv = e^{3t}, \ v= \frac{e^{3t}}{3} \\[6pt]

10 \int e^{3t}\sin t \, dt =10 \left[ \frac{e^{3t}\sin t}{3} - \frac{1}{3} \int e^{3t}\cos t  \, dt \right] \\[6pt]

\text{IBP again} \\[6pt]
 \\ 
u=\cos t, \ du = -\sin t \\
dv = e^{3t}, v = \frac{e^{3t}}{3}
 \\

\dots=10 \left[ \frac{e^{3t}\sin t}{3} -\frac{1}{3} \left[ \frac{e^{3t}\cos t}{3} - \int -\frac{1}{3}e^{3t}\sin t \, dt  \right] \right] \\
10 \int e^{3t} \sin t \, dt =10\left[ \frac{e^{3t}\sin t}{3} + \left[ -\frac{e^{3t}\cos t}{9} - \frac{1}{9} \int e^{3t}\sin t \, dt  \right] \right] \\[6pt]

\text{cancel out the 10. i made a mistake in writing it. it's not important. will be evaluated later} \\[6pt]

\int e^{3t} \sin t \, dt = \frac{e^{3t}\sin t}{3} -\frac{e^{3t}\cos t}{9} - \frac{1}{9} \int e^{3t}\sin t \, dt   \\[6pt] 


\int e^{3t} \sin t \, dt + \frac{1}{9} \int e^{3t}\sin t \, dt  = \frac{e^{3t}\sin t}{3} -\frac{e^{3t}\cos t}{9}   \\[6pt]  
 
 
\frac{10}{9} \int e^{3t}\sin t \, dt  = \frac{e^{3t}\sin t}{3} -\frac{e^{3t}\cos t}{9} \\[6pt]     

\int e^{3t}\sin t \, dt  = \frac{3e^{3t}\sin t}{10} -\frac{e^{3t}\cos t}{10} + C \\[6pt]    

 \\

\end{align}
$$

1d)
$$
ty^\prime+3y=t^2, \ (y(1) = a)
$$
$$
\begin{align}
y^\prime+3y = t \\[6pt]

\mu = e^{\int3dt}  =e^{3t} \\
\mu(y^\prime + 3y) = \mu(t) \\
= e^{3t}t \\[6pt]
\text{take integral of both sides} \\[6pt]
= \int e^{3t}t \, dt \\[6pt]
\text{IBP} \\[6pt]
u = t, \ du=1dt \\
dv=e^{3t}, \ v=\frac{e^{3t}}{3}  \\
\text{IBP} = \int udv=uv - \int vdu \\
=\frac{t e^{3t}}{3} - \int \frac{e^{3t}}{3} \\
=\frac{{t e^{3t}}}{3} - \frac{1}{3} \int e^{3t} \, dt \\


e^{3t}y= \frac{{t e^{3t}}}{3} - \frac{e^{3t}}{9} +C \\

\\[6pt]
\text{general solution is} \\
\\[6pt] \\
 
y= \frac{{t}}{3} - \frac{1}{9} +Ce^{-3t} \\[6pt]
\text{initial condition} \\[6pt]
y(1)=a \\
a=\frac{1}{3}-\frac{1}{9} + Ce^{-3(1)}
\end{align}


$$

### seperable diff eqns

2a
$$
\begin{align}
y^\prime = \frac{x^3}{y} , \ y(1) = 2 \\[6pt]
\frac{dy}{ydx} = x^3 \\
\frac{dy}{y}=x^3dx \\
\int \frac{1}{y} \, dy = \int x^3 \, dx  \\
\ln |y| = \frac{x^4}{4} + C \\[6pt]
\text{general solution is} \\[6pt]

y=e^{x^4/4 + C} \\[6pt]
\text{apply the intitial condition} \\[6pt]
2=Ae^{1/4} \\
A=2e^{-1/4} \\[6pt]
\text{particular solution is } \\[6pt]

y=2e^{-1/4} e^{x^4/4}
\end{align}
$$

2b
$$
\begin{align}
y^\prime=\frac{{x+e^x}}{y+\cos y} , \ y(0) = 0 \\[6pt]
y^\prime(y + \cos y) = x + e^x \\
\frac{dy}{dx}(y+\cos y) = x+e^x \\
dy(y+\cos y) = x+e^x dx \\
\int y+\cos y \, dy = \int x+e^x \, dx  \\
\int y \, dy + \int \cos y \, dy = \int x \, dx  + \int e^x \, dx  \\
\frac{y^2}{2} + \sin y = \frac{x^2}{2} + e^x + C \\[6pt]
\text{general solution} \\[6pt]

y^2 + 2\sin y = x^2 + 2e^x + 2C \\[6pt]

\text{stuck? that just means there's no explicit form...} \\[6pt]
\text{apply IC } y(0)=0 \\[6pt]

0 + 2\sin (0) = 0 + 2e^0 + 2C \\
0 = 2+2C \\
-2=2C \\[6pt]

C=-1 \\[6pt]

\text{plug back in} \\[6pt]
y^2+2\sin y=x^2+2e^x-2
\end{align}
$$

2c
$$
\begin{align}
y^\prime=y^2x^3+y^2, \ y(1)=2 \\[6pt]
\frac{dy}{dx} = \frac{y^2x^3}{y^2} + \frac{y^2}{y^2} \\
\frac{dy}{dx} \frac{1}{y^2} = x^3 + 1 \\
\int \frac{1}{y^2} \, dy  = \int x^3 +1 \, dx  \\[6pt]
\text{power rule!} \\[6pt]
\int\frac{1}{y^2} \, dy = \int y^{-2} \, dy \\[6pt]
\text{power rule states } \int x^c \, dx =  \frac{x^{c+1}}{c+1} \\[6pt]
\int y^{-2} \, dy = \frac{y^{-1}}{-1} = -\frac{1}{y}=\frac{x^4}{4} + x + C \\
\frac{1}{y}=-\frac{x^4}{4}-x-C \\ 
y=-\frac{1}{\frac{x^4}{4} +x +C} \\[6pt]
\text{apply IC } y(1)=2 \\[6pt]
2=-\frac{1}{\frac{1}{4}+1+C} \\[6pt]

C=-\frac{7}{4}
\end{align}
$$

### interval of existence

3a
$$
\begin{align}
y^\prime+ty=\tan t, \ y(0)=1 \\[6pt]
\text{what are we looking for? discontinuities...} \\
\text{you use the [[existence and uniqueness theorem for first-order differential equations]] to solve...} \\[6pt]
\text{find when P(x) or G(x) DNE} \\[6pt]
t \in \mathbb{R}, \ \tan x=\frac{\sin x}{\cos x} \implies \cos x = 0 \text{ when } x=\pm \frac{\pi}{2}, \pm \frac{3\pi}{2}, etc

\end{align}
$$
3b
$$
\begin{align}
ty^\prime+e^{t^2}y=\log|t-2|, \ y(1)=0 \\[6pt]
y^\prime+\frac{{e^{t^2}y}}{t} = \frac{{\log|t-2|}}{t} \\[6pt]
(0, 2) \text{ since log|0|} \text{ is undefined}
\end{align}
$$

3c
$$
\begin{align}
\cos (t)y^\prime+\sin (t)y=e^t, \ y(0)=1 \\[6pt]

y^\prime+ \frac{{\sin t}}{\cos t}y = \frac{e^t}{\cos t} \\
y^\prime+\tan(t)y = \frac{e^t}{\cos t} \\

\cos t \text{ dne at intervals } \pm \frac{\pi}{2} \text{ (both denominators are the same)}

\end{align}
$$

### autonomous differential equations with initial condition $y(0)=y_0$

questions for these ODEs

depending on the value of $y_0$, determine the behavior of the solution y(t) (increasing or decreasing) and the $\lim_{ t \to \infty } y(t)$

sketch the phase line & identify the critical points (equilibrium solutions) and determine if they're stable, semi stable, or unstable

4a
$$
y^\prime = (y-1)^2y(3+y)

$$

### exact differential equations for values of a, b ...

exactness condition is
$$
M + N \frac{dy}{dx} = 0
$$

5b
$$
\begin{align}
(ax^2+by^2)+(1+cxy+dy) \frac{dy}{dx} = 0 \\[12pt]

M=ax^2+by^2 \\
N=1+cxy+dy \\[12pt]

\frac{\partial M}{\partial y} = \frac{{\partial N}}{\partial x} \\
(ax^2+by^2) = (1+cxy+dy) \\[12pt]


2yb = cy \\
c=2b

\end{align}
$$