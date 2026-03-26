Absolutely — here’s a **quick, clean README** you can drop directly next to the CloudFormation template for interns or anyone deploying the stack.

It’s intentionally concise, practical, and training‑friendly.

***

# 🚀 CloudFormation Training Stack – Public Web Server

## Overview

This CloudFormation stack deploys a **simple public web server on AWS** for training and learning purposes.  
It is functionally equivalent to the Terraform lab and is designed to help students understand **AWS‑native Infrastructure as Code (IaC)** using CloudFormation.

***

## 🏗 Resources Created

This stack creates the following AWS resources:

*   **VPC** (`10.0.0.0/16`)
*   **Public Subnet** (`10.0.1.0/24`)
*   **Internet Gateway**
*   **Route Table** with `0.0.0.0/0` route
*   **Security Group**
    *   TCP 80 (HTTP)
    *   TCP 22 (SSH – training only)
*   **EC2 Instance**
    *   Amazon Linux 2023
    *   Apache web server
    *   Website automatically installed via UserData
*   **Outputs**
    *   Public IP address
    *   Website URL

***

## ✅ Prerequisites

Before launching the stack, ensure:

*   You have access to an AWS account
*   You have permission to create:
    *   VPC
    *   EC2
    *   Security Groups
    *   CloudFormation stacks
*   You have **an existing EC2 Key Pair** in the target region

***

## 🚀 How to Deploy

### Option 1: AWS Console

1.  Open **AWS CloudFormation**
2.  Click **Create stack → With new resources**
3.  Upload the template file:
        cloudformation-training-webserver.yaml
4.  Provide required parameters:
    *   **KeyPairName** – Your EC2 key pair
    *   (Instance type can remain default)
5.  Click **Create stack**

***

### Option 2: AWS CLI

```bash
aws cloudformation create-stack \
  --stack-name training-webserver \
  --template-body file://cloudformation-training-webserver.yaml \
  --parameters ParameterKey=KeyPairName,ParameterValue=<YOUR_KEYPAIR_NAME>
```

***

## 🌐 Accessing the Web Server

After the stack completes:

1.  Open the **Outputs** tab of the CloudFormation stack
2.  Copy the **WebsiteURL**
3.  Paste it into your browser

✅ You should see the deployed website.

***

## 🔐 SSH Access

Use the public IP from the stack outputs:

```bash
ssh ec2-user@<PUBLIC_IP>
```

> ⚠️ SSH is open to `0.0.0.0/0` **for training purposes only**.  
> This is **not recommended for production environments**.

***

## 🧹 Cleanup (Important!)

To avoid unnecessary AWS charges, delete the stack when finished:

```bash
aws cloudformation delete-stack \
  --stack-name training-webserver
```

Or delete it from the CloudFormation console.

***

## 🎓 Training Notes

*   This stack is intentionally **simple and readable**
*   It is ideal for:
    *   Terraform vs CloudFormation comparisons
    *   Understanding AWS networking fundamentals
    *   Learning UserData bootstrapping
*   Security is intentionally relaxed for learning purposes

***

## 📦 Related Labs

*   Terraform equivalent deployment
*   Terraform vs CloudFormation comparison
*   Change Sets and stack updates
*   Adding private subnets and NAT gateways

***

✅ **This stack is safe for labs and onboarding exercises**  
✅ **All resources are deleted when the stack is removed**

