 Deadlock
Learning Objectives:
Be able to explain what a deadlock is.
Be able to read a resource-allocation graph to identify processes and resources that you could preempt to resolve deadlock.
Be able to create a global locking order to eliminate deadlock issues.
Motivation–Dining Philosophers 
A group of N philosophers sit around a circular table.
The philosophers want to go back and forth between:
Eating for some time
Thinking for some time
The philosophers are eating a special dish that requires two forks to consume, but, there are only N forks! 
Possible solution:
Associate a lock with each fork.
Each philosopher:
thinks
acquires right fork
acquires left fork
Eats
See lectures/synchronization/dining.c example. What happens when we run it?
Deadlock
A deadlock occurs when a set of threads each waits for an event that only another thread in the set can cause.
It causes starvation, the program appears to stop executing
Four necessary conditions for deadlock to occur in a system:
Mutual exclusion — resources (forks) are held exclusively.
Hold and wait — threads hold resources while requesting more.
No preemption — resources can’t be forcibly taken.
Circular wait — a cycle of threads each waiting on the next.
How can we know if a given execution is in deadlock? 
Resource Allocation Graphs
A tool for reasoning about whether a program is in deadlock
Each node represents either an independent thread/process or a resource (e.g., lock)
Edges from a resource to a thread/process represent that the thread/process holds the resource.
Edges from a thread/process to a resource represent that the thread/process wants to acquire the resource.
The system is in deadlock if there is a cycle! 
Possible things to do with this: 
Identify whether something can go wrong
Identify what resources you should preempt (i.e., remove edge from resource to process)
Identify what processes/threads you should terminate (i.e., removing a process)
Fixing a deadlock
The standard mechanism to fix the deadlock is to impose a total order over how threads acquire locks
E.g., number the locks and always acquire the lower number before the higher number
E.g., acquire lock for one type of structure before the other type of structure 
E.g., consider the dining philosopher’s problem: number the locks and have each philosopher choose the lower-numbered lock first. 


