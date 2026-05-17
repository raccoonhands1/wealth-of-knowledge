 Caching Policies
Learning Objectives
Be able to…
Describe and simulate FIFO, LRU, and optimal scheduling algorithms
Describe the tradeoffs of write-through and write-back caching and when to use them
Describe when to use TTL policies
Recap
What’s a working set?
What is temporal locality? 
How does caching work (see image from lecture)
How might we estimate the working set? 
FIFO, LRU, and optimal caching policies
Suppose that you could see the future, what would you do? 
Choose the block whose next use is farthest in the future
This is called Belady’s optimal (OPT) algorithm
We use this as a comparison point: it tells us the best possible cache performance.
We cannot actually see the future!
Key Idea: assume that past behavior is indicative of future behavior:
FIFO: evict the entry that was inserted into the cache earliest
LRU: evict the entry that was used least recently. 
Exercise, given the trace, simulate a cache with size 3 when using LRU, FIFO, and OPT.
A B C A B D A B C A 
Which algorithm performs the best?
How do we implement them?
Classic approach: linked list with an index
See lecture slides for image of how these work.
What about writes?
Two options:
Write-through: when a write occurs, write the data in the cache and in the backend storage
Write-back: when a write occurs, write data in cache. When it is evicted, write to backend storage.
When should I use each one? 
Intuition says that write-back would always be better (?)
If items have high reuse, then write-back reduces the number of writes to storage.
If items have low reuse, then write-back would seem to write a similar amount of data.
Our learned intuition: if the storage is throughput bound, use write-back. Else, use write-through
Time to Live
Many systems in software tag items with expiration times called time to live.
Allows the system to ensure that out of date data is removed from the system. 
We say that this is maintaining freshness

