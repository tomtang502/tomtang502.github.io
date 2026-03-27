---
layout: page
title: "15-440 & 15-441: Distributed Systems and Networks"
description: Course projects from CMU 15-440 (Distributed Systems) and 15-441 (Computer Networks), covering protocols from transport to application layer, consensus algorithms, and privacy-preserving networks.
img: assets/img/projects/440_441/distributed_sys_net.png
importance: 3
category: Computer Systems and Networks
year: 2024
---

## Raft (15-440)

Reimplementing the distributed log consensus protocol - Raft.

`Raft Routine`<br>

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/440_441/raft/raft.png" title="raft_routine" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Raft routine extracted from original raft paper from https://raft.github.io/raft.pdf
</div>

---

## Live Sequence Protocol (LSP) (15-440)

A distributed transport layer protocol with both features from TCP and UDP.

The Live Sequence Protocol (LSP) was developed as part of this project to provide a reliable client-server communication layer over the UDP protocol. UDP, while efficient for fast data transmission, lacks the built-in reliability mechanisms present in TCP. To address this, LSP incorporates features to overcome common issues in UDP-based communication, such as packet loss, duplication, and corruption, thereby enabling error-free, sequential message delivery.

<ul>
    <li>
        <strong>Reliable Message Delivery:</strong> The protocol uses acknowledgment (Ack) and cumulative acknowledgment
        (CAck) messages to confirm message delivery and maintain the correct sequence, ensuring all messages are received
        in order.
    </li>
    <li>
        <strong>Sliding Window Flow Control:</strong> A sliding window mechanism controls the flow of unacknowledged messages,
        preventing network congestion by aligning message transmission with acknowledgment rates.
    </li>
    <li>
        <strong>Epoch-Based Retransmission System:</strong> By utilizing epoch timers, LSP detects lost messages and
        initiates retransmissions. This system also manages connection timeouts and sends regular heartbeat signals to
        maintain active connections.
    </li>
    <li>
        <strong>Data Integrity Verification:</strong> LSP applies a checksum to every message, allowing detection and
        rejection of corrupted messages. This feature ensures that only complete and accurate data is processed,
        maintaining high data integrity.
    </li>
</ul>

The result is a robust protocol layer that combines the speed of UDP with the reliability of TCP, suitable for applications requiring reliable, real-time client-server communication.

---

## TCP + TCP Reno (15-441)

TCP protocol implemented in C, with Reno congestion control.

TCP is a transport layer protocol that enables processes on different devices to communicate reliably. TCP's beauty
stems from its ability to give applications a simple abstraction with strong guarantees, even though the underlying
network only provides best-effort delivery.

This project includes the following components of TCP:

<ul>
    <li>
        <strong>Start and Teardown:</strong> TCP three-way handshake and connection teardown via FIN
    </li>
    <li>
        <strong>Sliding Window:</strong> Transmit multiple packets before an ACK by using a fixed window size
    </li>
    <li>
        <strong>Reliable Retransmission (include option to use either Go-Back-N or Selective Retransmit):</strong>  Retransmit packets after a timeout (Go-Back-N and Selective Retransmit), on duplicate ACKs (Selective Retransmit), etc.
    </li>
    <li>
        <strong>Flow Control:</strong> Advertised window
    </li>
    <li>
        <strong>Congestion Control:</strong> TCP Reno
    </li>
</ul>

`TCP Routine`<br>

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/440_441/tcp/tcp_routine.png" title="tcp_routine" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    (Extracted from https://www.cs.uni.edu/~diesburg/courses/cs3470_fa19/projects/p4-tcp.html)
</div>

`TCP Reno`<br>

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/440_441/tcp/tcp_reno.png" title="tcp_reno" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    (Extracted from 15441 slides haha)
</div>

---

## Liso Server - HTTP 1.1 (15-441)

A Liso web server supporting HTTP 1.1 at the application layer, and a smart client able to parallelly process and request files based on a lineage graph.

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

---

## Mix Network - Mixnet (15-441)

A distributed network layer algorithm to establish reliable, efficient, and secure communication between nodes in the network.

The Mix Network (Mixnet) project aims to create a privacy-preserving network overlay that enables anonymous communication by obscuring both the message content and the identities of communicating parties.

`Key Features`

<ul>
    <li><strong>Encryption:</strong> Ensures that any intercepted messages are unintelligible without proper decryption, keeping message contents secure.</li>
    <li><strong>Redirection:</strong> Messages are relayed through intermediate nodes to hide the source and destination, making it difficult for observers to link senders and recipients.</li>
    <li><strong>Mixing:</strong> Nodes delay and batch messages before forwarding, further concealing the source-destination pairings from observers.</li>
</ul>

`Network Architecture`

<ul>
    <li>Composed of interconnected nodes that operate as both sources and forwarders, Mixnet forms an undirected graph where nodes are linked to each other.</li>
    <li>Each node uses a combination of shortest-path and random routing strategies to relay messages, balancing efficiency and privacy.</li>
    <li>Mixnet uses the Spanning Tree Protocol (STP) to create a loop-free topology, enabling safe and efficient broadcast of control messages across the network.</li>
</ul>

`Packet Structure`<br>
Mixnet packets contain a standardized header and payload, with various packet types (STP, FLOOD, LSA, DATA, PING) supporting routing, control, and communication functions.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/440_441/mixnet/overview.png" title="algorithm flow" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Mixnet Packet Flow
</div>
