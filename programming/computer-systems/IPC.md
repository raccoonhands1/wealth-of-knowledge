 Interprocess Communication
Learning Objectives
Be able to explain the purpose of Unix’s key IPC mechanisms.
Be able to identify when each IPC mechanism is appropriate.
Be able to use IPC mechanisms to communicate across processes
Complementary Reading: Beej’s Guide to Interprocess Communication Section 3, 4, and 11
Inter Process Communication
Isolation between processes is great! It prevents bad things from happening. 
But sometimes we want to communicate!
Today we’re going to learn about structured communication using:
Signals
Pipes
Sockets
Wednesday, we’ll learn about unstructured communication through shared memory.
2. Signals
Asynchronous messages that notify a process of an event. 
“something happened”
NOT: “here’s some details about something that happened”.
Can be sent to any process, you just have to know its PID.
Example:
You want to kill the process with PID, <pid>.  Run, kill -9 <pid>
 Sending signals mechanism:
Sending process calls kill. 
(note, the naming is a misnomer, it does not always actually kill the process!)
The operating system will ensure that the receiving process receives the signal.
Receiving signals mechanism: 
OS raises the signal to the receiver.
Receiver executes a signal handler associated with the signal
Unix provides default signal handlers
Terminate
Stop
Continue
Ignore
Process can create custom signal handlers
Interesting details:
Signals are coalesced, so multiple outstanding instances of the same signal appear as only one to the receiver.
Some functions are not safe to execute from within a signal handler–the safe ones are called “async safe”
Example: See lectures/ipc/signal_demo.c


Pipes
Let’s say you want one process to send data to another. 
Use a pipe!
Unidirectional channel that connects one process’s output (producer) to another’s input (consumer).
Pipes are in memory so they are efficient.
Mechanism: 
pipe(int fd[2]) fills its arguments with the producer and consumer file descriptors:
one for reading (fd[0])
one for writing (fd[1])
From the user’s perspective, these feel like files opened with read-only and write-only permissions. 
They are file descriptors. 
Programs use read/write to interact with them.
Key difference: they are blocking (typically): reading from an empty pipe or writing to a full pipe causes the process to wait.
Delivers and EOF when the producer closes its file descriptor
See lectures/ipc/pipe_demo.c
Unix Domain Sockets
But, what if you want to talk to each other? 
Sockets! 
bidirectional communication between processes.
Support processes on the same machine or across machines. 
We’ll focus on just Unix-domain sockets today, which are within a machine. 
Mechanism:
There’s a number of ways to create sockets. 
Today, we’ll look at socketpair(AF_UNIX, SOCK_STREAM, 0, sv)
The output is in sv, it includes the two ends of the socketpair
Both ends of the socket pair can send and receive. 
Typically blocking, similar to pipes.
Demo: see socket_demo.c
Summary


Data Type
Synchronization
Directionality
Typical Use
Signals
Integer
Asynchronous
N/A
Notifications
Pipe
Byte Stream
Blocking
One-way
Producer -> Consumer
Socket
Byte Stream
Blocking
Two-way
Peer-to-peer




