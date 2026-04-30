## 1
determine the largest interval thats certain to exist
### a)
$$
(t-3)y^{\prime} + (\ln t)y = t^2, \ y(1) = 4
$$
$$
\begin{align}
y^\prime + \frac{(\ln t)y}{t-3} &= \frac{t^2}{t-3}
\end{align}
$$
t != 3 and t > 0 thus the interval of existence lies in (0, 3)
(ln0 is undef and t-3 is a denominator in two instances)
### b)
$$t(t-4) y^\prime + t^2y = t-4, \ y(2) = 7$$
$$
\begin{align}
y^\prime + \frac{ty}{t-4} &= \frac{t-4}{t(t-4)} = \frac{1}{t \\}
\end{align}
$$
t != 0 && t != 4 thus the interval exists on (0,4)
(1/0 is undef and 4-4 is undef which are both denominators that appear on LHS and RHS)
### c)
$$y^\prime + (\tan t)y = \sin t,\ y(\pi) = 0$$
based on observation we can conclude that the interval exists between $\frac{\pi}{2}$ and $\frac{3\pi}{2}$
## 2
solve initial value then determine interval of existence
### a)
$$
\begin{align}

\frac{dy}{dt} &= -\frac{4t}{y}, y(0) = y_{0} , y_{0} \neq 0 \\
\end{align}
$$
$$
\begin{align} \\
\int ydy&= \int -4tdt \\[6pt]

\frac{y^2}{2} &= -2t^2+C \\[6pt]


\frac{y_{0}^2}{2} &=-2(0)^2+C \\[6pt]

\frac{y_{0}^2}{2}&= C \\[6pt]

y^2 &=y_{0}^2 -4t^2 \\[6pt]

y &= \pm \sqrt{ y_{0}^2-4t^2 } \\[6pt]
\end{align}
$$
exists on (solve for when sqrt evaluation $\in \ \mathbb{R}$ and y_0 != 0)
$$
\begin{align}
y_{0}^2 - 4t^2 > 0  \\[6pt]
|t| < \frac{|y_{0}^2|}{2} \\[6pt] 
\text{or} \\[6pt]


-\frac{|y_{0}|}{2} < t < \frac{|y_{0}}{2}
\end{align}
$$


### b)
$$\frac{dy}{dt} = 2ty^2, \ y(0) = y_{0}$$
$$
\begin{align}
\int\frac{1}{y^2}dy &= \int 2tdt \\
-\frac{1}{y}&= t^2+C \\
\end{align}
$$
sub init val
$$
\begin{align}
-\frac{1}{y_{0}} &= 0^2 +C \\
-\frac{1}{y_{0}}&= C \\
-\frac{1}{y} &= t^2 - \frac{1}{y_{0}} \\
y(t) &=\frac{y_{0}}{1-y_{0}t^2}
\end{align}
$$
and find int of existence when y is always defined (denominator) aka find when
$$
\begin{align}
1-y_{0}t^2 = 0 \\[6pt]
t = \frac{1}{\sqrt{ y_{0} }}, \ -\frac{1}{\sqrt{ y_{0} }}
\end{align}
$$
based on these equations we can conclude that when y_0 > 0, the interval exists on 
$\left( \frac{1}{\sqrt{ y_{0} }} \right), (-\frac{1}{\sqrt{ y_{0} }})$ and if y_0 < 0 then it exists on (-inf, inf) (by using the general form denominator) and y is 0 for the edge case when y_0 = 0
## 3
### a)
$$y^\prime = y(y-1)(y-2)$$
critical points: {0, 1, 2}

test points: y = {-1, 0.5, 1.5, 3}
-1: -
0.5: +
1.5: -
3: +

thus points,
{0} is unstable
{1} is stable
{2} is unstable
![[Pasted image 20260428220041.png]]

\*(where the Y axis is y and the X axis is t)
### b)
$$y^\prime = \frac{2}{1+y^2} - 1$$
$$
1 = \frac{2}{1+y^2}
$$
critical points: {1, -1}

test points: y = {-2, 0, 2}
-2: -
0: +
2: -


thus points, 
{-1} is unstable
{1} is stable
![[Pasted image 20260428220334.png]]
### c)
$$y^\prime=y^3(y-1)^2(y-2)$$
$$
0 = y^3(y-1)^2(y-2)
$$
critical points: {0, 1, 2}

test points: y = { -1, 0.5, 1.5, 3 }
-1: +
0.5: -
1.5: -
3: +

thus points, 

{0} is stable
{1} is semi-stable
{2} is unstable
![[Pasted image 20260428220644.png]]