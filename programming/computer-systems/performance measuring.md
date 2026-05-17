 Performance in Computer Systems
Learning Objectives
Be able to…
apply the “build-then-measure” approach to computer systems
apply capacity measurements to computer systems
define, calculate, and understand throughput and latency 
Build-then-measure
Performance is almost never what you expect from a whiteboard
So, don’t try to predict! 
Instead: build then measure
build an end-to-end system
measure the system to characterize performance using benchmarks 
locate the constraint (where did the resources go?)
decide what to do next
repeat
Capacity: the amount of a resource that a system can supply
CPU cycles/second, memory bytes, etc.
Estimate these based upon physical properties of the system
Useful work: the portion of that resource spent directly for users
Memory used to store user’s data, cpu time spent for user-facing compute, etc.
Measure these with tools
Overhead: the portion of the resource that does not directly advance user’s work
Context switches, virtual memory overhead, protocol headers, etc.
Efficiency: percentage of (useful work / total consumption)
Time-based metrics
Suppose that students want to get from the base of campus up to the Baskin auditorium. What are our options?
Car: seats 4, round trip takes 15 minutes
As an individual student: round trip is 15 minutes
As a group: we’ll need many round trips (e.g., 38 trips for 150 people)
Bus: seats 50, round trip takes 30 minutes
As an individual student: round trip is 30 minutes.
As a group: fewer round trips (e.g., 3 trips for 150 people).
Latency: how long it takes a system to process a unit of work
Measured in seconds, minutes, hours, etc.
Lower is better
Throughput: how many units a system can process per unit of time
Measured in requests/second, bytes per second, etc.
Higher is better
The car can achieve lower latency (good!) and lower throughput (bad!) compared to the bus
Which should we use? Depends on what we want:
Are we an individual trying to get there quickly? 
Are we a group trying to manage many people?
What latency do we care about? Systems often have a “long tail”: some requests take much longer than others.
See lecture notes for a typical latency cumulative distribution function.
The “P95”, “P99” are much slower than the average (see “Tail at scale”) 
Applying throughput/latency to a server
A server is a “queue-based” model
Requests arrive at the server and enter a queue
The server pulls requests from the queue and processes them as fast as possible.
Benchmarking a queue-based system:
Create a number of clients to send data to the server
Each client sends a request to the server
Open-client: clients generate requests at a configured rate, independent of response times.
Closed-client: a fixed number of clients each send a new request only after the previous completes.
What happens if we run the following experiment:
Create a number of open clients. 
Control the offered load from the clients:
E.g., offer 10 req/s, 20 req/s, 30, …
Graph: offered load (throughput) on x-axis, latency on y-axis
What does this graph look like? See the lecture video!

