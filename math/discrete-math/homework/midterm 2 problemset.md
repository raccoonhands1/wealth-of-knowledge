
for finite sets A, B, C prove
$$
(A -  B) \cup (B - C) \cup (C - A) = (A \cup B \cup C) - (A \cap B \cap C)
$$
by showing $\forall e, e \in LHS$ <==> $e \in RHS$

proof:




suppose you have $n=2^k$ labeled teams assigned to a fixed, standard bracket (i.e., the initial pairing of teams is predetermined)

we define a tournament “outcome” as a specific list of winners for every match played in the bracket

prove that the number of distinct ways a single-elimination tournament of $2^k$ teams can play out is

exactly $2^{2^k} - 1$. to do this, establish a bijection between:

* the set of all possible tournament outcomes o
* the set of all binary strings b of length 2k − 1

note:
to establish bijection, first establish that

injective: 
pair one element in set A with one element in set B with no double inputs leading to same output

assume f(x)=f(y) for two elements x and y in set A, algebraically manipulate the eqn to show x = y

surjective:
let y be arbitrary

ensure each element is hit by at least one input


define the set of tournament outcomes as
$$
O \leftrightarrow B
$$






