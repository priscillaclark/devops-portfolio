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
---

## 🔧 Prerequisites

- AWS account
- AWS CLI configured with credentials
- Terraform installed locally
- Ansible installed (or via Docker)
- SSH key available for remote access

### Prerequisites Checklist and Setup Guide (for Windows Subsystem for Linux)

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

<details>
<summary> 🔐 Secure your AWS credentials</summary>

   - Use Environment Variables (good for local + CI/CD):
 
```
  export AWS_ACCESS_KEY_ID="your_key"
  export AWS_SECRET_ACCESS_KEY="your_secret"
```
<details>
<summary>      To persist across sessions, add them to your shell config file: </summary>


```
nano ~/.bashrc
```
Add at the bottom:
```
export AWS_ACCESS_KEY_ID="your_access_key"
export AWS_SECRET_ACCESS_KEY="your_secret_key"
```
Then apply:

```
source ~/.bashrc
```
Test your credentials:

```
aws sts get-caller-identity
```
Protect sensitive files:

Create a .gitignore and add:

```
.env
*.tfvars
*.pem
```

> 🔴 Never store secrets directly in your code!

---
</details>

   - Use .tfvars file (add to .gitignore):
   
```hcl
aws_access_key = "your_key"
aws_secret_key = "your_secret"
```

   - Use Named profiles in ~/.aws/credentials:

```ini
[default]
aws_access_key_id = your_key
aws_secret_access_key = your_secret
```
   - Use IAM Roles for EC2 or GitHub Actions (recommended in production)
---
</details>

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

- ls = list files
- ~/.ssh/ = a hidden folder in your home where SSH keys are usually stored.
- id_rsa.pub = your public key (the one you share, not secret)

If not, generate:

```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
- ssh-keygen = a tool to create a new SSH key
- -t rsa = use the RSA type of key (a common and secure kind)
- -b 4096 = make the key 4096 bits long (very strong)
- -C "your_email@example.com" = add a label so you know whose key it is (your email)

Upload your key to AWS Console → EC2 → Key Pairs → Import Key Pair → Paste contents of ~/.ssh/id_rsa.pub

**6. Git Installed**

```bash
sudo apt update && sudo apt install git -y
git --version
```
</details> 

📎 Additional Resources

- [Terraform Docs](https://developer.hashicorp.com/terraform/docs)  
- [Ansible Docs](https://docs.ansible.com/)  
- [AWS Free Tier](https://aws.amazon.com/free/)



