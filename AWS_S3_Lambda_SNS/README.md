# AWS S3 Event Notification using Lambda and SNS

## Objective

Automatically send an email notification whenever a new object is uploaded to an Amazon S3 Bucket.

---

## AWS Services Used

- AWS IAM
- AWS Lambda
- Amazon S3
- Amazon SNS
- AWS CLI

---

## Architecture

```
Upload File
     │
     ▼
 Amazon S3
     │
Object Created Event
     │
     ▼
AWS Lambda
     │
Publishes Message
     │
     ▼
Amazon SNS
     │
     ▼
Email Notification
```

---

## Features

- Automatic Notification
- Event Driven Architecture
- Serverless Computing
- Email Alerts

---

## Files

```
lambda_function.py
lambda.zip
trust-policy.json
notification.json
Commands.txt
README.md
Screenshots/
```

---

## Flow

```
Create Bucket

↓

Create SNS Topic

↓

Subscribe Email

↓

Create IAM Role

↓

Create Lambda

↓

Configure Bucket Notification

↓

Upload File

↓

Receive Email
```

---

## Example Notification

```
New Object Uploaded

Bucket:
sumit-rs-s3-upload-545009835529

Object:
test.txt

Uploaded Successfully
```

---

## Skills Learned

- AWS Lambda
- Amazon SNS
- Amazon S3
- IAM Roles
- AWS CLI
- Event Driven Computing
- Serverless Architecture

---

Author

**Sumit Ranjan Satapathy**
