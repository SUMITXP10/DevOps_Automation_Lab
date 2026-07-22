# ☁️ AWS CloudWatch Monitoring with SNS Notification

## 📌 Project Overview

This project demonstrates how to monitor an Amazon EC2 instance using **AWS CloudWatch**. A CloudWatch alarm is configured to monitor CPU utilization, and when the CPU usage exceeds a predefined threshold (5%), an **Amazon SNS** notification is automatically sent to a subscribed email address.

This project was completed using the **AWS CLI**, **PowerShell**, and **Ubuntu EC2 Instance**.

---

## 🎯 Objective

- Configure AWS CLI
- Launch an Ubuntu EC2 instance
- Create a Security Group
- Connect to EC2 using SSH
- Generate CPU load manually
- Create an Amazon SNS Topic
- Subscribe an email endpoint
- Configure a CloudWatch Alarm
- Receive an email notification when CPU utilization exceeds the threshold
- Document all commands using PowerShell Transcript

---

## 🛠️ Technologies Used

- Amazon EC2
- Amazon CloudWatch
- Amazon SNS
- AWS CLI
- Ubuntu Server 24.04 LTS
- PowerShell
- SSH

---

## 📂 Project Structure

```
CloudWatch_Monitoring/
│
├── README.md
├── Commands.txt
├── Terminal_Output.txt
├── .gitignore
└── Outputs/
```

---

## 📋 Prerequisites

- AWS Account
- AWS CLI Installed
- PowerShell
- SSH Client
- IAM User with required AWS permissions

---

## 🚀 Implementation Steps

### Step 1 – Configure AWS CLI

Configure AWS credentials.

```powershell
aws configure
aws sts get-caller-identity
```

---

### Step 2 – Create EC2 Key Pair

Generate a new SSH key pair using AWS CLI.

```powershell
aws ec2 create-key-pair
```

---

### Step 3 – Create Security Group

Create a security group and allow SSH (Port 22).

---

### Step 4 – Launch Ubuntu EC2 Instance

Launch an Ubuntu 24.04 EC2 instance using AWS CLI.

---

### Step 5 – Connect via SSH

```bash
ssh -i CWKey.pem ubuntu@<Public-IP>
```

---

### Step 6 – Generate CPU Load

Inside the EC2 instance:

```bash
yes > /dev/null &
```

This command generates continuous CPU utilization for testing.

---

### Step 7 – Create SNS Topic

Create an Amazon SNS topic for notifications.

```powershell
aws sns create-topic
```

---

### Step 8 – Subscribe Email

Subscribe an email address to receive notifications.

```powershell
aws sns subscribe
```

Confirm the subscription from the received email.

---

### Step 9 – Create CloudWatch Alarm

Configure a CloudWatch alarm with:

- Metric: CPUUtilization
- Namespace: AWS/EC2
- Threshold: 5%
- Evaluation Period: 1 Minute
- Action: Send SNS Notification

---

### Step 10 – Verify Alarm

Generate CPU load and observe:

- Alarm State → **ALARM**
- Email Notification Received

After CPU utilization decreases:

- Alarm State → **OK**

---

## 📸 Screenshots

Include screenshots demonstrating:

- AWS CLI Configuration
- EC2 Instance Launch
- Security Group
- SSH Connection
- CPU Load Generation
- SNS Topic
- Email Subscription
- CloudWatch Alarm
- Alarm State (ALARM)
- Email Notification
- Alarm State (OK)

---

## 📊 Expected Output

- EC2 instance successfully launched.
- SSH connection established.
- CPU utilization exceeds 5%.
- CloudWatch alarm changes from **OK** to **ALARM**.
- SNS sends an email notification.
- Alarm automatically returns to **OK** after CPU usage decreases.

---

## 📁 Documentation

This project includes:

- **README.md** – Project documentation
- **Commands.txt** – Complete sequential AWS CLI commands
- **Terminal_Output.txt** – PowerShell transcript of terminal execution
- **Outputs** – Step-by-step implementation evidence

---

## 🔒 Security Note

Do **NOT** upload sensitive files to GitHub.

Add the following to `.gitignore`:

```gitignore
*.pem
*.key
.aws/
```

Never expose:

- AWS Access Keys
- Secret Access Keys
- Private Key Files (.pem)

---

## 📚 Learning Outcomes

After completing this project, you will understand:

- AWS CLI Configuration
- Amazon EC2 Management
- Security Groups
- SSH Connectivity
- Amazon SNS Notifications
- CloudWatch Metrics
- CloudWatch Alarms
- CPU Monitoring
- AWS Resource Monitoring using CLI

---

## 👨‍💻 Author

**Sumit Ranjan Satpathy**

- B.Tech – Computer Science & Engineering
- DevOps | AWS | Cloud | Kubernetes | Terraform | Docker | Jenkins

---

## ⭐ Result

Successfully implemented AWS CloudWatch Monitoring with Amazon SNS notifications using AWS CLI. The CloudWatch alarm correctly detected high CPU utilization, triggered an SNS email notification, and automatically returned to the OK state after CPU usage normalized.
