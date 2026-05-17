 Performance Optimizations 
Learning Objectives
Be able to…
decide where to optimize a software system 
Apply Amdahl’s Law and the bottleneck law to predict performance improvements
Identify when to use common latency and throughput techniques
Modelling a software system
Think of a system as a collection of stages, each representing a specific operation
Each stages has a latency (how fast does input become output)
Each stage has a throughput (how many items can it process in a given time)
For sequential stages, throughput = 1 / latency
For parallel stages, these could be unrelated
What is the throughput of the end-to-end system given the bandwidth of each stage?
The minimum throughput
This is called “the bottleneck law”
Implication => optimizing for throughput requires optimizing the minimum throughput.
What is the latency of the end-to-end system given the latency of each stage? 
The sum of all latencies.
Let’s imagine that a stage takes p percentage of the overall time and that you can speed it up by a factor of s. 
Amdahl’s Law: the overall speedup is given as 1 / (1 - p + (p/s)). 
Intuitively: 1 - p is the amount of time for the other stages,
p/s is the new time for the stage
Implication => focus your efforts on the stages that take a long time!
Optimization Techniques
Fast-Path: find a way to improve the performance of some of the requests
Average latency = (p) * fast_path + (1 - p) * slow_path
Improves average latency
Special case: caching (see next week).
Batching: group many requests together to amortize fixed costs
Requires (usually) Dallying: delaying the processing of a request 
Improves throughput
Parallelizing: Use multiple threads/processes, may structures
Each worker does the same processing: improve throughput
Pipeline work across stages: improve throughput
Split the work itself to parallelize it (e.g., parallelize analytics): improve latency

