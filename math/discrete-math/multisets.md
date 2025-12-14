
just a set, but elements can be repeated. like an array.

represented with '[]' instead of '{}'

### cardinality 
= array.size();

for a multiset, you can easily find the cardinality by using bars to seperate elements and then accounting for those in the algorithm for determining cardinality... ie:
$$\binom T s $$
where T is the total things in the "encoding" format and s is the number of separators.
for example, for
$$[a,a,b,c,d]$$
we will write in some bars
$$ aa|b|c|d $$
and then finally encode it
$$**|*|*|*$$
the total number of characters in the encoded format = 8, thus we choose 
$$\binom 8 3$$
for 8 characters and 3 bars and using the [[choose]] algorithm

$$= \frac{8!}{5!3!} $$

### multiplicity 
of an element $$x \in A$$ is the number of times x appears in a.

for [1,1,1,5,2,3] x=1, the multiplicity is 3

