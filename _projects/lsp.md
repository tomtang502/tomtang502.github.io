---
layout: page
title: Live Sequence Protocol (LSP)
description: A distributed transport layer protocol with both features from TCP and UDP.
img: assets/img/projects/lsp/epevent.png
importance: 3
category: Computer Systems and Networks
---

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

The result is a robust protocol layer that combines the speed of UDP with the reliability of TCP, suitable for applications requiring reliable, real-time client-server communication. LSP efficiently detects, recovers from, and mitigates disruptions in data transmission, making it an ideal solution for systems where maintaining data integrity and order are essential.

The resulting LSP has the following features in addition to TCP/UDP:
<ul>
  <li>Unlike UDP or TCP, it supports a client-server communication model.</li>
  <li>The server maintains connections between a number of clients, each of which is identified by a numeric connection identifier.</li>
  <li>Communication between the server and a client consists of a sequence of discrete messages in each direction.</li>
  <li>Message sizes are limited to fit within single UDP packets (around 1,000 bytes).</li>
  <li>Messages are sent reliably: a message sent over the network must be received exactly once, and messages must be received in the same order they were sent.</li>
  <li>Message integrity is ensured: a message sent over the network will be rejected if modified in transit.</li>
  <li>The server and clients monitor the status of their connections and detect when the other side has become disconnected.</li>
</ul>

This project is done as part of the course project at CMU 15440.