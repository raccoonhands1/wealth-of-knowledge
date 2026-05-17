 Condition Variables
Learning Objectives:
Be able to explain what a condition variable is (and is not)
Be able to use the classic wait/signal pattern with a mutex to avoid lost wakeups
Be able to convert a solution into a blocking one
Complimentary Reading: OSTEP, Condition Variables (Chapter 30)
Motivation
Take a look at the example produce/consume code from the end of class last week
Isn’t the spinning awkward? 
Its slow! 
Wouldn’t it be nicer if the consume could wait until produce was ready? Wouldn’t it be nicer if the produce code could signal consume when it is done?
Condition Variables
Goal: a mechanism that allows multiple threads to coordinate with waiting and signaling when a condition over shared state is met. 
A Condition Variable is a queue of sleeping threads
The function wait puts the current thread into the queue
The function signal wakes up a thread from the queue
(There’s also a function broadcast to wakeup all threads).
We associate being on the queue with waiting for a particular condition to be true about shared state
Note: CondVars are not the actual condition!
CondVars just help you manage waiting and waking. 
CondVars are associated with a lock:
wait takes a lock as a parameter. A thread calling wait must already hold the lock. wait will release the lock and allow other threads to execute.
After a thread is woken up (i.e., signaled) but before wait returns, the thread will re-acquire the lock. 
This pattern simplifies using locks and CondVars together.
Let’s see an example! To start, we’ll update the produce and consume code to use condition variables for correctness
	


pthread_mutex_t m = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t cv = PTHREAD_COND_INITIALIZER;
int data;

void produce (int val) { 
    pthread_mutex_lock(&m);
    data = val;
    pthread_cond_signal(&cv);
    pthread_mutex_unlock(&m);
}

void consume () {
    pthread_mutex_lock(&m);
    pthread_cond_wait(&cv, &m);
    printf("consume saw data=%d\n", data);
    data = 0;  
    pthread_mutex_unlock(&m);
}
Does this code work? 
NO! A CondVar is not the condition! 
What order of operations could happen such that produce and consume don’t work as intended here? 
If produce goes first, consume will never see the signal!
consume will execute forever!
CondVars are stateless—they don’t remember or queue past signals. 
The upshot: wait should always be within a conditional block of code. 

pthread_mutex_t m = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t cv = PTHREAD_COND_INITIALIZER;
int ready;
int data;

void produce (int val) { 
    pthread_mutex_lock(&m);
    ready = 1;
    data = val;
    pthread_cond_signal(&cv);
    pthread_mutex_unlock(&m);
}

void consume () {
    pthread_mutex_lock(&m);
    if (! ready) {
        pthread_cond_wait(&cv, &m);
    }
    //possible for two threads to print the same data.
    printf("consume saw data=%d\n", data); 
    data = 0;
    ready = 0;  
    pthread_mutex_unlock(&m);
}
Does this code work if there are multiple consumers? 
No! One consume can “steal” the ready signal from the consume that is woken up.
Mesa semantics (no need to remember this name) do not enforce that the thread that is woken up is the next thread to acquire the lock.  Most systems provide Mesa semantics.
Threads should treat a signal as a hint that the condition has changed, but not guarantee that the condition is now different.
The upshot: put your wait functions inside a loop!  Here’s some updated code: 


pthread_mutex_t m = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t cv = PTHREAD_COND_INITIALIZER;
int ready;
int data;

void produce (int val) { 
    pthread_mutex_lock(&m);
    ready = 1;
    data = val;
    pthread_condvar_signal(&cv);
    pthread_mutex_unlock(&m);
}

void consume () {
    pthread_mutex_lock(&m);
    while (! ready) {
        pthread_condvar_wait(&cv, &m);
    }
    printf("consume saw data=%d\n", data);
    data = 0;
    ready = 0;  
    pthread_mutex_unlock(&m);
}
Putting it into practice
Let’s do some coding together! See Canvas Activity



