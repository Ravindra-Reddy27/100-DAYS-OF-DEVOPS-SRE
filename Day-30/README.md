## Day 30/100 – Ingress in K8s


## Ingress

Ingress is a Kubernetes API object that defines rules for routing external HTTP/HTTPS traffic to services inside a Kubernetes cluster.

* Ingress mainly needed because we often have multiple applications/services inside a Kubernetes cluster, and we want to expose them through a common entry point with routing rules.

* Without Ingress we need to expose services need a separate public IP address or load balancer. 

*  Ingress sits in front of multiple services and route traffic to multiple services as a single entry point.

* Ingress mainly supports two important types of routing:
    * Path-based routing -   Routing is based on the URL path.
        
        ```
        example.com/app1  → app1-service
        example.com/app2  → app2-service
        example.com/api   → api-service
        ```
    * Host-based routing - Routing is based on the hostname/domain.
        ```
        app1.example.com → app1-service
        app2.example.com → app2-service
        api.example.com  → api-service
        ```
* *Ingress Resource* is a YAML configuration file defining the routing rules

Eg: [Ingress Resource]

    ```
    apiVersion: networking.k8s.io/v1
    kind: Ingress
    metadata:
    name: simple-fanout-ingress
    annotations:
        kubernetes.io/ingress.class: "nginx"

    spec:
    rules:
    - host: example.com
        http:
        paths:

        - path: /video
            pathType: Prefix
            backend:
            service:
                name: video-service
                port:
                number: 8080

        - path: /image
            pathType: Prefix
            backend:
            service:
                name: image-service
                port:
                number: 8080
    ```

The rules mean:

```

example.com/video → video-service:8080

example.com/image → image-service:8080
```


Because you use:
```
pathType: Prefix
```
/video can match paths such as:
```
/video
/video/
/video/movie.mp4
/video/abc
```


**NOTE:**

***Ingress only defines the routing rules; the Ingress Controller actually implements those rules and routes the traffic.***

## Ingress Controller.

An Ingress Controller is a Kubernetes component that receives external HTTP/HTTPS traffic and routes it to the appropriate Kubernetes Services based on rules defined in an Ingress resource.

* It is the actual software that perform the routing.

* It watches the Kubernetes API server for changes or new rules added to Ingress objects

* Popular Ingress Controllers:

    1. NGINX Ingress 
    2. Traefik
    3. HAProxy
    4. Kong

**By Default K8s does not bundle an Ingress Controller by default, meaning you must choose and install one.**


**Kubernetes does not include a default Ingress Controller because infrastructure variations, business competition, and architectural separation make a single default impossible. These controllers are commonly available as open-source projects and can be installed in a Kubernetes cluster based on your needs.**

> I'm currently using Kind. Kind does not automatically install an Ingress Controller for me.



### Ingress vs Ingress Controller

| **Ingress** | **Ingress Controller** |
|---|---|
| Kubernetes API resource | Actual running software |
| Contains routing rules | Implements those rules |
| Defines **what should happen** | Decides **how to make it happen** |
| YAML configuration | Usually Pods/Deployment |
| Example: `/app1 → service1` | NGINX, Traefik, HAProxy, etc. |



**Flow:**
```

                    Internet
                       |
                       | HTTP/HTTPS
                       v
             Ingress Controller
              (NGINX / Traefik...)
                       |
                Reads Ingress
                    rules
                       |
          +------------+------------+
          |                         |
       /video                    /image
          |                         |
          v                         v
   video-service              image-service
          |                         |
          v                         v
     Video Pods                Image Pods
```