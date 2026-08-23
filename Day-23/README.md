## Day 23/100 – Need of K8s(Kubernetes) & K8s basics

### Kubernetes

Kubernetes is open-source container orchestration platform that automates deploying, scaling, managing containerized applications automatically.

### Need Of K8s

First, we can understand the limitations of running containers directly with Docker:

* single machine hositng

* No self-healing of containers

* No auto scaling of containers.

* Manual management.

* Manage 100's containers with docker is hassel process.

* Difficult rolling deployments

To overcome all this issue K8s came into picture.

Kubernetes overcomes these problems by providing:

* Self-healing

* Auto-scaling.

* Cluster management.

* Zero-downtime rolling deployments.


### Kubernetes Basics

### 1. Cluster:
A cluster is a group of machines(called nodes) managed by Kubernetes.
* The cluster is the entiere environment where your application are deployed and managed.
* Cluster is divided into 2 parts:
- Control Plane
- Worker Nodes

### 2. Control Plane:
The Control Plane is the brain of Kubernetes. It detects system events, and schedules applications to run on your worker nodes.

It contains API server, Scheduler, Controller Manager, and etcd. We will learn all this in the K8s architecture.

### 3. Worker Nodes:
Worker nodes are the physical servers or virtual machines that do the actual work of running your application containers.

It contains Kubelet, kube-proxy, and Container Runtime. We will learn all this in the k8s architecture.

### 4. Pod:

Pod is a smallest unit in k8s that wraps one or more Containers and runs them together.

* Pods are ephemeral.

* All containers inside a Pod share the same network namespace and IP address, and can communicate with each other using `localhost`.

### 5. Namespace

Namespace logically separates resources inside a cluster.

* It allows you to organize, isolate, and divide cluster resources among different users, teams, or environments.

* It helps in `development`, `testing` and `production` stages. To run them in the single cluster.


For reference:

![info](Images/info.png)