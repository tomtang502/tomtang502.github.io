---
layout: page
title: TCP + TCP Reno (TCP Reno)
description: TCP protocol implemented in C, with Reno congestion control.
img: assets/img/projects/tcp/tcp_header.png
importance: 3
category: Computer Systems and Networks
---

TCP is a transport layer protocol that enables processes on different devices to communicate reliably. TCP’s beauty
stems from its ability to give applications a simple abstraction with strong guarantees, even though the underlying
network only provides best-effort delivery. Best effort delivery means that packets can be lost, duplicated, reordered,
and that there is no guarantee that the bandwidth available will remain the same (due to changes in the network
itself or interference from other traffic). TCP on the other hand assures applications that their data will be delivered
in order, uncorrupted, and that transmissions will be paced to avoid overwhelming the network (congestion control)
or the application on the other end of the connection (flow control). It also aims to be fair, trying to give an equal
share of bandwidth to multiple senders that share the same link.

This project include the following component of TCP
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
        <strong>Flow Control:</strong> Just a advertised window
    </li>
    <li>
        <strong>Congestion Control:</strong> TCP Reno
    </li>
</ul>

`TCP Routine`<br>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/tcp/tcp_routine.png" title="tcp_routine" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    (Extracted from https://www.cs.uni.edu/~diesburg/courses/cs3470_fa19/projects/p4-tcp.html)
</div>


`TCP Reno`<br>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/projects/tcp/tcp_reno.png" title="tcp_reno" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    (Extracted from 15441 slides haha)
</div>

This project is done as part of the course project at CMU 15441.