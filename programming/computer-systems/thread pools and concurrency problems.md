 Thread Pools and Concurrency Bugs
Learning Objectives:
Be able to describe the structure of a thread pool and why we use them
Be able to identify concurrency bugs by thinking concurrently
Be able to identify classes of concurrency bugs given their description
Thread Pool
System creates a number of worker threads. 
Each worker thread repeatedly:
Pops items off of a shared queue
Processes the item
A producer thread (often main):
Repeatedly pushes items onto the shared queue
Advantages compared to fork-join parallelism:
Less expensive since fewer calls to creating fork.
Support for “bursts” -> The queue allows you to have a backlog.
Demo: See code in class! 
Thinking Concurrently
Bugs can crop up when threads operate concurrently! 
High level approach to finding them:
Identify all shared states
Look for compound operations (e.g., Read, modify, write operations)
Look for instances where more than one thread writes or reads to the same variable.
Manually simulate different schedules. Think: what could an adversarial scheduler do? 
Example: 
Let’s walk through the demo! 
What happens with two concurrent pops? 
Look at the queue access
Look at the head update
What happens with a concurrent push and pop?
Look at the update to count
What happens with two concurrent pushes? 
Look at the queue access
Look at the tail update
(Our demo doesn’t actually do this)



