---
layout: page
title: Mix Network (Mixnet)
description: A distributed network layer algorithm to establish reliable, efficient, and secure communication between nodes (ends) in the network.
img: assets/img/projects/mixnet/broadcaststorm.png
importance: 2
category: Computer Systems and Networks
---

The Mix Network (Mixnet) project aims to create a privacy-preserving network overlay that enables anonymous communication by obscuring both the message content and the identities of communicating parties. The project uses fundamental techniques like encryption, message redirection, and mixing to provide a degree of anonymity against potential eavesdroppers.

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
    <li>The project includes two primary routing strategies:
        <ul>
            <li><strong>Shortest-Path Routing:</strong> Nodes compute the shortest paths using a link-state algorithm and propagate messages directly over these paths.</li>
            <li><strong>Random Routing:</strong> Nodes select non-direct paths to introduce randomness, thus enhancing privacy by creating uncertainty in message paths.</li>
        </ul>
    </li>
</ul>


`Packet Structure`<br>
Mixnet packets contain a standardized header and payload, with various packet types (STP, FLOOD, LSA, DATA, PING) supporting routing, control, and communication functions. Packets must adhere to the specified structure to ensure compatibility and correct handling across the network.
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/mixnet/overview.png" title="aglorithm flow" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Mixnet Packet Flow
</div>

`Implementation`
<ul>
    <li>Developed in C, the project requires implementing control-plane functions for STP (Spanning Tree Protocol) to prevent broadcast storms and establish a loop-free topology.</li>
    <li>Nodes must manage packet routing, including neighbor discovery and route computation, using the link-state algorithm for efficient shortest-path routing.</li>
    <li>The implementation includes handling link failures and ensuring robust routing even in network disruptions.</li>
</ul>

`Evaluation`
<ul>
    <li>The Mixnet is evaluated based on functional correctness through automated test cases and performance metrics on network topologies using Amazon EC2 servers.</li>
    <li>Metrics such as STP convergence time, message exchange volume, and round-trip times across various network topologies provide insights into the system's efficiency and scalability.</li>
</ul>

Overall, the Mixnet project demonstrates a simplified yet foundational approach to creating anonymous communication networks. It provides hands-on experience with privacy-enhancing routing techniques and network protocol design while emphasizing the importance of evaluating system performance in practical, real-world scenarios.
           
