# Production-Ready Kubernetes Microservices Stack (GCP Edition)

This project demonstrates a fully self-contained, production-ready microservices architecture deployed on Google Cloud Platform using Kubernetes and GitOps practices.

## 📌 Overview

This repository showcases a modern cloud-native stack that includes:

- ✅ Four custom-built microservices (Auth, User, Product, Frontend)
- 🚀 Kubernetes deployment with GitOps via Argo CD
- 🔐 Vault-based secrets management
- 📊 Full observability (Prometheus, Grafana, Loki, Alertmanager)
- 🌐 Ingress and service mesh with TLS and traffic routing
- ⚙️ Infrastructure provisioning via Terraform

All services and infrastructure are deployed on **Google Kubernetes Engine (GKE)**.

---

## 🧱 Architecture

```
                +--------------------+
                |  GCP (Terraform)   |
                +--------------------+
                          |
                          V
                     +--------+
                     |  GKE   |
                     +--------+
                          |
     +------------+-------+--------+------------+
     |            |                |            |
+---------+  +-------------+  +-------------+  +---------+
| frontend|  | auth-service|  | user-service|  | product |
+---------+  +-------------+  +-------------+  +---------+
     |               |                |             |
     +---Ingress & Service Mesh (Istio or Linkerd)--+
                          |
                   Observability Stack
         (Prometheus, Grafana, Loki, Alertmanager)
```

---

## 📦 Services

| Service         | Description                            | Language     |
|-----------------|----------------------------------------|--------------|
| `auth-service`  | Handles login, JWT issuance/refresh    | TBD (Go/FastAPI) |
| `user-service`  | Manages user profile and preferences   | TBD |
| `product-service` | Product catalog API                  | TBD |
| `frontend`      | Frontend UI or API Gateway             | TBD |

---

## ☁️ Cloud Stack

| Layer                  | Tool/Platform                    |
|------------------------|----------------------------------|
| Cloud Provider         | Google Cloud Platform (GCP)      |
| Container Orchestration| GKE (Google Kubernetes Engine)   |
| GitOps                 | Argo CD                          |
| Infrastructure as Code | Terraform                        |
| Observability          | Prometheus, Grafana, Loki        |
| Service Mesh           | Istio or Linkerd                 |
| Ingress                | NGINX Ingress Controller         |
| Secrets Management     | HashiCorp Vault or Sealed Secrets|

---

## 📂 Project Layout

- `apps/` — Source code for each microservice
- `manifests/` — Kubernetes manifests or Helm charts
- `argo-cd/` — Argo CD application definitions
- `observability/` — Monitoring and logging stack
- `infra/` — Terraform modules to provision GCP infrastructure
- `scripts/` — CLI automation scripts
- `docs/` — Diagrams and documentation

---

## 🛠️ Getting Started (Coming Soon)

This section will include:
- GCP setup (IAM, billing, APIs)
- Terraform deployment steps
- Bootstrapping Argo CD
- Deploying services via GitOps

---

## ✅ Goals

- Be **production-representative** but deployable by a single engineer
- Prioritize **security, observability, and scalability**
- Make the project **easy to fork, study, and demo**

---

## 🧠 Status

Project scaffolding complete. Service implementation and infrastructure setup in progress. Stay tuned!

---

## 👤 Author

Tyler MacPherson  
DevOps | SRE | Cloud Engineer  
[LinkedIn](https://www.linkedin.com/in/tylermacpherson) • [GitHub](https://github.com/yourusername)

---

## 📄 License

MIT License
