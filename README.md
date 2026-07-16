# DevOps Automation Lab

# 🚀 DevOps Automation Lab

> A hands-on DevOps project demonstrating Shell Scripting, Jenkins CI/CD, Kubernetes, AWS Lambda, Amazon S3, Amazon SNS, and Git/GitHub automation.

![GitHub last commit](https://img.shields.io/github/last-commit/SUMITXP10/DevOps_Automation_Lab)
![GitHub repo size](https://img.shields.io/github/repo-size/SUMITXP10/DevOps_Automation_Lab)
![GitHub language count](https://img.shields.io/github/languages/count/SUMITXP10/DevOps_Automation_Lab)
![GitHub top language](https://img.shields.io/github/languages/top/SUMITXP10/DevOps_Automation_Lab)

---

# 📖 Project Overview

This repository contains practical DevOps automation tasks completed using modern DevOps tools and cloud services.

The project demonstrates:

- Linux Shell Scripting
- Jenkins Email Integration
- Kubernetes ReplicaSets
- AWS Lambda
- Amazon S3
- Amazon SNS
- AWS IAM
- Git & GitHub CLI
- VS Code Terminal Workflow

---

# 🛠 Technologies Used

| Category | Technologies |
|-----------|--------------|
| Operating System | Windows 11, Ubuntu (WSL) |
| IDE | VS Code |
| Version Control | Git, GitHub CLI |
| CI/CD | Jenkins |
| Container Orchestration | Kubernetes |
| Cloud | AWS |
| Services | Lambda, IAM, SNS, S3 |
| Language | Bash, Python |

---

# 📂 Project Structure

```
DevOps_Automation_Lab
│
├── README.md
│
├── Shell_Scripting
│   ├── README.md
│   ├── Commands.txt
│   ├── even_numbers.sh
│   ├── while_loop.sh
│   ├── until_loop.sh
│   └── screenshots
│
├── Jenkins_Email_Integration
│   ├── README.md
│   ├── Commands.txt
│   ├── screenshots
│
├── Kubernetes_ReplicaSet
│   ├── README.md
│   ├── Commands.txt
│   ├── replicaset.yaml
│   └── screenshots
│
└── AWS_S3_Lambda_SNS
    ├── README.md
    ├── Commands.txt
    ├── lambda_function.py
    ├── trust-policy.json
    ├── notification.json
    ├── lambda.zip
    └── screenshots
```

---

# ✅ Task 1 — Linux Shell Scripting

### Objective

Create shell scripts using:

- for loop
- while loop
- until loop

to print even numbers from 1–20.

### Skills Learned

- Bash scripting
- Linux commands
- Looping
- Script execution

---

# ✅ Task 2 — Jenkins Email Integration

### Objective

Configure Jenkins to send email notifications after successful builds.

### Implemented

- Mailer Plugin
- Email Extension Plugin
- Gmail SMTP
- App Password Authentication
- Test Email Job

### Result

✔ Jenkins successfully sent build notifications.

---

# ✅ Task 3 — Kubernetes ReplicaSet

### Objective

Create a ReplicaSet with **3 replicas**.

Delete one Pod and verify Kubernetes automatically recreates it.

### Implemented

- ReplicaSet YAML
- kubectl apply
- kubectl delete pod
- kubectl get pods

### Result

✔ Replica count maintained automatically.

---

# ✅ Task 4 — AWS S3 + Lambda + SNS Notification

### Objective

Receive an email notification whenever an object is uploaded to an S3 bucket.

### AWS Services Used

- IAM
- Lambda
- S3
- SNS
- CloudWatch Logs

### Workflow

```
Upload File
      │
      ▼
 Amazon S3
      │
      ▼
 Lambda Function
      │
      ▼
 SNS Topic
      │
      ▼
 Gmail Notification
```

### Result

✔ Email notification received successfully after file upload.

---

# ▶ How to Run

Clone the repository

```bash
git clone https://github.com/SUMITXP10/DevOps_Automation_Lab.git
```

Open

```bash
code DevOps_Automation_Lab
```

Execute required commands inside each task folder.

---

# 📚 Learning Outcomes

- Linux Administration
- Bash Automation
- Jenkins Configuration
- Kubernetes Basics
- AWS Serverless Architecture
- SNS Event Notification
- GitHub CLI
- Git Best Practices

---

# 👨‍💻 Author

**Sumit Ranjan Satapathy**

B.Tech Computer Science & Engineering

DevOps | AWS | Kubernetes | Docker | Jenkins | Terraform | Linux | GitHub

GitHub:

https://github.com/SUMITXP10

LinkedIn:

https://www.linkedin.com/in/sumitxpr10

---
