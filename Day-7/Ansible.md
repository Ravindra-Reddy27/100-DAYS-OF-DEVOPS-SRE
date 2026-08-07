# Ansible

## What is need of Ansible

Imagine you have 100 Linux servers and you need to install nginx.

Without Ansible:

SSH into Server 1 → Install Nginx

SSH into Server 2 → Install Nginx

...

Repeat 100 times

This is slow, repetitive, and prone to mistakes.

With Ansible:

Write one playbook.

Run a single command.

Ansible connects to all 100 servers via SSH and installs Nginx automatically.

---


## What is anisble:

Ansible is a toole to automate IT tasks such as server configuration, software installation, application deployment, and infrastructure management. Instead of manually logging into each server and running commands, you write the steps once and let Ansible execute them on all target servers.

![ansible](Images/ansible-diaram.svg)


## Control Node:

The Control Node is the machine where Ansible is installed and from which you run Ansible commands. It acts like the manager that tells managed nodes what to do.

## Managed nodes:

Managed nodes are the remote servers that Ansible manages and configures by executing tasks on them.

## Inventory:

Inventory is a file that contains the list of managed nodes (hosts) and their groups. It tells Ansible which servers to connect while exectuing playbooks and ad hoc commands.

Eg:
``` bash
[web]
192.168.1.10
192.168.1.11

[database]
192.168.1.20
```

## Playbook:

A Playbook in Ansible is a YAML file that contains a set of tasks Ansible should execute on managed nodes.

Eg:
```bash
- hosts: web
  tasks:
    - name: Install Nginx
      yum:
        name: nginx
        state: present
```
---

## Why we need ansible over shell scripting?

- Shell scripting is suitable for simple automation on a few servers, but as the number of servers and tasks grows, scripts become difficult to maintain and scale.
- Manual error handling.
- No parallel execution only sequential execution by default.

- Ansible provides a structured, scalable, and reliable way to automate infrastructure.
- Built-in error handling and reporting.
- Parallel execution.

> Ansible can manage Ubuntu, Debian, Amazon Linux, RHEL, CentOS, Rocky Linux, and even Windows from a single playbook.

---

## Basic prerequisites for ansible:

- A Control Node with Ansible installed.

- Managed Nodes with SSH (Linux) or WinRM (Windows). [SSH is used by Ansible to securely connect to Linux managed nodes because Ansible is agentless.]

- Python installed on Linux managed nodes. [ Python is required because most Ansible modules are written in Python and are executed on the managed nodes to perform tasks and return results.]

---

## What can we do with the ansible:

- Configuration of servers.

- Infrastructure management.

- Application deployment.

- Networking automation.

---

## Why should I use ansible over python ?

- You have strong knowledge on python or error handling result reporting.
- You have good at the python scripiting and update with new python versions.
- You have to maintain script.

- Ansible you have to only YAML no prior programming knowledge.
- Ansible will give Idempotency.

## How to install in my system ?

- By using `pip install ansible` command.

> If your system is windows,first install WSL (Windows Subsystem for Linux) then install ansible.