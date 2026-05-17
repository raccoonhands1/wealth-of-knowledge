 Caching Concepts
Learning Objectives
Be able to…
Explain why caching accelerates computer systems
Define a working set and identify it in an access trace
Distinguish between temporal and spacial locality
What is a cache?
Suppose you run a program that occasionally reads from disk and mostly works in memory. What part feels slow?
The disk access! 
Why: accessing disk is 1,000 slower than referencing memory
Cache: small, fast storage that keeps a subset of data from a larger, slow storage to reduce average access time.
Within a CPU: L1/L2 cache hides DRAM latency
OS page cache hides disk latency
Browser cache hides network latency
Others?
Terminology: 
Hit: when an access occurs and data is in the cache
Miss: when an access occurs and data is not in the cache
Average memory access time (AMAT)
For a single-level cache:  HitRate x HitTime + MissRate x MissTime
E.g., hittime = 1, misstime = 100 cycles, rates: 10% and 1%
Upshot: small reduction in miss rate makes huge performance gains
How big should the cache be? 
Too large: waste! Caches are expensive
Too Small: thrashing: when the system continuously evicts items from a cache that it is likely to need again soon.
The Working Set Model For Program Behavior
Establishing some of the theory behind why caches work, provides formalism for us to study caches.
A working set at time t is the set of distinct items that the program has accessed in the recent past, say last K operations.
Example: trace is A  B  C  A  B  D  A  B  C   A and K = 5
At time 10, what’s the working set? {A,B,C,D}
What about at time 6? {A,B,C}
What is the size of the working set over time? 3-4
What does this tell us about the size of cache that we should use for the program?
Working Set Properties that seem to hold in real programs:
The size of the working set is much smaller than the size of a window, for a moderately sized window.
|W(t, K)| << K
The elements in the working set are predictive of future working sets:
Knowing W(t,K) tells us about W(t + a, K) for small a.
Programs that don’t satisfy these properties are sometimes called “irregular” or as having “irregular memory access patterns”. 
Predicting working sets
We use locality to predict the working set of a program based upon the current working set:
Temporal locality: the program is likely to access items that it recently accessed
Spacial locality: the program is likely to access items “near” past accesses
See Canvas activity for practice in identifying localities

