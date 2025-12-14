## 1Q

Compute \( 2A - 3B \), where:

$$
A = \begin{bmatrix} 1 & -1 \\ 2 & 2 \\ 3 & -3 \end{bmatrix}, \quad
B = \begin{bmatrix} -1 & 1 \\ -1 & 3 \\ 2 & 1 \end{bmatrix}.
$$

## 1S

$$2A = \begin{bmatrix} 2 & -2  \\ 4 & 4 \\ 6 & -6 \end{bmatrix}$$

$$-3B= \begin{bmatrix} 3 & -3 \\ 3 & -9 \\ -6 & -3\end{bmatrix}$$

$$
2A - 3B = \begin{bmatrix} 5 & -5 \\ 7 & -5 \\ 0 & -9 \end{bmatrix}.
$$

## 2Q

Find a system of equations that defines \( V \), where:

$$
V = \text{span}\Bigg(\begin{bmatrix} 1 \\ -1 \\ 1 \\ 1 \end{bmatrix}, \begin{bmatrix} 1 \\ 0 \\ 1 \\ -1 \end{bmatrix}\Bigg).
$$

## 2A
$$
x = c_1 \begin{bmatrix} 1 \\ -1 \\ 1 \\ 1 \end{bmatrix} + c_2 \begin{bmatrix} 1 \\ 0 \\ 1 \\ -1 \end{bmatrix}.
$$
$$
x_1 = c_1 + c_2, \quad
x_2 = -c_1, \quad
x_3 = c_1 + c_2, \quad
x_4 = c_1 - c_2.
$$

$$From \ x_1 = c_1 + c_2  \ and \ x_3 = c_1 + c_2$$
$$
x_1 = x_3.
$$

$$From \ x_2 = -c_1 $$
$$
x_4 = -x_2 - c_2.
$$

 $$c_2 = x_1 - c_1 $$
$$
=x_4 = -x_2 - (x_1 - (-x_2)) 
$$
$$= -x_1 + 2x_2$$

$$
x_1 = x_3, \quad x_4 = -x_1 + 2x_2.
$$


## 3Q

$$\text{Let u, v be vectors in }  \mathbb{R}^n \text{ Assume}$$
$$
⟨u, u⟩ = 1, \quad ⟨u, v⟩ = -1, \quad ⟨v, v⟩ = 2.
$$
$$Find  ⟨u+2v, 2u-3v⟩$$

## 3S
$$
⟨u+2v, 2u-3v⟩ = 2⟨u, u⟩ - 3⟨u, v⟩ + 4⟨v, u⟩ - 6⟨v, v⟩.
$$
 $$⟨u, u⟩ = 1 $$
 $$⟨u, v⟩ = ⟨v, u⟩ = -1 $$
$$ ⟨v, v⟩ = 2 $$


$$
2(1) - 3(-1) + 4(-1) - 6(2) = 2 + 3 - 4 - 12 = -11.
$$
$$
⟨u+2v, 2u-3v⟩ = -11.
$$


## 4Q

Can we find a vector $$ u \in \mathbb{R}^3 \text{ such that }  ⟨u, u⟩ = -1 $$Explain

## 4A

$$ \text{ The dot product } ⟨u, u⟩ \text{ represents } |u|^2 \text{ In } \mathbb{R}^3 ,
$$
$$ \text{the length }|u|^2 \text{ is always non-negative. Thus, it is impossible to have }$$
$$
⟨u, u⟩ = -1 \ for \ any \ u \in \mathbb{R}^3$$

$$\text{so it can't exist because  } (⟨u, u⟩ \geq 0) \forall u \in \mathbb{R}^3$$



## 5Q

Consider

$$
A \begin{bmatrix} 1 \\ 1 \\ 1 \end{bmatrix} - 3B \begin{bmatrix} -2 \\ 1 \\ 1 \end{bmatrix},
$$

Compute

$$
A = \begin{bmatrix} 1 & 2 & 1 \\ 0 & 2 & 2 \end{bmatrix}, \quad B = \begin{bmatrix} -2 & 2 & 1 \\ -2 & 2 & 1 \end{bmatrix}.
$$

## 5A

$$
A \begin{bmatrix} 1 \\ 1 \\ 1 \end{bmatrix} = \begin{bmatrix} 1\cdot1 + 2\cdot1 + 1\cdot1 \\ 0\cdot1 + 2\cdot1 + 2\cdot1 \end{bmatrix} = \begin{bmatrix} 4 \\ 4 \end{bmatrix}.
$$

$$
B \begin{bmatrix} -2 \\ 1 \\ 1 \end{bmatrix} = \begin{bmatrix} -2(-2) + 2(1) + 1(1) \\ -2(-2) + 2(1) + 1(1) \end{bmatrix} = \begin{bmatrix} 7 \\ 7 \end{bmatrix}.
$$
$$
3B \begin{bmatrix} -2 \\ 1 \\ 1 \end{bmatrix} = 3 \cdot \begin{bmatrix} 7 \\ 7 \end{bmatrix} = \begin{bmatrix} 21 \\ 21 \end{bmatrix}.
$$
$$
A \begin{bmatrix} 1 \\ 1 \\ 1 \end{bmatrix} - 3B \begin{bmatrix} -2 \\ 1 \\ 1 \end{bmatrix} = \begin{bmatrix} 4 \\ 4 \end{bmatrix} - \begin{bmatrix} 21 \\ 21 \end{bmatrix}
$$
$$
=\begin{bmatrix} -17 \\ -17 \end{bmatrix}.
$$
