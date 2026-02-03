# 🌐 GlobalSend DevOps Pipeline  
**Automated Multi-Environment Deployment | Terraform, Azure App Service, GitHub Actions**

---

## 🚀 Overview
GlobalSend is a money transfer web application deployed across multiple Azure environments using **Terraform** and **GitHub Actions**. The pipeline implements a **Blue-Green deployment strategy** for zero-downtime production releases.

**Key Outcomes:**
- Predictable, secure, and scalable multi-environment deployment  
- Developer-first automation via **PowerShell + GitHub Actions**  
- Terraform Infrastructure as Code for reproducible environments  
- Zero-downtime releases with Blue-Green production deployment  

---


## 🏗 Architecture

**End-to-End Flow:**  

Local Dev → PowerShell → GitHub → GitHub Actions → OIDC → Terraform → Dev → Staging → Azure → Users  

---

### Architecture Diagram


### Architecture Diagram
![Architecture Diagram](./assets/globalsend.gif)

---

## ⚡ Key Components

| Component | Technology | Purpose |
|-----------|------------|---------|
| Frontend Application | HTML5, CSS3, JavaScript | Money transfer interface with live calculator |
| Infrastructure | Terraform | Azure resource provisioning |
| Hosting | Azure App Service | Web application hosting |
| Storage | Azure Storage Account | ZIP package deployment |
| CI/CD | GitHub Actions | Automated, environment-aware pipeline |
| Deployment Strategy | Blue-Green | Zero-downtime production releases |
| Automation | PowerShell | Local validation, branch promotion, deployment |

---

---

## 🔧 Multi-Environment Strategy

| Environment | Branch | Deployment Trigger |
|------------|--------|------------------|
| Development | dev | Push to dev branch |
| Staging | staging | Merge dev → staging |
| Production | main | Blue-Green deployment |

**Pipeline Features:**
- Branch-based environment detection  
- OIDC authentication for dev  
- Service Principal authentication for staging/prod  
- Automated Terraform plan & apply  
- Smoke tests and Blue-Green swap for production  

---

---
## 🗂 Project Structure

| Folder | Purpose |
|--------|---------|
| /app | Frontend code (HTML, CSS, JS) |
| /assets | Images and icons |
| /scripts | PowerShell automation & deployment |
| /terraform | Infrastructure as Code & modules |
| /.github/workflows | CI/CD pipeline YAMLs |
| README.md | Project overview |


---

## 🛡 Security & Best Practices
- **OIDC Authentication:** Passwordless Azure login for development  
- **Service Principals:** Secure credentials for staging & production  
- **Environment Isolation:** Separate Azure subscriptions per environment  
- **Network Security:** Managed via Azure App Service built-in protections  

---

## 📬 Contact
For questions about this DevOps pipeline or cloud architecture best practices, feel free to reach out.  

**Last Updated:** February 2026 | GlobalSend Money Transfer Application


## License
📜 License Licensed under MIT License.
