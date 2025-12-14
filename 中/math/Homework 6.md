## 1Q
$$\text{Let }e_1, e_2, e_3 \text{ be a basis of } \mathbb{R}^3.$$ $$\text{Let }\tilde e_1, \tilde e_2, \tilde e_3 \text{ be another basis where}$$
$$\tilde e_1 = e_1+e_2$$
$$\tilde e_2 = e_1 + e_3$$
$$\tilde e_3 = e_1+e_2+e_3$$
$$\text{Let } u= \begin{bmatrix} 1 \\ 1 \\ -2 \end{bmatrix} \text{relative to basis } \tilde e_1 \tilde e_2, \tilde e_3 $$

$$\text{Find coordinates of u relative to basis } \tilde e_1, \tilde e_2, \tilde e_3$$


## 1S
$$ u = c_1 \tilde e_1 + c_2 \tilde e_2 + c_3 \tilde e_3$$
$$\tilde e_1 = \begin{bmatrix} 1 \\ 1 \\ 0 \end{bmatrix}, \tilde e_2 = \begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}, \tilde e_3 = \begin{bmatrix} 1 \\ 1 \\ 1 \end{bmatrix} $$
$$ \begin{bmatrix} 1 \\ 1 \\ -2 \end{bmatrix} = \tilde c_1 + \begin{bmatrix} 1 \\ 1 \\ 0 \end{bmatrix}, \tilde c_2 + \begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}, \tilde c_3 + \begin{bmatrix} 1 \\ 1 \\ 1 \end{bmatrix} $$

$$\text{solve the system}$$
$$c_1 = 1-c_3$$
$$c_2 = 0$$
$$ c_3 = -2 $$
$$c_1 = 3$$

$$\text{so the coordinates are } \begin{bmatrix} 3 \\ 0 \\ -2 \end{bmatrix}$$

## 2Q
 Consider the following equation:

$$
2x^2 - 2xy + 5y^2 = 1
$$

$$\text{where (x, y) are coordinates of vectors relative to basis } ( e_1, e_2 ). 

\text{ Consider another basis:}
$$
$$\tilde{e}_1 = \frac{1}{3}e_1 - \frac{1}{3}e_2
$$
$$
\tilde{e}_2 = \frac{2}{3}e_1 + \frac{1}{3}e_2
$$

$$ \text{Write the equation relative to basis } ( \tilde{e}_1, \tilde{e}_2 ), \text{and draw the set of solutions.}$$


## 2S

$$
x = \tilde{x} - 2\tilde{y}, \quad y = \tilde{x} + \tilde{y}.
$$
---
 $$( x^2 = (\tilde{x} - 2\tilde{y})^2 = \tilde{x}^2 - 4\tilde{x}\tilde{y} + 4\tilde{y}^2 )$$ $$( xy = (\tilde{x} - 2\tilde{y})(\tilde{x} + \tilde{y}) = \tilde{x}^2 - \tilde{x}\tilde{y} - 2\tilde{y}^2)$$
$$( y^2 = (\tilde{x} + \tilde{y})^2 = \tilde{x}^2 + 2\tilde{x}\tilde{y} + \tilde{y}^2)$$

---
$$
2(\tilde{x}^2 - 4\tilde{x}\tilde{y} + 4\tilde{y}^2) - 2(\tilde{x}^2 - \tilde{x}\tilde{y} - 2\tilde{y}^2) + 5(\tilde{x}^2 + 2\tilde{x}\tilde{y} + \tilde{y}^2) = 1
$$
$$
=5\tilde{x}^2 + 4\tilde{x}\tilde{y} + 17\tilde{y}^2 = 1
$$


## 3Q
$$\text{Prove the following equation: }$$$$⟨u, v⟩ = \frac{1}{2} \big( ⟨u+v, u+v⟩ - ⟨u, u⟩ - ⟨v, v⟩ \big) $$
## 3S

$$ ⟨u, v⟩ = \frac{1}{2} \big( ⟨u+v, u+v⟩ - ⟨u, u⟩ - ⟨v, v⟩ \big) $$ 
$$\text{Proof:}$$
Expand $$⟨u+v, u+v⟩$$ via distributive property
$$ ⟨u+v, u+v⟩ = ⟨u, u⟩ + ⟨u, v⟩ + ⟨v, u⟩ + ⟨v, v⟩ $$
Since the dot product is symmetric, 
$$⟨u, v⟩ = ⟨v, u⟩$$ Substitute into eqn
$$ ⟨u+v, u+v⟩ = ⟨u, u⟩ + 2⟨u, v⟩ + ⟨v, v⟩ $$ rearranging....
$$ 2⟨u, v⟩ = ⟨u+v, u+v⟩ - ⟨u, u⟩ - ⟨v, v⟩ $$  $$ ⟨u, v⟩ = \frac{1}{2} \big( ⟨u+v, u+v⟩ - ⟨u, u⟩ - ⟨v, v⟩ \big) $$
Conclusion: The equation holds true

## 4Q

$$
e_1 = 
\begin{bmatrix}
1 \\
1 \\
2
\end{bmatrix}, \quad
e_2 = 
\begin{bmatrix}
-1 \\
7 \\
0
\end{bmatrix}
$$

$$\text{Find a basis of} \ ( V^\perp).$$
## 4S

solve for vectors orthoganal to

$$
e_1 = \begin{bmatrix} 1 \\ 1 \\ 2 \end{bmatrix}, \quad
e_2 = \begin{bmatrix} -1 \\ 7 \\ 0 \end{bmatrix}.
$$

Let $$v = \begin{bmatrix} x \\ y \\ z \end{bmatrix}.$$ orthogonality conditions:
$$x + y + 2z = 0,$$
$$-x + 7y = 0$$


$$x = 7y$$
substitute
$$7y + y + 2z = 0 $$
$$= 8y + 2z = 0$$
$$y=-z/4$$
$$x=-7z/4$$
Thus
$$
v = \begin{bmatrix} x \\ y \\ z \end{bmatrix}
= \begin{bmatrix} -7z/4 \\ -z/4 \\ z \end{bmatrix}
= z \begin{bmatrix} -7/4 \\ -1/4 \\ 1 \end{bmatrix}.
$$

$$
=\begin{bmatrix} -7 \\ -1 \\ 4 \end{bmatrix}.
$$
