# 🚀 DevOps Projects

This portfolio consists of five integrated and progressive DevOps projects. Each project is designed to simulate a realistic environment and demonstrate core competencies required for CloudOps, DevOps, and GitOps engineering roles.

## 🔧 Tech Stack Covered

- **CI/CD:** GitHub Actions, ArgoCD, Jenkins (optional)
- **IaC:** Terraform, Ansible
- **Containers:** Docker, ECS
- **Orchestration:** Kubernetes
- **AWS Services:** EC2, VPC, ALB, IAM, S3, CloudWatch, ECR
- **Security & Cost Mgmt:** Secrets Manager, IAM, Budget alerts

---

## 📦 Portfolio Structure

```bash
📂 devops-portfolio
├── 📁 terraform-ansible-vpc-infra        # Project 1
├── 📁 microservice-ci-docker             # Project 2
├── 📁 ecs-deploy-iac                     # Project 3
├── 📁 gitops-argo-k8s                    # Project 4
├── 📁 aws-observability-secure-costs    # Project 5
└── README.md                            # This file

---

| ✅ Project | Title                                              | Description                                                                                                               | 🧱 Tech Stack                                                   |
|------------|----------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
| Project 1  | Modular Infrastructure on AWS with Terraform + Ansible | Provision EC2 and VPC infrastructure using Terraform, and configure instances via Ansible.                                | Terraform, Ansible, AWS EC2, VPC, GitHub Actions                |
| Project 2  | Microservice with Docker + CI/CD                   | Build and test a containerized app with GitHub Actions. Integrate unit/lint/test stages and Docker Hub or ECR push.       | Docker, GitHub Actions, Python/Node.js, Docker Hub or ECR      |
| Project 3  | ECS Deployment with Infrastructure as Code         | Deploy the container to AWS ECS using Terraform, load balancing with ALB and auto-scaling groups.                         | Terraform, ECS, ALB, Auto Scaling Groups, IAM                   |
| Project 4  | GitOps with Kubernetes + ArgoCD                    | Declaratively manage Kubernetes deployments with GitOps practices, applying security and resource policies.               | Kubernetes, ArgoCD, Helm, GitHub, Kustomize                     |
| Project 5  | Observability and Security on AWS                  | Monitor resources using CloudWatch and manage secrets, IAM roles, and cost controls programmatically.                     | CloudWatch, IAM, Secrets Manager, Cost Explorer, Boto3         |

