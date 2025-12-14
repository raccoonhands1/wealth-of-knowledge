## 1.

conv form:
$$
\begin{align}
f_Z(z) &= \int_{-\infty}^{\infty} f_X(x) f_Y(x-z) dx
\end{align}
$$

$$
\begin{align}
f_Z(z) &= \int_{\max(0,z)}^{z+1} e^{-x} \cdot 1 \, dx
\end{align}
$$


Case 1: $z < 0$
$$
\begin{align}
f_Z(z) &= \int_{0}^{z+1} e^{-x} \, dx \\
&= -e^{-x} \Big|_{0}^{z+1} \\
&= -e^{-(z+1)} + e^{0} \\
&= 1 - e^{-(z+1)} \\
&= 1 - e^{-z}e^{-1} \\
&= 1 - e^{-z-1}
\end{align}
$$

Case 2: $z \geq 0$
$$
\begin{align}
f_Z(z) &= \int_{z}^{z+1} e^{-x} \, dx \\
&= -e^{-x} \Big|_{z}^{z+1} \\
&= -e^{-(z+1)} + e^{-z} \\
&= e^{-z} - e^{-(z+1)} \\
&= e^{-z} - e^{-z}e^{-1} \\
&= e^{-z}(1 - e^{-1})
\end{align}
$$

>[!success] answer
$$
\begin{align}
f_Z(z) &= 
\begin{cases}
1 - e^{-z-1}, & \text{if } z < 0 \\
e^{-z}(1 - e^{-1}), & \text{if } z \geq 0
\end{cases}
\end{align}

$$
>

## 2. 
$$
\begin{align}
F_Z(z) &= P(Z \leq z) \\
&= P(X + Y \leq z) \\
&= \sum_x P(X = x)P(Y \leq z - x|X = x)
\end{align}
$$

$X$ and $Y$ are independent,
$$
\begin{align}
F_Z(z) &= \sum_x P(X = x)P(Y \leq z - x) \\
&= \sum_x p_X(x)F_Y(z - x)
\end{align}
$$

$$
\begin{align}
f_Z(z) &= \frac{d}{dz}F_Z(z) \\
&= \frac{d}{dz}\sum_x p_X(x)F_Y(z - x) \\
&= \sum_x p_X(x)\frac{d}{dz}F_Y(z - x) \\
&= \sum_x p_X(x)f_Y(z - x)
\end{align}
$$

>[!success] answer
$$
\begin{align}
f_Z(z) = \sum_x p_X(x)f_Y(z - x)
\end{align}
$$


## 3. 
 $E[UV]$:
$$
\begin{align}
E[UV] &= E[(X-Y)(X+Y)] \\
&= E[X^2 + XY - XY - Y^2] \\
&= E[X^2 - Y^2] \\
&= E[X^2] - E[Y^2]
\end{align}
$$
$E[U]$ and $E[V]$:
$$
\begin{align}
E[U] &= E[X-Y] = E[X] - E[Y] \\
E[V] &= E[X+Y] = E[X] + E[Y]
\end{align}
$$

$$
\begin{align}
E[U]E[V] &= (E[X] - E[Y])(E[X] + E[Y]) \\
&= E[X]^2 + E[X]E[Y] - E[Y]E[X] - E[Y]^2 \\
&= E[X]^2 - E[Y]^2
\end{align}
$$

covariance:
$$
\begin{align}
\text{Cov}(U, V) &= E[UV] - E[U]E[V] \\
&= (E[X^2] - E[Y^2]) - (E[X]^2 - E[Y]^2) \\
&= E[X^2] - E[X]^2 - (E[Y^2] - E[Y]^2) \\
&= \text{Var}(X) - \text{Var}(Y)
\end{align}
$$
$$
\begin{align}
\text{Cov}(U, V) = \text{Var}(X) - \text{Var}(Y) = 0
\end{align}
$$
>[!success] answer

$X - Y$ and $X + Y$ are uncorrelated.

## 4.

$$
\begin{align}
E[X|R=r] = \frac{1}{r}
\end{align}
$$

$$
\begin{align}
E[X] &= E[E[X|R]] \\
&= E\left[\frac{1}{R}\right]
\end{align}
$$
$$
\begin{align}
E\left[\frac{1}{R}\right] &= \int_{1/n}^{1} \frac{1}{r} \cdot \frac{n}{n-1} \, dr \\
&= \frac{n}{n-1} \int_{1/n}^{1} \frac{1}{r} \, dr \\
&= \frac{n}{n-1} \left[ \ln(r) \right]_{1/n}^{1} \\
&= \frac{n}{n-1} \left[ \ln(1) - \ln(1/n) \right] \\
&= \frac{n}{n-1} \left[ 0 - (-\ln(n)) \right] \\
&= \frac{n}{n-1} \ln(n)
\end{align}
$$

 $E[X] = \frac{n}{n-1} \ln(n)$.

$$
\begin{align}
\lim_{n\to\infty} E[X] &= \lim_{n\to\infty} \frac{n}{n-1} \ln(n) \\
&= \lim_{n\to\infty} \frac{n \ln(n)}{n-1}
\end{align}
$$
>[!success] answer
$$
\begin{align}
\lim_{n\to\infty} E[X] = \infty
\end{align}
$$

## 5. 

$$
\begin{align}
E[H] &= E[E[H|D]] \\
\end{align}
$$

$$
\begin{align}
E[H] &= E[E[H|D]] \\
&= E[D/2] \\
&= \frac{1}{2}E[D] \\
\end{align}
$$

$$
\begin{align}
E[H] = \frac{1}{2} \cdot 3.5 = 1.75
\end{align}
$$

$$
\begin{align}
\text{Var}(H) &= E[\text{Var}(H|D)] + \text{Var}(E[H|D]) \\
\end{align}
$$

$$
\begin{align}
\text{Var}(H) &= E[\text{Var}(H|D)] + \text{Var}(E[H|D]) \\
&= E[D/4] + \text{Var}(D/2) \\
&= \frac{1}{4}E[D] + \frac{1}{4}\text{Var}(D) \\
\end{align}
$$

$$
\begin{align}
\text{Var}(D) &= E[D^2] - (E[D])^2 \\
&= \frac{1^2 + 2^2 + 3^2 + 4^2 + 5^2 + 6^2}{6} - (3.5)^2 \\
&= \frac{91}{6} - 12.25 \\
&= 15.17 - 12.25 \\
&= 2.92
\end{align}
$$
>[!success] answer
$$
\begin{align}
\text{Var}(H) &= \frac{1}{4}E[D] + \frac{1}{4}\text{Var}(D) \\
&= \frac{1}{4} \cdot 3.5 + \frac{1}{4} \cdot 2.92 \\
&= 0.875 + 0.73 \\
&= 1.605
\end{align}
$$

### b. 
$$
\begin{align}
E[H] &= E[E[H|S]]
\end{align}
$$


$$
\begin{align}
E[H] &= E[E[H|S]] \\
&= E[S/2] \\
&= \frac{1}{2}E[S]
\end{align}
$$

$$
\begin{align}
E[H] = \frac{1}{2} \cdot 7 = 3.5
\end{align}
$$

$$
\begin{align}
\text{Var}(H) &= E[\text{Var}(H|S)] + \text{Var}(E[H|S])
\end{align}
$$

$$
\begin{align}
\text{Var}(H) &= E[\text{Var}(H|S)] + \text{Var}(E[H|S]) \\
&= E[S/4] + \text{Var}(S/2) \\
&= \frac{1}{4}E[S] + \frac{1}{4}\text{Var}(S)
\end{align}
$$

$$
\begin{align}
\text{Var}(S) &= \text{Var}(D_1) + \text{Var}(D_2) \\
&= 2.92 + 2.92 \\
&= 5.84
\end{align}
$$
>[!success] answer
$$
\begin{align}
\text{Var}(H) &= \frac{1}{4}E[S] + \frac{1}{4}\text{Var}(S) \\
&= \frac{1}{4} \cdot 7 + \frac{1}{4} \cdot 5.84 \\
&= 1.75 + 1.46 \\
&= 3.21
\end{align}
$$

## 6. 
### a.
>[!success] answer
$$
\begin{align}
p_T(t) = p(1-p)^{t-1} \quad \text{for } t = 1, 2, 3, \ldots
\end{align}
$$

### b. 
>[!success] answer
$$
\begin{align}
p_{N_t}(k) = \binom{t}{k} p^k (1-p)^{t-k} \quad \text{for } k = 0, 1, 2, \ldots, t
\end{align}
$$

### c. 
>[!success] answer
$$
\begin{align}
p_{Y_k}(y) = \binom{y-1}{k-1} p^k (1-p)^{y-k} \quad \text{for } y = k, k+1, k+2, \ldots
\end{align}
$$

### d. 

$$
\begin{align}
E[H|C] &= E[10 + X] \\
&= 10 + E[X] \\
&= 10 + 2p
\end{align}
$$

>[!success] answer
$$
\begin{align}
\text{Var}(H|C) &= \text{Var}(10 + X) \\
&= \text{Var}(X) \\
&= 2p(1-p)
\end{align}
$$

### e. 
$$
\begin{align}
p' &= P(\text{arrival in process 1 OR arrival in process 2}) \\
&= 1 - P(\text{no arrival in either process}) \\
&= 1 - (1-p)^2 \\
&= 1 - (1-p)^2 \\
&= 2p - p^2
\end{align}
$$
>[!success] answer
$$
\begin{align}
P(Y_5 = 10) &= \binom{10-1}{5-1} (p')^5 (1-p')^{10-5} \\
&= \binom{9}{4} (2p-p^2)^5 (1-(2p-p^2))^5 \\
&= \binom{9}{4} (2p-p^2)^5 ((1-p)^2)^5 \\
&= \binom{9}{4} (2p-p^2)^5 (1-p)^{10}
\end{align}
$$

## 7. 
$$
\begin{align}
\sum_{j=42}^{\infty} p_{Y_{17}}(j) = \sum_{k=0}^{a} \binom{b}{k} p^k (1-p)^{b-k}
\end{align}
$$


$$
\begin{align}
P(Y_{17} \geq 42) &= P(X_{41} \leq 16) \\
&= \sum_{k=0}^{16} \binom{41}{k} p^k (1-p)^{41-k}
\end{align}
$$
>[!success] answer

 $a = 16$ and $b = 41$.

## 8. 

### a.

$$
\begin{align}
p_{Y_k}(y) = \binom{y-1}{k-1} p^k (1-p)^{y-k} \quad \text{for } y = k, k+1, k+2, \ldots
\end{align}
$$

>[!success] answer
$$
\begin{align}
p_{X_k}(t) &= p_{Y_k}(t + k) \\
&= \binom{(t+k)-1}{k-1} p^k (1-p)^{(t+k)-k} \\
&= \binom{t+k-1}{k-1} p^k (1-p)^{t} \quad \text{for } t = 0, 1, 2, \ldots
\end{align}
$$

### b. 
>[!success] answer
$$
\begin{align}
E[X_k] &= \frac{k(1-p)}{p}
\end{align}
$$

### c.
 $r$ and $p$ is $\frac{r(1-p)}{p^2}$.
 >[!success] answer
$$
\begin{align}
\text{Var}(X_k) &= \frac{k(1-p)}{p^2}
\end{align}
$$