---
layout: page
title: Liso Server (HTTP 1.1)
description: A Liso web server supporting HTTP 1.1 at the application layer, and a smart client able to parallely process and request file based on lineage graph.
img: assets/img/projects/http11/http11_server.png
importance: 5
category: Computer Systems and Networks
---
This project involves building a fully functional web server and client, simulating real-world scenarios while exploring HTTP/1.1 functionalities, performance optimizations, and network conditions.

`Liso HTTP 1.1 Server Implementation`
<ul>
  <li>A web server capable of handling HTTP requests (GET, HEAD, etc.) from multiple clients concurrently.</li>
  <li>Implements robust error handling (e.g., HTTP 404, HTTP 503, HTTP 400) and overload protection.</li>
  <li>Efficient handling of concurrent connections using the poll() system call.</li>
</ul>


`Smart Client Implementation`
<ul>
  <li>A custom client replacing standard web browsers to interact with the server.</li>
  <li>Implements HTTP/1.1 optimizations such as pipelining (concurrent inflight requests) and parallel connections.</li>
</ul>

This project is done as part of the course project at CMU 15441.