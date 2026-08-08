## Passwordless Authentication:

Passwordless authentication in Ansible means Ansible can log in to a managed node without asking for the user's password every time. It is typically done using SSH key-based authentication.

It is done by two ways.

1. **SSH Key-based Authentication (Recommended)**
2. **Password-based Authentication**

### 1.SSH Key-based Authentication (Recommended)

```bash

ssh-copy-id -f "-o IdentityFile <PATH TO PEM FILE>" ubuntu@<INSTANCE-PUBLIC-IP>

```
***ssh-copy-id***= It copies control node public ssh key to manage node.

***-f*** = force (If key already present on the managed node with -f it copies again to the managed node.)

***-o IdentityFile PATH TO PEM FILE*** = Use the Private PEM file of managed node to authenticate to it.

***ubuntu*** = Username on the managaed node.

***INSTANCE-PUBLIC-IP*** = Public Ip of the managed node.

### 2.Password-based Authentication

> This below steps example for SSH based login servers.

* Login to the managed node.
* Change the ***sshd_config*** with sudo user
```
sudo nano or vim  /etc/ssh/sshd_config
```
* Uncomment the line `PasswordAuthentication Yes`
* Save & Close the file.
* Do `sudo passwd ubuntu` for create new password for ubuntu user.
* From the control node:
```
ssh-copy-id ubuntu@PUBLIC_IP
```
* It Asked the password, enter the password earlier created.
* Completed

**NOTE:** In the both ways, the ssh public key of control node is copied into the managed nodes to connect it with any password.

Next time connection `ssh ubutnu@PUBLIC_IP` no password requied, no private key requied(At the time of Instance created key file).

---
## Why we are doing this:

Ansible connects to managed nodes using **SSH**. Instead of asking for a password every time it runs:

```bash
ssh ubuntu@PUBLIC_IP
```

Ansible uses an **SSH key pair**. Once the public key is added to the managed node (using `ssh-copy-id` or manually), SSH automatically authenticates using the corresponding private key on the control node.







