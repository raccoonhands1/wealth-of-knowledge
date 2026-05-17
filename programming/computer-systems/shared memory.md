 IPC: Shared Memory
Learning Objectives
Be able to describe when and why pipes and sockets become performance bottlenecks.
Be able to implement shared memory communication between parent and child processes using POSIX shm_open() and mmap().
Be able to evaluate which IPC mechanism (signals, pipes, sockets, or shared memory) is most appropriate for different scenarios.
Complementary Reading: Beej’s Guide to Interprocess Communication — Section on Shared Memory (free online).
Pipe/Socket limitations
Each read/write to a pipe/socket needs to cross into the kernel
Expensive context switches
Expensive data copies. 
What if we try to share a large amount of data?
What if we want to share that data across multiple child processes?
What if multiple processes could access the same memory region directly?
Aside: Separating the Control Plane and Data Plane
Control Plane
Mechanisms that manage who can do something or how to use resources.
Examples: open(), socket(), pipe(), mmap(), shm_open().
Data Plane: 
The actual work of the thing. 
Examples: reading/writing data after setup.
“Separate the control plane from the data plane.”
A recurring theme In modern systems research (post-2010)
This allows fast paths to bypass kernel overhead while maintaining kernel-level safety at setup time.
Shared Memory
Create a region of memory that multiple processes can map into their address space.
Kernel handles the setup (control plane).


Thereafter, processes directly read and write memory (data plane).
Pros:
Extremely fast — no system call per data access.
Perfect for large or frequently accessed data.
Cons
No built-in coordination — race conditions possible.
Multiple writers can corrupt shared data without synchronization (to be addressed in next week’s lecture).
Demo: Shared Memory Between Parent and Two Children
A parent shares memory with two children.
Parent fills a shared data region with random numbers.
Each child computes analytics (min, max, average) on half of the data.
Parent combines the results.
See ipc/shm_demo.c
Activity


Notify another process that something happened
Signal
Stream a small file between related processes
Pipe
Bidirectional communication between unrelated processes
Socket
High-speed sharing of large read-only datasets
Shared Memory



