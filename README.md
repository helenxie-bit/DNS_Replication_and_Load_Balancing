# Project Description
This project aims to develop a DNS system with multiple name servers, employing data replication and load balancing to effectively mitigate DoS attacks.


# Implement Steps
## Step1: Build DNS Servers
Build DNS servers using [BIND9](https://bind9.readthedocs.io/en/v9.18.20/index.html) on multiple Virtual Machines, comprising a primary name server and multiple secondary name servers.

## Step2: Data Replication
Replicate data from the primary server to secondary servers by Zone Transfer.

## Step3: Load Balance
Implemente a load balancer utilizing [NGINX](https://www.nginx.com), distributing traffic across servers based on preset rules to proactively defend against DoS attacks.


# Simulation Results
During simulation attacks involving a high volume of queries in a short time, our system maintained a 100% response rate, outperforming the baseline scenario of single server that began to exhibit response failures.
