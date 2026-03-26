**Training Module** you can drop directly into your **Intern Training GitHub repo, SharePoint, or LMS**.  
It’s structured training is delivered and is aligned with **AWS + Terraform fundamentals**.

---

# 🧩 Training Module

## **Module 1: Deploying a Public Web Server on AWS Using Terraform**

**Audience:** Cloud / Infrastructure Interns  
**Level:** Beginner  
**Estimated Time:** 2–3 hours  
**Delivery Format:** Instructor‑led or self‑paced

---

## 📘 Module Overview

In this module, students will use **Terraform** to deploy a **basic AWS environment** consisting of:

- A custom VPC
- A public subnet
- Internet connectivity
- A public EC2 instance running a web server
- Automated configuration using `user_data`

This module introduces **Infrastructure as Code (IaC)** and builds foundational skills used across cloud engineering, DevOps, and SRE roles.

---

## 🎯 Learning Objectives

By the end of this module, students will be able to:

1. Explain what Infrastructure as Code (IaC) is and why it’s used
2. Describe core AWS networking components:
    - VPC
    - Subnet
    - Internet Gateway
    - Route Table
    - Security Group
3. Deploy infrastructure using Terraform
4. Access a web server via:
    - Browser (HTTP)
    - SSH
5. Safely tear down infrastructure to avoid unwanted costs

---

## 🧠 Key Concepts Introduced

### ✅ Infrastructure as Code (IaC)

- Define infrastructure using **code**, not clicking
- Version‑controlled, repeatable, auditable
- Used heavily in real enterprise environments

### ✅ Terraform Basics

- Providers
- Resources
- Variables
- Outputs
- State

### ✅ AWS Networking (Foundations)

- How public access actually works in AWS
- Difference between **security groups** and **route tables**
- How traffic flows from the internet to an EC2 instance

---

## 🏗 Architecture Summary

**Traffic Flow:**

```
User Browser / SSH
        ↓
Internet Gateway
        ↓
Public Subnet
        ↓
EC2 Instance (Apache Web Server)
```

**Open Ports:**

- TCP 80 → Website access
- TCP 22 → SSH access (training only)

---

## 🧪 Lab Activities Summary

|Lab|Title|Outcome|
|---|---|---|
|Lab 1|Terraform Initialization|Providers configured|
|Lab 2|Infrastructure Deployment|VPC + EC2 running|
|Lab 3|Website Validation|Web page accessible|
|Lab 4|SSH Access|CLI connectivity|
|Lab 5|Cleanup|Resources destroyed|

---

## 📚 Required Files

```
module-1-webserver/
├── main.tf
├── variables.tf
├── outputs.tf
├── README.md
```

---

## 🔧 Tools & Prerequisites

Students must have:

- AWS account access
- IAM permissions for:
    - EC2
    - VPC
    - Security Groups
- Terraform installed
- Git installed
- An existing EC2 key pair

---

## 📝 Instructor Notes (Important)

- This module **intentionally allows SSH from 0.0.0.0/0**
    - This is **NOT production‑secure**
    - Used to simplify learning
- Reinforce _why this would be locked down_ in real environments
- Encourage students to **read the Terraform comments**, not just run commands

---

## 🧪 Hands‑On Lab Instructions (Student Edition)

### 🔹 Step 1: Clone the Repo

git clone [https://github.com/&lt;org&gt;/Intern-Training.git](https://github.com/&lt;org&gt;/Intern-Training.git)

cd module-1-webserver

---

### 🔹 Step 2: Terraform Initialization

terraform init

✅ **Expected Result:**  
Terraform downloads AWS provider plugins.

---

### 🔹 Step 3: Review the Plan

terraform plan

✍️ **Student Question:**  
How does Terraform know what order to create resources in?

---

### 🔹 Step 4: Apply Configuration

terraform apply

Type `yes` when asked.

✅ **Expected Result:**  
Infrastructure creation completes successfully.

---

### 🔹 Step 5: Access the Website

1. Copy the `website_url` output
2. Open it in a browser

✅ **Expected Result:**  
A webpage loads that was installed automatically during boot.

---

### 🔹 Step 6: SSH Access

ssh ec2-user@<PUBLIC_IP>

✍️ **Student Question:**  
Which Terraform resource allows SSH access?

---

### 🔹 Step 7: Destroy Infrastructure

terraform destroy

✅ **Expected Result:**  
All AWS resources are removed.

---

## 🧠 Knowledge Check (Assessment)

Students should be able to answer:

1. What does `user_data` do?
2. Why does a public subnet need a route to the Internet Gateway?
3. What would happen if port 80 was removed?
4. What is Terraform state?

---

## 🧩 Optional Extension Labs

✅ Lock SSH access to student IP only  
✅ Add an S3 bucket resource  
✅ Change instance type and observe cost impact  
✅ Convert flat code into Terraform modules  
✅ Replace EC2 with Auto Scaling Group

---

## 🏁 Module Completion Criteria

✅ Terraform apply works  
✅ Website is reachable  
✅ SSH connection successful  
✅ Terraform destroy removes all resources  
✅ Student explains traffic flow **in their own words**

---

## 📦 Real‑World Mapping

|Training Concept|Real‑World Equivalent|
|---|---|
|Single EC2|App Server|
|Security Group|Firewall|
|user_data|Bootstrapping / Config Mgmt|
|Terraform state|Infrastructure source of truth|

---

## ✅ Module Complete

---

### Next Modules You Can Add (Recommended)

- **Module 2:** Private Subnets & NAT Gateways
- **Module 3:** ALB + Auto Scaling
- **Module 4:** Introduction to Terraform Modules
- **Module 5:** CI/CD with Terraform (GitHub Actions)

