# 🛡️ Container Image Scanning & Hardening (DevSecOps Lab)

This project demonstrates how to:
- Build a hardened Docker image using multi-stage builds and distroless base images.
- Scan the image for vulnerabilities using **Trivy** and **Grype**.
- Generate **SARIF** reports and upload them to **GitHub Code Scanning** for centralized visibility.

## 🧰 Tools Used
- **Trivy** — Vulnerability scanner for containers and SBOM generator  
- **Grype** — CLI vulnerability scanner for container images  
- **GitHub Actions** — CI automation pipeline  
- **Distroless Images** — Minimal runtime base for better security

## 🚀 Workflow Overview
1. Build the Docker image
2. Scan it with Trivy & Grype
3. Upload SARIF reports to GitHub Code Scanning

## 🧩 Hardening Measures
- Multi-stage Docker builds
- Distroless base image (no shell)
- Non-root user
- Minimal attack surface

---

🔗 **Part of my ongoing DevSecOps Lab series**
1️⃣ Snyk SCA — Dependency scanning  
2️⃣ Checkov — IaC scanning  
3️⃣ OWASP ZAP — DAST  
4️⃣ Trivy + Grype — Image scanning & hardening  