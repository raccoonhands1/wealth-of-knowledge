 Fine-Grained Locking
Learning Objectives:
Be able to explain what lock contention is and why it is a problem.
Be able to use multiple locks to safely share data structures.
Be able to use reader-writer locks to accelerate reads of a shared data structure.
Complimentary Reading: OSTEP, Condition Variables (Chapter 30)
Motivation–Review of the HashTable
How did you solve the concurrency issues?
If you tried putting locks around all of the functions, why didn’t that work?
What did you notice about the performance of safe hashtable? Poor scalability!
Why?, Lock Contention: the time that threads spend blocked or spinning because they are trying to acquire a lock that is currently held by another thread.
Is this the best we can do? 
The table has many independent buckets.
The workload accesses random keys, so probably accesses random buckets
Fine-grained locking
Simple Idea: use a separate lock for each of the logical items in a data structure
Advantages: 
Allows more parallelism by reducing lock contention
Improves cache locality (a low level hardware concern)
Disadvantages:
More difficult to reason about invariants that span logical items 
e.g., resizing is hard!
New types of concurrency issues can crop up. 
When should we use it: 
Most operations touch a small amount of state
You have benchmarking that shows that lock contention is a problem
We’ll code a hashtable example together! 
Add a lock to the bucket struct
Retain the critical sections in put, get, and del.
What happens to the performance now? 
Is this the best that we can do? 
Does every operation need to be fully one-at-a-time to ensure safety?
What if we allowed concurrent reads?
Reader-writer locks
Allow a lock to be in one of two modes:
Many readers holding the lock concurrently (shared mode)
A single writer with exclusive access
Advantage: allows more parallelism by reducing lock contention further
When will this help? 
Read-heavy workloads with “hot” items
In write-heavy workloads, we’ll see the same performance as before. (Maybe slightly worse because of additional complexity).
We’ll code a hashtable example together! 
Add an pthread_rwlock_t to the bucket struct
What type of critical section is…
get? Reader!
put? Writer!
del? Writer!

