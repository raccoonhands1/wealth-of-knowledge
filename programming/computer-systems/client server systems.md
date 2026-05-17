 Client–Server Systems
Learning Objectives
Be able to describe the client-server model and protocol stack
Be able to describe and use serialization to send data between machines
Client-Server Overview
Real systems are distributed: 
Browsers and web servers
mobile apps and backend servers
Services to services.
Consequently, processes on different hosts must “speak” to each other!
Client-server design:
Client: a process that sends requests to ask for service
Server: a process that receives requests to provide services. 
Protocol: the mechanism that machines use to communicate
See recording for overview of typical timeline
The TCP/IP protocol stack
The key technology stack underlying the modern internet:
Application:  An application’s format and protocol (HTTP, JSON, protobuf, …)
Agents involved are processes
Transport: Ensures end-to-end host communication (TCP, UDP)
Agents involved are processes
Network: IP addressing and routing (IPv4, IPv6)
Agents involved are routers, hosts, etc.
Link: frames on a local link 
Involved agents are switches, devices, MAC addresses
Physical: signals in a medium
Agents involved are 
Packet: A unit of data at the network layer, used colloquially as equivalent to message as in “the client sends a package to the server…”
This classes focus is on using the transport layer to implement application layers
Sockets: 
Byte stream between hosts, same abstraction as unix domain sockets
TCP sockets: identifiable by a “4-tuple” of (client_ip, client_port, server_ip, server_port)
Client/Server Lifecycles
Server lifecycle
socket: to create the structure.
bind: to bind to an IP address and port.
listen: to mark the socket as open for new connections.
accept: to start new connections
read/write/close/send/recv: to interact with byte stream
Client lifecycle
socket: creates socket primitive
connect: open connection to a server
read/write/send/recv/close: to interact with byte stream
Application Protocols
Each process has a different “internal” language for the same data!
A process’s pointers are process-local
Machines store data in different formats (struct organization, endianness)
We serialize data to ensure that it is in a machine-independent format
We convert a process’s data into a “wire format” (JSON, binary, etc.)
Also called “marshalling”



