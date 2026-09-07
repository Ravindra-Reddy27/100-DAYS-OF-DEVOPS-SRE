## Day 31/100 – ConfigMap & Secrets in K8s

## ConfigMap

A ConfigMap in Kubernetes is an object used to store non-sensitive configuration data separately from your application code and container image.

* It store data in key-value pair format.

* *Common Use Cases:* App name, port, log level, URLs

* We need ConfigMap to decouple environment-specific configuration from your container images, allowing your applications to remain highly portable. i.e., No hardcoding of environment variables in the application code.

* ConfigMaps are used when an application running inside a Pod needs configuration values that may change between environments or deployments.


Eg:

```
apiVersion: v1
kind: ConfigMap
metadata:
  name: app-config

data:
  APP_ENV: production
  DB_HOST: mysql-service
  DB_PORT: "3306"
  LOG_LEVEL: info
```


### How Pods Consume ConfigMaps

There are multiple ways Pods consume ConfigMaps:

***1. Environment Variables :***

 The key-value pairs are injected into the container shell as environment variables, which your application reads at startup.

 Reference:

 ```
 containers:
  - name: app
    image: myapp:1.0
    envFrom:
      - configMapRef:
          name: app-config
 ```
Kubernetes then creates environment variables inside the container as key-value pair `APP_ENV: production, DB_HOST: mysql-service`.

***2. Mounted Files (Volumes):***

The ConfigMap can be mounted into the container as a read-only directory. In this case, each key becomes an individual file name, and the value becomes the file's content.

* It is common for applications such as Nginx, Prometheus, and other software that relies heavily on configuration files.

Reference:

```
volumes:
  - name: config-volume
    configMap:
      name: app-config

containers:
  - name: app
    image: myapp:1.0
    volumeMounts:
      - name: config-volume
        mountPath: /etc/app
```

### Limitations

* No Encryption
* Size limit cannot exceed 1 MiB in size because they are stored inside the etcd cluster database.
* Updates & Restarts ( Automated with Mounts & Manual restart with the env variables).

## Secrets

A Secret in Kubernetes is an object used to store sensitive information that applications need at runtime. 

* *Common Use Cases:* Storing database passwords, OAuth tokens, API keys, SSH keys, and TLS certificates.

* *Storage Format:* By default, data inside a Secret is stored as Base64-encoded strings within the cluster's etcd database.

* Base64 only provides encoding, not security. Using the RBAC we can provide security.

* It Supports Different Secret Types

Opaque — general-purpose Secret
kubernetes.io/tls — TLS certificates
kubernetes.io/dockerconfigjson — container registry credentials
kubernetes.io/basic-auth — basic authentication credentials


* Kubernetes supports configurable encryption providers, such as `aescbc, secretbox, kms` for encryption.

Eg:

```
apiVersion: v1
kind: Secret
metadata:
  name: db-secret
type: Opaque
stringData:
  username: admin
  password: mypassword123
```

***Pods consume the secrets as same ConfigMaps ***


## ConfigMap vs Secret

| Feature | ConfigMap | Secret |
|---|---|---|
| **Purpose** | Store non-sensitive configuration | Store sensitive information |
| **Examples** | App name, port, log level, URLs | Passwords, API keys, tokens |
| **Base64 encoding** | ❌ No | ✅ Usually |
| **Encryption** | ❌ Not encrypted by default | ❌ Not encrypted by default* |
| **Stored in etcd** | ✅ Yes | ✅ Yes |
| **Environment variables** | ✅ | ✅ |
| **Volume-mounted files** | ✅ | ✅ |
| **RBAC access control** | ✅ | ✅ |
| **Namespace scoped** | ✅ | ✅ |
| **Can be updated** | ✅ | ✅ |