# Practice Problems — Test Review

Work through these on paper first, then check the solutions at the bottom. Topics are in the same order as your review notes.

---

## Section 1 — True/False (asymptotic notation, sets, cardinality, functions)

For each, answer **T** or **F**. Use formal notation in your justification.

1. $n^2 + 3n = O(n^2)$
> [!success]
>
> $$
> \begin{align}
> n^2 + 3n &= c * n^2 \\
> 1+\frac{3}{n} \leq c \\
> \text{pick $n_{0}$ = 1} \\
> 4 \leq c ,\  c=4
> \end{align}
> $$

2. $2^n = O(3^n)$
> [!success]
> $$
> \begin{align}
> 2^n &\leq c * 3^n \\
> \frac{2^n}{3^n} &\leq c \\
> \text{choose $n_{0} = 1$} \\
> c\geq \frac{2}{3}
> \end{align}
> $$


3. $\log_2(n) = \Theta(\log_{10}(n))$
$$
\begin{align}
c_{1}\log_{10}n \leq \log_{2} n \leq c_{2}\log_{10} n \\


\end{align}
$$
4. $n! = O(n^n)$
$$
\begin{align}
n! &\leq c * n^n \\
\frac{n!}{n^n} &\leq c \\
\text{choose $n_{0} = 1$} \\
1 \leq c \\
n_{0} = 1, \ c = 1
\end{align}
$$
5. If $A = \{1, 2, 3\}$, then $|\mathcal{P}(A)| = 6$.
$$
\begin{align}
|A| = 3  \\[6pt]


\text{we know that } \\
|P(N)| = 2^n \\ 
\text{for any set N where n is the cardinality of a set} \\[6pt]


2^3 = 2 * 2 * 2 \\
|P(A)| \neq 6 \\
\text{false}

\end{align}
$$

6. $\{\emptyset\} = \emptyset$

false

7. The function $f: \mathbb{Z} \to \mathbb{Z}$ defined by $f(x) = 2x$ is surjective.

false

8. The function $f: \mathbb{R} \to \mathbb{R}$ defined by $f(x) = x^3$ is bijective

		--- *COME BACK TO THIS*

surjective? & injective?

surjective means every input maps to one output

injective means every element cannot map to a duplicate element




9. If $|A| = 3$ and $|B| = 5$, then $|A \times B| = 8$

false

|A x B| is just |A| * |B|, meaning the true answer is 15

10. If $f: A \to B$ is injective and $|A| = |B|$ (both finite), then $f$ is bijective

true, but come back to this...


---

## Section 2 — Fill in the blank (functions, sets, counting)

Show rough work.

**Q2.1** Let $A = \{1, 2, 3\}$ and $B = \{a, b\}$. Compute $|\mathcal{P}(A) \times \mathcal{P}(B)|$.

|A| = 3, |B| = 2

= |P(A)| * |P(B)|
= 2^3 * 2^2 = 2^5 = 2 * 2 * 2 * 2 * 2 = 32



**Q2.2** Let $A = \{1, 2, 3, 4\}$ and $B = \{w, x, y, z, v\}$. How many **injective** functions are there from $A$ to $B$?

|A| = 4, |B| = 5

the same as saying 
$$
{5 \choose 4} * 4! = \frac{5!}{(5-4)!4!} * 4! = 120
$$

**Q2.3** Let $A = \{1, 2, 3, 4, 5\}$ and $B = \{a, b, c\}$. How many **surjective** functions $f: A \to B$ are there? (Hint: inclusion-exclusion, $\sum_{k=0}^{m} (-1)^k \binom{m}{k}(m-k)^n$.)



**Q2.4** Let $A = \{1,2,3,4\}$ and $B = \{a,b,c,d\}$. How many **bijective** functions $f: A \to B$ are there?

u got it right but work on proof. ans is 4!

**Q2.5** Define $f: \mathbb{Z} \to \mathbb{Z}$ by $f(x) = x^2 - 4$. Is $f$ injective? Surjective? Bijective? Justify each with notation.



**Q2.6** The relation $R = \{(1, a), (1, b), (2, c), (3, a)\}$ from $\{1,2,3\}$ to $\{a,b,c\}$ — is this a function? Why or why not?

---
 
## Section 3 — Asymptotic notation proofs
 
Use the formal definitions. State your constants $c$ (or $c_1, c_2$) and $n_0$ clearly.
 
**Q3.1** Prove $3n^2 + 5n + 2 = O(n^2)$.


 
**Q3.2** Prove $n^3 + n = \Omega(n^3)$.
 
**Q3.3** Prove $\frac{1}{2}n^2 - 3n = \Theta(n^2)$.
 
**Q3.4** Prove $\log(n!) = O(n \log n)$. (Hint: $n! \leq n^n$, then take $\log$.)
 
**Q3.5** Disprove $n^2 = \Omega(n^3)$. (Show that for every $c > 0$, no valid $n_0$ exists.)
 
---
 
## Section 4 — Handshake lemma
 
**Q4.1** Prove formally (no English handwaving) that for any undirected graph $G = (V, E)$:
$$\sum_{v \in V} d(v) = 2|E|$$
 
**Q4.2** State and prove the directed version: relate $\sum_v d^+(v)$ and $\sum_v d^-(v)$ to $|E|$.
 
**Q4.3** A graph has 10 vertices, each of degree 4. How many edges does it have?
 
**Q4.4** Can a graph have exactly 5 vertices with degrees $3, 3, 2, 2, 1$? Justify using the handshake lemma.

no.

consider the handshake lemma...

$$
\begin{align}
\sum_{v \in V} d(v) = 2|E|  \\
\text{we can rewrite the RHS to be }  \\
2|E| = \sum \left\{ 3, 3, 2, 2, 1 \right\} \\ 
\text{ simplifying... } 2|E| = 11, \ |E| = 5.5 \\
\text{as long as the handshake lemma holds, an edge count of 5.5 is a non integer and thus impossible}
\end{align}
$$
 
**Q4.5** Prove: in any undirected graph, the number of vertices of **odd** degree is even.


 
---
 
## Section 5 — Monotone paths
 
A monotone path from $(0,0)$ to $(m, n)$ uses only unit steps right (R) and up (U).
 
**Q5.1** How many monotone paths from $(0, 0)$ to $(6, 10)$?
 
**Q5.2** How many monotone paths from $(2, 4)$ to $(6, 10)$? (Equivalent to translation vector $\binom{4}{6}$.)
 
**Q5.3** Define a function $\varphi$ from {monotone paths $(0,0) \to (m, n)$} to {binary strings of length $m+n$ with exactly $m$ ones}. Is $\varphi$ injective? Surjective? Bijective? Justify.
 
**Q5.4** How many monotone paths from $(0,0)$ to $(5, 5)$ that pass through $(2, 3)$?
 
**Q5.5** How many monotone paths from $(0,0)$ to $(4, 4)$ that **avoid** the point $(2, 2)$?
 
---
 be finite sets with |A| = n and
## Section 6 — Inclusion-Exclusion (PIE) for 3 sets
 
**Q6.1** In a class of 30 students:
- 18 take Math 101M
- 15 take Math 102
- 12 take Math 103
- 8 take both 101M and 102
- 6 take both 101M and 103
- 5 take both 102 and 103
- 3 take all three
How many take **at least one** of the three? How many take **none**?
 
**Q6.2** Restate PIE for three sets formally:
$$|A \cup B \cup C| = \ ?$$
 
**Q6.3** Out of 100 baseball fans: 60 like the Yankees, 50 like the Red Sox, 40 like the Mets. 25 like Yankees and Red Sox, 20 like Yankees and Mets, 15 like Red Sox and Mets, and 10 like all three. How many like exactly one team?
 
**Q6.4** How many integers from 1 to 100 are divisible by 2, 3, or 5?
 
---
 
## Section 7 — Bonus (recurrences, logarithm properties)
 
**Log property cheat sheet** (your notes had a typo — correcting):
- $a^m \cdot a^n = a^{m+n}$ (not $a^{mn}$)
- $(a^m)^n = a^{mn}$
- $\log(ab) = \log a + \log b$
- $\log(a/b) = \log a - \log b$
- $\log(a^k) = k \log a$
- $\log_b(a) = \frac{\log_c a}{\log_c b}$ (change of base)
**Q7.1** Solve the recurrence $T(n) = 2T(n/2) + n$, $T(1) = 1$. Give $T(n)$ in $\Theta$ notation.
 
**Q7.2** Solve $T(n) = T(n/2) + 1$, $T(1) = 1$. (Hint: this is binary search.)
 
**Q7.3** Prove $\log_2(n) = \Theta(\log_{10}(n))$ using the change-of-base formula.
 
**Q7.4** Show $n^{\log_2 3} = O(2^n)$.
 
**Q7.5** Solve $T(n) = 3T(n/2) + n^2$. Use the Master Theorem (or substitution).































---






$$
\begin{align}
\text{prove that} \\

\sqrt{ n } = \Omega (\log n) \\ 
 
\text{using formal definition of Omega} \\
\text{we will show that $\sqrt{ n } \geq \log_{2}n$ for all $n \geq 1$,} \\
\text{so c=1 and $n_0$ = 1 work as solutions}



\end{align}


$$


























