# Docker + nginx · AWS EC2

> Containerized web server deployed on a live AWS EC2 instance using Docker and nginx — configured and maintained entirely from scratch.

![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![nginx](https://img.shields.io/badge/nginx-009639?style=flat&logo=nginx&logoColor=white)
![AWS](https://img.shields.io/badge/AWS_EC2-FF9900?style=flat&logo=amazonaws&logoColor=white)
![Linux](https://img.shields.io/badge/Amazon_Linux-232F3E?style=flat&logo=linux&logoColor=white)
![Status](https://img.shields.io/badge/status-live-brightgreen?style=flat)

---

## 📌 Overview

Real-world infrastructure project built to practice DevOps fundamentals.
A static website served through **nginx inside a Docker container**, running on a live **AWS EC2** instance with persistent storage and custom networking.

No tutorials followed step-by-step — built by doing, breaking, and fixing.

---

## 🛠 Stack

| Layer | Technology |
|-------|------------|
| ☁️ Cloud | AWS EC2 — t3.micro, Amazon Linux 2023 |
| 🐳 Container | Docker, Docker Compose |
| 🌐 Web Server | nginx |
| 🔒 Networking | AWS VPC, Security Groups |
| 🗂 Version Control | Git, GitHub |

---

## 📁 Structure
docker-practice/
├── docker-compose.yml   — service orchestration
├── nginx/
│   └── nginx.conf       — custom server configuration
└── html/
└── index.html       — static site content

---

## ⚡ Quick Start

```bash
# Clone
git clone https://github.com/Ice1One/docker-practice.git
cd docker-practice

# Run
docker-compose up -d

# Verify
curl http://localhost:80
```

---

## 🔍 What's Inside
AWS EC2 Instance (Amazon Linux 2023)
└── Docker Compose
└── nginx container
├── Custom nginx.conf
├── HTML served via Volume
└── Port 80 → public access
---

## ✅ Skills Demonstrated

| Skill | Details |
|-------|---------|
| Dockerfile | Multi-layer builds with caching optimization |
| Docker Compose | Service definition, dependency management |
| Volumes | Data persistence across container restarts |
| Networks | Container-to-container communication |
| nginx | Static content, custom configuration |
| AWS EC2 | Instance setup, Security Groups, SSH access |
| Debugging | `docker logs`, `docker exec`, `docker inspect` |

---

**Marko Zvarych** · [github.com/Ice1One](https://github.com/Ice1One)
