# My-Server-Scripts
When setting up a fresh server, having a reliable set of installation scripts can save significant time and ensure consistency. Below are the core components I typically install on a new Debian or Ubuntu server.

**Instructions:**
**Usage:**
Once you’ve cloned or downloaded the repository, grant execute permissions with `sudo chmod +x server.sh` and then start the script by running `./server.sh`.

Here’s what the script includes.

---

### 1. Docker CE

Docker is an open platform for building, shipping, and running applications using containerization. It enables developers to bundle an application along with all its dependencies — including code, runtime, system tools, libraries, and configuration — into a standardized unit called a container. This ensures the application runs consistently across different environments.

Documentation: [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/)

---

### 2. Portainer CE

Portainer Community Edition is a lightweight, open-source management platform that provides a graphical user interface (GUI) for managing Docker, Docker Swarm, Kubernetes, and Azure ACI environments. It simplifies container management by replacing complex command-line operations with an intuitive dashboard, making it easier to deploy, monitor, and manage applications.

Documentation: [https://docs.portainer.io/start/install-ce/server/docker/linux](https://docs.portainer.io/start/install-ce/server/docker/linux)

---

### 3. Casa OS

CasaOS is a free, open-source, and beginner-friendly personal cloud management system based on the Docker ecosystem, designed to transform, for example, a Raspberry Pi or old PC into a smart home server. It acts as a graphical interface on top of existing operating systems (like Debian or Ubuntu), allowing users to install, manage, and share apps and files with one click. 

Documentation: https://casaos.zimaspace.com/

---

### 4. Btop

Btop (or btop++) is a fast, interactive, and visually appealing command-line resource monitor for Linux, macOS, and FreeBSD that displays real-time stats for processor, memory, disks, network, and processes. Written in C++, it is the successor to bashtop and bpytop, featuring a game-inspired menu system, mouse support, and highly responsive, auto-scaling graphs. 

Documentation: https://github.com/aristocratos/btop

---

### 5. Nala

Nala is a modern, open-source command-line frontend for the apt package manager, designed for Debian-based Linux distributions (Ubuntu, Mint, etc.) to provide faster, more readable, and feature-rich package management. It improves on apt by offering parallel downloads, a detailed history/undo function, and a cleaner user interface. 

Documentation: https://github.com/volitank/nala

---

### 6. duf

Duf (Disk Usage/Free) is a modern, open-source command-line utility for Linux, macOS, and Windows written in Go that provides a user-friendly, colorful, and tabulated overview of disk space usage. It acts as a better-looking alternative to the traditional df command, offering automatic column width adjustment, sorting, and filtering options to easily visualize available storage. 

Documentation: https://github.com/muesli/duf

---

### 7. FastFetch

Fastfetch is a high-performance, customizable command-line system information tool written in C, designed as a faster, modern alternative to Neofetch. It displays system details—like OS, kernel, uptime, and memory—alongside a logo, supporting Linux, macOS, Windows, and BSD. 

Documentation: https://github.com/fastfetch-cli/fastfetch

---

### 8. OpenSSH-Server

OpenSSH Server (sshd) is an open-source application that enables secure, encrypted remote access and file transfers to a machine using the SSH protocol, replacing insecure tools like Telnet. It runs as a background service, authenticating users and facilitating secure shell sessions, SCP file transfers, and SFTP. 

Documentation: https://documentation.ubuntu.com/server/how-to/security/openssh-server/

---

### 9. Linux Aleas

A Linux alias is a shortcut or an abbreviation for a longer command, command sequence, or file path. It is a feature of the shell (such as Bash) that allows users to save time, improve productivity, and reduce typing errors for frequently used or complex commands. 

Documentation: https://medium.com/thenixos/what-is-linux-alias-and-how-do-you-use-it-57fb17a69764

---

















