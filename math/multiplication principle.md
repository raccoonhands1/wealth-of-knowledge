### simple counting
Suppose you have 3 lists of length 2, 3, and 4
{a,b} {1,5,3} & {%,$,*,@} 
The multiplication principle states to generate all possible values of these, you should multiply their cardinalities together. ie: 2 * 3 * 4

![[Pasted image 20241209235633.png]]

it's pretty intuitive.
### non-repetitive counting

If you have a list L = {a,b,c,d} and want to generate all combinations of it without repeating values placed in the list, it's actually 
$$|L|!$$


> [!danger] pitfall
> consider the number of spaces that are required to fill up your output list. if you want to generate a list that occupies a lower amount of spaces than one of your input lists, you will have to stop at the size of the output list. in other words, its not always factorial.
> consider
> >[!example] example
 > a list of 7 characters, non-repeating, filling 4 places. 
 > > > [!success] solution
 > >  > $$7 \times 6 \times 5 \times 4$$




![[Pasted image 20241210000106.png]]

> [!abstract] definition
> 
$$ \text{Suppose in making a list of length } n \text{ there are:} $$ $$ \begin{aligned} & a_1 \text{ possible choices for the first entry,} \\ & a_2 \text{ possible choices for the second entry,} \\ & a_3 \text{ possible choices for the third entry,} \\ & \text{and so on.} \end{aligned} $$ $$ \text{Then the total number of different lists that can be made this way is:} $$ $$ a_1 \cdot a_2 \cdot a_3 \cdot \dots \cdot a_n $$

> [!example] example
> For a license plate with 3 letters in front and 4 letters in the back ie: (ABE-0031) (repititions allowed)
> 
 > > [!success] solution
 > > $$26 \times 26 \times 26 \times 10 \times 10 \times 10 \times 10$$


> [!example] example
> For a license plate with 3 letters in front and 4 letters in the back ie: (ABE-0031) but the resulting list must contain an E and repititions are allowed
> 
 > > [!success] solution
 > > its not so straight forward. you should first think to get the answer to the previous question (26^3 * 10^4) and then look to subtract license plates without an E. it looks like this
 > > $$((26 \times 26 \times 26) - (25 \times 25 \times 25)) \times 10^4$$
 > > 

