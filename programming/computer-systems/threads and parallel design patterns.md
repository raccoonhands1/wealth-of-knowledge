 Parallelism Design Patterns and Threads
Learning Objectives:
Be able to use fork-join parallelism to solve a problem
Be able to define what a thread is and explain how their costs compare to processes. 
Be able to reason about the possible outcomes under uncontrolled thread scheduling.
Complementary Reading: Operating Systems: Three Easy Pieces (OSTEP) — Chapter: Threads Intro and Chapter: Thread API (pthreads).
Parallel Design Patterns
We know how to use fork and wait to create parallelism within a program. 
Example problem: Calculate the frequency of each word in a set of documents
Steps:
Read each document
Tokenize each document to determine words
Count the number of times each token occurs in each document
Merge the results.
Possible parallel design: Create a separate process for each document. 
Possible parallel design: Create a separate process for each step. 
Parallel design patterns provide a structure to exploit parallelism in a problem.
High-level abstractions describe where parallel work exists in the problem
Data Parallelism: split the data into distinct units and process each unit in parallel
Task Parallelism: split the process into distinct tasks and process tasks in parallel
Sometimes both! (e.g., map-reduce)
Programming models give structured primitives to implement a problem’s parallelism:
Fork-Join parallelism (common in data parallelism).
Fork a number of workers for each unit.
Workers calculate their part of the problem in parallel.
Join all workers and combine results.
Work Queues and worker pools (common in task parallelism)
Queue holds all outstanding tasks
Workers from the pool dequeue items from the work queue to process them.
More on this Wednesday!
And many many more.
Are Processes right for these tasks?
High Switching Cost: context switching requires saving/restoring full address-space mappings. 
Data Duplication: Each process has a separate address space, which requires memory duplication.
fork latency: fork is a slow system call since it requires copying all memory! 
There are many techniques that reduce these costs (such as copy-on-write), but they aren’t effective enough: fork is slow, context switching between processes is slow, and processes bloat the memory that we require.
Threads: What are they and how do they compare to processes
A thread virtualizes the cpu within a single process.
Threads within a process share the same address space (heap, globals, code, file descriptors)
Threads within a process have their own registers, stack, and program counter
Uncontrolled Scheduling: Like with processes: the scheduler (within the operating system) decides which threads execute when—you don’t control the interleaving
Advantages to processes:
No data duplication given that they share an address space.
Context switches no longer require switching between address spaces!
Disadvantages to processes:
No more isolation!
Concurrency bugs
Pthreads: the standard Unix threading library
See demos in lecture/threads for examples of creating and joining pthreads:
lectures/threads/basic_fork.c: shows multiple threads doing IO
lectures/threads/parallel_sum.c: shows data parallelism with fork-join
See canvas for additional examples
Canvas is down, so just see them here! 





Example 1:

// act1_two_threads_print.c
// Two threads; each prints its name once.

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void* worker(void* arg) {
    const char* name = (const char*)arg;
    printf("%s\n", name);
    return NULL;
}

int main(void) {
    pthread_t tA, tB;
    if (pthread_create(&tA, NULL, worker, "A")) { perror("pthread_create"); return 1; }
    if (pthread_create(&tB, NULL, worker, "B")) { perror("pthread_create"); return 1; }

    pthread_join(tA, NULL);
    pthread_join(tB, NULL);
    return 0;
}



Example 2:

// act2_sequential_create_join.c
// Create→join, then create→join again. 
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void* worker(void* arg) {
    const char* name = (const char*)arg;
    printf("%s\n", name);
    return NULL;
}

int main(void) {
    pthread_t t;

    // First thread
    if (pthread_create(&t, NULL, worker, "A")) { perror("pthread_create"); return 1; }
    pthread_join(t, NULL);  // guarantees "A" prints before proceeding

    // Second thread
    if (pthread_create(&t, NULL, worker, "B")) { perror("pthread_create"); return 1; }
    pthread_join(t, NULL);  // guarantees "B" prints before exit

    return 0;
}



Example 3:

// act3_main_prints_around_threads.c
// Main prints "M-start" (guaranteed first), creates two threads that print "A"/"B"
// in any order, then joins and prints "M-end" (guaranteed last).

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void* worker(void* arg) {
    const char* name = (const char*)arg;
    printf("%s\n", name);
    return NULL;
}

int main(void) {
    pthread_t tA, tB;

    printf("M-start");     // printed before any create()

    if (pthread_create(&tA, NULL, worker, "A")) { perror("pthread_create"); return 1; }
    if (pthread_create(&tB, NULL, worker, "B")) { perror("pthread_create"); return 1; }

    pthread_join(tA, NULL);
    pthread_join(tB, NULL);

    printf("M-end");       // printed after both threads have finished
    return 0;
}



Example 4:

// act4_two_threads_sum_1_100.c
// Split 1..100 into two halves; each thread sums a range; main combines.

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int start;     // inclusive
    int end;       // inclusive
    long long out; // partial sum
} task_t;

void* sum_range(void* arg) {
    task_t* t = (task_t*)arg;
    long long s = 0;
    for (int i = t->start; i <= t->end; i++) s += i;
    t->out = s;
    return NULL;
}

int main(void) {
    pthread_t t1, t2;
    task_t a = { .start = 1,  .end = 50, .out = 0 };
    task_t b = { .start = 51, .end = 100, .out = 0 };

    if (pthread_create(&t1, NULL, sum_range, &a)) { perror("pthread_create"); return 1; }
    if (pthread_create(&t2, NULL, sum_range, &b)) { perror("pthread_create"); return 1; }

    pthread_join(t1, NULL);
    pthread_join(t2, NULL);

    long long total = a.out + b.out;
    printf("Sum 1..100 = %lld\n", total); 
    return 0;
}



