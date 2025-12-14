take for instance:
$$ \text{let } A,B \subseteq \Omega$$
>[!warning] extreme case:
>$$A \subset B = \varnothing$$

>[!warning] extreme case:
>$$B \subseteq A$$

>[!definition] conditional probability
> the CP of A given B is 
> $$P(A|B) = \frac{P(A \cap B)}{P(B)}$$

>[!question]
> if a dart lands in B, what's the probability that it lands in A?
> > [!answer] 
> > "The percentage of A that lies in B"
> > $$ \text{observe that } P(\cdot |B) \text{ is a valid probability law. In that it satisfies the axios. }$$
> > 1) $$P(A|B) = algo >= 0$$
> > 2) $$P( \Omega \cap B) = \frac{P (\Omega \cap B)}{P(B)} = \frac{P(B)}{P(B)} = 1$$
> > 3) $$\text{if } A_1 \cap A_2 = \varnothing \text{ then } \frac{P((A_1 \cup A_2) \cap B)}{P(B)} ... = P(A_1|B) + P(A_2|B)$$
> > It follow that all theorems and identitive that we've proved from axios also hold for $$P(\cdot |B)$$ 
> > for example: for any 
> > $$A_1,A_2 \subseteq \Omega * P(A_1 \cup A_2 B) = P(A_1|B) + P(A_2|B) - P(A_1 \cap A_2 | B) $$
> > Prove it!
> > 

>[!exercise] 
>prove
>$$P(A|B)=\frac{P(A \cap B)}{P(B)}$$
>given 
>$$ P(A \cap B) = P(A|B)*P(B)$$
>and 
>$$P(A \cap B) = P(B|A) * P(A)$$
>

>[!question]
>positive prob. of .99 if subject has disease and .10 if subject doesnt have the diseas. The prob. that a random person has disease is 0.05. What is the prob of a flase positive? 
>>[!answer]
>>$$ \text {let } $$
>>$$T = {\text{test is positive}}$$
>>$$D = {\text{subject has disease}}$$
>>$$\text{ given} $$
>>$$P(T|D)=.99$$
>>$$P(T|D^c)=0.1$$
>>$$P(D)=0.05$$
>>we want 
>>$$P(T \cap D^c)=P(T|D^c) * P(D^c) = 0.095$$
>>$$\text{and}$$
>>$$P(T^c \cap D) = P(T^c|D)*P(D) = 0.0005$$

