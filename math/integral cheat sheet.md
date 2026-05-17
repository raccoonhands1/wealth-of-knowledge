> [!tldr]
> covers basic integration rules, common antiderivatives, techniques (u-sub, parts, partial fractions, trig sub), improper integrals, and applications. focused on what shows up in diff eq / calc II problems.

## 1
### definitions

> [!definition] indefinite integral
> $$\int f(x)\,dx = F(x) + C \quad \text{where } F^\prime(x) = f(x)$$
> the family of all antiderivatives of $f$. constant $C$ accounts for the fact that derivatives kill constants.

> [!definition] definite integral
> $$\int_a^b f(x)\,dx = F(b) - F(a)$$
> a number representing signed area under $f$ from $a$ to $b$. fundamental theorem of calc connects this to antiderivatives.

> [!axiom] fundamental theorem of calculus
> **part 1:** if $F(x) = \int_a^x f(t)\,dt$, then $F^\prime(x) = f(x)$
> **part 2:** $\int_a^b f(x)\,dx = F(b) - F(a)$ where $F^\prime = f$

## 2
### basic rules

> [!important] linearity
> $$\int \big(af(x) + bg(x)\big)\,dx = a\int f(x)\,dx + b\int g(x)\,dx$$
> integrals split over sums and pull out constants. does **not** work for products or quotients.

> [!important] power rule
> $$\int x^n\,dx = \frac{x^{n+1}}{n+1} + C, \quad n \neq -1$$
> $$\int \frac{1}{x}\,dx = \ln|x| + C$$

> [!warning] common mistake
> the power rule fails when $n=-1$. you get $\ln|x|$, not $\frac{x^0}{0}$. always check the exponent before applying.

## 3
### common antiderivatives

> [!note] exponentials and logs
> $$\int e^x\,dx = e^x + C$$
> $$\int e^{ax}\,dx = \tfrac{1}{a}e^{ax} + C$$
> $$\int a^x\,dx = \frac{a^x}{\ln a} + C$$
> $$\int \ln x\,dx = x\ln x - x + C$$

> [!note] trig functions
> $$\int \sin x\,dx = -\cos x + C$$
> $$\int \cos x\,dx = \sin x + C$$
> $$\int \sec^2 x\,dx = \tan x + C$$
> $$\int \sec x\tan x\,dx = \sec x + C$$
> $$\int \tan x\,dx = -\ln|\cos x| + C = \ln|\sec x| + C$$
> $$\int \sec x\,dx = \ln|\sec x + \tan x| + C$$

> [!note] inverse trig
> $$\int \frac{1}{\sqrt{1-x^2}}\,dx = \arcsin x + C$$
> $$\int \frac{1}{1+x^2}\,dx = \arctan x + C$$
> $$\int \frac{1}{x\sqrt{x^2-1}}\,dx = \text{arcsec}|x| + C$$

## 4
### techniques

### a
> [!tip] u-substitution
> reverse of chain rule. let $u = g(x)$, then $du = g^\prime(x)\,dx$
> $$\int f(g(x))g^\prime(x)\,dx = \int f(u)\,du$$
>
> **strategy:** look for a function and its derivative both present in the integrand.

> [!example] u-sub example
> $$\int 2x\cos(x^2)\,dx$$
> let $u = x^2$, $du = 2x\,dx$
> $$\int \cos u\,du = \sin u + C = \sin(x^2) + C$$

### b
> [!tip] integration by parts
> $$\int u\,dv = uv - \int v\,du$$
> reverse of product rule. pick $u$ to differentiate, $dv$ to integrate.
> 
> **LIATE rule** for picking $u$: **L**og, **I**nverse trig, **A**lgebraic, **T**rig, **E**xponential (in priority order)

> [!example] parts example
> $$\int x e^x\,dx$$
> let $u=x$, $dv=e^x\,dx$ → $du=dx$, $v=e^x$
> $$xe^x - \int e^x\,dx = xe^x - e^x + C$$

> [!hint] tabular integration
> when you need to apply parts repeatedly (e.g. $\int x^n e^{ax}\,dx$), use a table:
> - column 1: derivatives of $u$ (down to 0)
> - column 2: integrals of $dv$
> - multiply diagonally with alternating signs

### c
> [!tip] partial fractions
> for rational functions $\frac{P(x)}{Q(x)}$ where $\deg P < \deg Q$, factor $Q$ and decompose:
> $$\frac{P(x)}{(x-a)(x-b)} = \frac{A}{x-a} + \frac{B}{x-b}$$
> for repeated roots $(x-a)^n$ include terms $\frac{A_1}{x-a} + \frac{A_2}{(x-a)^2} + \cdots$
> for irreducible quadratics use $\frac{Ax+B}{x^2 + px + q}$

> [!example] partial fractions example
> $$\int \frac{1}{x^2-1}\,dx = \int \frac{1/2}{x-1} - \frac{1/2}{x+1}\,dx = \tfrac{1}{2}\ln\left|\frac{x-1}{x+1}\right| + C$$

### d
> [!tip] trig substitution
> for expressions inside roots:
> - $\sqrt{a^2 - x^2}$ → let $x = a\sin\theta$, $dx = a\cos\theta\,d\theta$
> - $\sqrt{a^2 + x^2}$ → let $x = a\tan\theta$, $dx = a\sec^2\theta\,d\theta$
> - $\sqrt{x^2 - a^2}$ → let $x = a\sec\theta$, $dx = a\sec\theta\tan\theta\,d\theta$

> [!caution] don't forget to back-substitute
> after integrating in terms of $\theta$, convert back to $x$ using a reference triangle. final answer should be in original variable.

## 5
### definite integrals

> [!important] properties
> $$\int_a^a f(x)\,dx = 0$$
> $$\int_a^b f(x)\,dx = -\int_b^a f(x)\,dx$$
> $$\int_a^b f(x)\,dx = \int_a^c f(x)\,dx + \int_c^b f(x)\,dx$$

> [!tip] u-sub with definite integrals
> when substituting, change the limits too:
> $$\int_a^b f(g(x))g^\prime(x)\,dx = \int_{g(a)}^{g(b)} f(u)\,du$$
> no need to back-substitute if you change limits.

> [!summary] symmetry shortcuts
> if $f$ is **even** ($f(-x)=f(x)$): $\int_{-a}^a f(x)\,dx = 2\int_0^a f(x)\,dx$
> if $f$ is **odd** ($f(-x)=-f(x)$): $\int_{-a}^a f(x)\,dx = 0$

## 6
### improper integrals

> [!definition] type 1 (infinite limits)
> $$\int_a^\infty f(x)\,dx = \lim_{b\to\infty} \int_a^b f(x)\,dx$$
> converges if limit exists and is finite, otherwise diverges.

> [!definition] type 2 (discontinuity)
> if $f$ has discontinuity at $c \in [a,b]$:
> $$\int_a^b f(x)\,dx = \lim_{t\to c^-}\int_a^t f(x)\,dx + \lim_{s\to c^+}\int_s^b f(x)\,dx$$

> [!info] p-test
> $$\int_1^\infty \frac{1}{x^p}\,dx \text{ converges iff } p > 1$$
> $$\int_0^1 \frac{1}{x^p}\,dx \text{ converges iff } p < 1$$

> [!attention] handle each piece separately
> for $\int_{-\infty}^\infty f(x)\,dx$, split at any point and require **both** halves to converge independently. you can't just take a symmetric limit.

## 7
### applications

> [!example] area between curves
> $$A = \int_a^b |f(x) - g(x)|\,dx$$
> determine which function is on top in each region; split the integral at intersections if they cross.

> [!example] volume by disks/washers
> rotating $y=f(x)$ about x-axis on $[a,b]$:
> $$V = \pi \int_a^b [f(x)]^2\,dx$$
> washers (with hole): $V = \pi\int_a^b \big([R(x)]^2 - [r(x)]^2\big)\,dx$

> [!example] volume by shells
> rotating about y-axis:
> $$V = 2\pi\int_a^b x\,f(x)\,dx$$

> [!example] arc length
> $$L = \int_a^b \sqrt{1 + [f^\prime(x)]^2}\,dx$$

## 8
### connection to differential equations

> [!important] integral form of IVP
> any IVP $y^\prime = f(t,y)$, $y(t_0) = y_0$ is equivalent to:
> $$y(t) = y_0 + \int_{t_0}^t f(s, y(s))\,ds$$
> this is the form used in **Picard iteration** for proving existence/uniqueness.

> [!example] Picard setup
> for $y^\prime = y + 1 - t$, $y(0) = 0$:
> $$\phi_{n+1}(t) = \int_0^t \big(\phi_n(s) + 1 - s\big)\,ds$$
> iterate from $\phi_0(t) = 0$ and take the limit.

> [!tip] separable equations
> $$\frac{dy}{dx} = f(x)g(y) \implies \int \frac{dy}{g(y)} = \int f(x)\,dx$$
> separate variables, integrate both sides, solve for $y$ if possible.

## 9
### tricks and traps

> [!warning] $\int \frac{1}{x}\,dx \neq \frac{x^0}{0}$
> always $\ln|x| + C$. the absolute value matters for $x < 0$.

> [!danger] don't forget +C
> on indefinite integrals, missing $+C$ loses points and can lose information. on definite integrals, $C$ cancels — but if you're using the antiderivative for an IVP, you need it.

> [!failure] common error: parts loop
> sometimes parts gives you back the original integral. example: $\int e^x \sin x\,dx$. apply parts twice, then solve algebraically:
> $$I = e^x \sin x - e^x\cos x - I \implies I = \tfrac{1}{2}e^x(\sin x - \cos x) + C$$

> [!bug] forgetting to change limits
> in definite u-sub, you either change the limits to match $u$ **or** back-substitute and use original limits. doing neither (or both) gives wrong answer.

> [!question] when do I use which technique?
> - rational function → partial fractions
> - product of unrelated functions → parts
> - composition with derivative present → u-sub
> - root of quadratic → trig sub
> - nothing works → check tables, try simplifying first

## 10
### useful identities for integration

> [!note] trig identities
> $$\sin^2 x = \tfrac{1-\cos 2x}{2}, \quad \cos^2 x = \tfrac{1+\cos 2x}{2}$$
> $$\sin x\cos x = \tfrac{1}{2}\sin 2x$$
> $$1 + \tan^2 x = \sec^2 x, \quad 1 + \cot^2 x = \csc^2 x$$

> [!hint] reduction formulas
> $$\int \sin^n x\,dx = -\tfrac{1}{n}\sin^{n-1}x\cos x + \tfrac{n-1}{n}\int \sin^{n-2}x\,dx$$
> $$\int \cos^n x\,dx = \tfrac{1}{n}\cos^{n-1}x\sin x + \tfrac{n-1}{n}\int \cos^{n-2}x\,dx$$

