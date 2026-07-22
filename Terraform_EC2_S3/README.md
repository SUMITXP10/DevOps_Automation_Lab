# ☁️ Terraform Infrastructure Provisioning on AWS (EC2 + EBS + S3)

## 📌 Project Overview

This project demonstrates Infrastructure as Code (IaC) using **Terraform** to provision AWS resources automatically.

The infrastructure created includes:

- Amazon EC2 Instance (t3.medium)
- Root EBS Volume (12 GiB)
- Additional EBS Volume (20 GiB)
- Attachment of the additional EBS volume to the EC2 instance
- Amazon S3 Bucket
- S3 Bucket Versioning Enabled

The project was implemented using **Terraform**, **AWS CLI**, and **PowerShell**.

---

# 🎯 Objective

The objective of this project is to automate AWS infrastructure provisioning using Terraform by:

- Creating an EC2 instance of type **t3.medium**
- Configuring the root volume as **12 GiB**
- Enabling **DeleteOnTermination** for the root volume
- Creating an additional **20 GiB EBS Volume**
- Attaching the additional volume to the EC2 instance
- Creating an Amazon S3 Bucket
- Enabling Bucket Versioning
- Verifying all created resources using AWS CLI

---

# 🛠 Technologies Used

- Terraform
- Amazon EC2
- Amazon EBS
- Amazon S3
- AWS CLI
- PowerShell
- Visual Studio Code

---

# 📂 Project Structure

```
Terraform_EC2_S3/
│
├── provider.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── README.md
├── Commands.txt
├── Terminal_Output.txt
├── .gitignore
└── Outputs/
```

---

# 📋 Prerequisites

Before running this project, ensure the following are installed:

- Terraform
- AWS CLI
- Visual Studio Code
- PowerShell
- AWS Account
- IAM User with required permissions

---

# 📄 Terraform Files

## provider.tf

Configures:

- AWS Provider
- AWS Region
- Terraform Version

---

## variables.tf

Defines reusable variables including:

- AWS Region
- Instance Type
- Root Volume Size
- Additional Volume Size
- S3 Bucket Name

---

## main.tf

Creates:

- Ubuntu EC2 Instance
- Root EBS Volume (12 GiB)
- Additional EBS Volume (20 GiB)
- Volume Attachment
- Amazon S3 Bucket
- Bucket Versioning

---

## outputs.tf

Displays:

- EC2 Instance ID
- Public IP Address
- S3 Bucket Name
- Additional EBS Volume ID

---

## terraform.tfvars

Stores project variables.

Example:

```hcl
bucket_name = "sumit-ranjan-terraform-545009835529"
```

---

# 🚀 Implementation Steps

## Step 1

Configure AWS CLI.

```powershell
aws configure
```

---

## Step 2

Verify AWS credentials.

```powershell
aws sts get-caller-identity
```

---

## Step 3

Initialize Terraform.

```powershell
terraform init
```

---

## Step 4

Validate configuration.

```powershell
terraform validate
```

---

## Step 5

Format Terraform files.

```powershell
terraform fmt
```

---

## Step 6

Preview infrastructure.

```powershell
terraform plan
```

---

## Step 7

Provision infrastructure.

```powershell
terraform apply -auto-approve
```

---

## Step 8

Verify Terraform outputs.

```powershell
terraform output
```

---

## Step 9

List Terraform resources.

```powershell
terraform state list
```

---

## Step 10

Verify EC2 Instance.

```powershell
aws ec2 describe-instances
```

---

## Step 11

Verify EBS Volumes.

```powershell
aws ec2 describe-volumes
```

---

## Step 12

Verify S3 Bucket.

```powershell
aws s3 ls
```

---

## Step 13

Verify Bucket Versioning.

```powershell
aws s3api get-bucket-versioning --bucket <bucket-name>
```

---

## Step 14 (Optional)

Destroy infrastructure.

```powershell
terraform destroy
```

---

# 📊 Infrastructure Created

| Resource | Configuration |
|-----------|---------------|
| EC2 Instance | t3.medium |
| Operating System | Ubuntu 24.04 LTS |
| Root Volume | 12 GiB (gp3) |
| Delete On Termination | Enabled |
| Additional EBS Volume | 20 GiB (gp3) |
| Volume Attachment | /dev/sdf |
| S3 Bucket | Versioning Enabled |

---

# 📸 Screenshots

Include screenshots of:

- Terraform Version
- AWS CLI Identity
- terraform init
- terraform validate
- terraform plan
- terraform apply
- terraform output
- terraform state list
- EC2 Instance
- EBS Volumes
- S3 Bucket
- Bucket Versioning
- Terraform Destroy (Optional)

---

# 📁 Documentation

This project includes:

- README.md
- Commands.txt
- Terminal_Output.txt
- Terraform Configuration Files
- Screenshots

---

# 🔒 Security Note

Do **NOT** upload the following to GitHub:

- AWS Credentials
- AWS Secret Access Keys
- Private SSH Keys (*.pem)
- Environment Variable Files (.env)

Recommended `.gitignore` entries:

```gitignore
.terraform/
*.tfstate
*.tfstate.*
.aws/
*.pem
*.key
*.ppk
.env
.env.*
.vscode/
*.log
*.swp
```

---

# 📚 Learning Outcomes

After completing this project, the following concepts were learned:

- Infrastructure as Code (IaC)
- Terraform Providers
- Terraform Variables
- Terraform Outputs
- Terraform State Management
- Amazon EC2 Provisioning
- Amazon EBS Management
- Volume Attachment
- Amazon S3 Bucket Creation
- S3 Bucket Versioning
- AWS CLI Verification
- Infrastructure Automation

---

# 👨‍💻 Author

**Sumit Ranjan Satpathy**

- B.Tech – Computer Science & Engineering
- DevOps | AWS | Terraform | Docker | Kubernetes | Jenkins

---

# ⭐ Result

Successfully implemented Infrastructure as Code (IaC) using Terraform to provision AWS resources. The project created an Amazon EC2 instance (t3.medium) with a 12 GiB root volume configured for deletion upon instance termination, attached an additional 20 GiB EBS volume, and created an Amazon S3 bucket with versioning enabled. All resources were successfully verified using Terraform outputs and AWS CLI commands.
