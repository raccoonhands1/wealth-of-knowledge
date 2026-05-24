### principle of inclusion and exclusion (PIE)
|A∪B ∪C| = |A| + |B| + |C| − (|A∩B| + |A∩C| + |B ∩C|) + |A∩B ∩C|

or $|A \cup B| = |A| + |B| - |A \cap B|$


f(n) = O(g(n)) means f(n) <= g(n) 'asymptotically'

### n choose k
$$
\begin{align}
{n \choose k} = \frac{n!}{(n-k)! k!} \\[6pt]
{3 \choose 0} = \frac{3!}{(3-0)! 0!}

\end{align}
$$

### handshake lemma

$$
\sum_{v \in V} deg(v) =  2|E|
$$
where E is amount of edges, and deg(v) is the adjacent (or in better terms incident) edges at each vertex

### O(n)
we seek to find constants c > 0 and n_0 > 0 such that 0 <= f(n) <= cg(n) for all n>=n_0 where f is the LHS and g is the RHS

### proof by contradition

assume opposite of what you want to prove then conclude the original

### contrapositive proof

to prove $P\to Q$ prove $\neg P \to \neg Q$

### induction

prove a base case then prove that if it holds for some k then it holds for some k+1 

or, for all values of k+1 in strong induction

### substitution method (recurrence)

The Substitution (Iteration) MethodUsed when the Master Theorem doesn't apply. 

You guess a bounding function (e.g., \(O(n^2)\)), then prove your guess using mathematical induction, or you expand the recurrence iteratively until you spot a recognizable pattern.For example, \(T(n) = T(n-1) + n\) can be expanded as follows:\(T(n) = T(n-2) + (n-1) + n\)\(T(n) = T(0) + 1 + 2 + \dots + n = \frac{n(n+1)}{2} = O(n^2)\)

START

1. solve $T(n) = T(n-1) + 1, T(1) = 1$.  proof by induction

$$
\begin{align}
\text{given } T(1) = 1 \\
T(2) = T(1) + 1 = 2  \\
T(3) = T(2) + 1 = 3 \\[6pt]
 
\text{we can guess that T(n) = n} \\[6pt]

\text{base case: T(1) = 1} \\[6pt]

\text{IS: assume T(k) = k for some k >= 1 (IH). We show T(k+1) = k+1} \\[6pt]

\text{by recurrence: } T(k+1) = T(k) + 1 \\[6pt]

\text{by inductive hypothesis, } T(k) = k \text{ so }  \\
T(k + 1) = k+1 \\
\text{which matches the formula}

\end{align}
$$

2. solve $T(n) = T(n-1) + n$, $T(1) = 1$

T(1) = 1
T(2) = T(1) + 2 = 3
T(3) = T(3) + 3 = 6

3. T(n) = 2T(n/2) + n, T(1) = 1. assume n is a power of 2. show T(n) = O(nlogn) by induction

T(1) = 1

T(2) = 2T(1) + 2d

goal is 
T(2) <= c(2log2) = 2c

suppose
$$
\sqrt{ n } \neq \Omega (n) 
$$
is false. 

meaning 
$$
\sqrt{ n } = \Omega (n)
$$

then by definition, a const c exists such that  sqrt n >= c, 1 <= n_0 for all n >= n_0, c > 0

we can rewrite the expression as 

$$
\begin{align}
\sqrt{ n } \geq c * n \\
\sqrt{ n } / n \geq c \\
n / n^2 \geq c^2 \\
\frac{1}{n} \geq c^2 \\
= \frac{1}{n} \geq A  \\
\text{where A is some constant. chose any int n>= $max\left( n_0, \left[ \frac{1}{A} \right] +1 \right)$} \\
\text{then n > 1/A so 1/n < A, contradicting 1/n >= A}

\end{align}
$$A






counting grid paths with bijection:

how many shortest paths are there from (0,0) to (n,m) moving only right (R) and up (U)?

step 1: domain

every path must consist of exactly n moves to the right and m moves up. total steps = n + m. wwe can represent any path as (n + m) tuple of symbols {R,U}. ie: (2,1): (R R U) (R U R) (U R R). m R's and N u's
give m is up and n is right... 

key observation: a path is just a specific arrangement of n R's and m U's

step 2: define codomain and mapping

MAPPING: define a function to map. For a path P, f(P) = {i | s_i = R} (the set of indices where right moves occur)

CODOMAIN: the set of all subsets of {1,2,..., n+m} of size n

step 3: prove bijection (surjection & injection)

SURJECTION (every input maps to 1 output):

assume it doesn't map to 1 output, then 

lets rewrite the problem as contrapositive

$$
\text{paths } P \neq P^\prime \implies f(p) \neq f(p^\prime)
$$
$$
\begin{align}
\text{let } p = \{s_{1} , s_{2,} , s_{3}, \dots s_{n+m}\}  \\

\text{let } p^\prime = \{s_{1} , s_{2,} , s_{3}, \dots s_{n+m}\}
 \\
\text{since } p \neq p^\prime, \ \exists i : s_{1} \neq s^\prime_{i} \\[6pt]

\text{case 1: } \\

s_{i} = U, s^\prime_{i} = R \\

\text{case 2: } \\

s_{i} = R, s^\prime_{i} = U \\ 

f(P) 





\end{align}



$$