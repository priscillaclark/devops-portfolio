# 🌐 Project 1: Modular Infrastructure on AWS with Terraform + Ansible

🧱 Tech Stack: Terraform, Ansible, AWS EC2, VPC, Security Groups, SSH, GitHub Actions  
🎯 Objective: Automatically provision infrastructure using infrastructure as code and remote configuration tools.

---

## 🚀 What Is Built

A reusable and modular AWS environment for development/testing, including:

- Custom VPC with public and private subnets
- Bastion host (jumpbox) with restricted SSH access
- EC2 Linux instance in a private subnet
- Security Groups with role-based rules
- Ansible provisioning:
  - Base package installation (Docker, Git, etc.)
  - Basic hardening (UFW, fail2ban, SSH config)

---

## 🗂️ Repository Structure

```bash
📁 terraform-ansible-vpc-infra
├── 📁 terraform
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── modules/
│       └── vpc/
│       └── ec2/
├── 📁 ansible
│   ├── inventory
│   ├── playbook.yml
│   └── roles/
│       └── common/
├── 📁 .github
│   └── workflows/
│       └── terraform.yml
├── README.md
```

## Prerequisites

- AWS account
- AWS CLI configured with credentials
- Terraform installed locally
- Ansible installed (or via Docker)
- SSH key available for remote access

<details>
<summary>🔧 Prerequisites Checklist and Setup Guide (for Windows Subsystem for Linux)</summary>

**1. AWS Account (Free Tier)** 
- Sign up: https://aws.amazon.com/free/ 
- Create access keys from AWS Console → IAM → Users → Security credentials → Create access key 

**2. AWS CLI Installed and Configured** 
```bash
sudo apt update && sudo apt install awscli -y
aws configure
```
Provide:

- AWS Access Key ID
- AWS Secret Access Key
- Default region (e.g., us-east-1)
- Output format (e.g., json)

**3. Terraform Installed**

```bash
sudo apt install gnupg software-properties-common curl -y
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform -y
terraform -version
```

**4. Ansible Installed**

```bash
sudo apt update && sudo apt install ansible -y
ansible --version
```

**5. SSH Key (for EC2 access)**
Check if one exists:

```bash
ls ~/.ssh/id_rsa.pub
```
If not, generate:

```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Upload your key to AWS Console → EC2 → Key Pairs → Import Key Pair → Paste contents of ~/.ssh/id_rsa.pub

**6. Git Installed**

```bash
sudo apt update && sudo apt install git -y
git --version
```
</details> 

<details>
  <summary>📎 Additional Resources</summary>

- [Terraform Docs](https://developer.hashicorp.com/terraform/docs)  
- [Ansible Docs](https://docs.ansible.com/)  
- [AWS Free Tier](https://aws.amazon.com/free/)

</details>

