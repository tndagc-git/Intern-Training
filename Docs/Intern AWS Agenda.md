 **IT intern onboarding itinerary** tailored specifically for an IT department with a focus on **Azure and AWS cloud services**. It’s designed as a **1‑week program**, but you can stretch or compress it depending on your schedule.

---

# 🌥️ **IT Intern Cloud Onboarding Itinerary (1–Week Program)**

Below is a well‑organized teaching plan with topics, objectives, and suggested activities.

---

## **📅 Day 1 — Welcome & Foundations**

### **1. Introductions & Orientation**

- Meet the IT team and leadership
- Overview of departmental structure (Helpdesk, Networking, Security, Cloud, etc.)
- Review organizational policies:
    - Security policies
    - Acceptable use
    - Change management
    - Ticketing procedures

### **2. Workstation Setup**

- Account provisioning (Azure AD / Entra ID)
- MFA setup
- Email, Teams, and VPN configuration
- Access to documentation (Confluence/SharePoint)

### **3. IT & Cloud Fundamentals**

- What is Cloud Computing? (IaaS, PaaS, SaaS)
- Overview of on‑prem vs cloud
- Basic components: Compute, Networking, Storage

---

## **📅 Day 2 — Azure Fundamentals (Your Specialty)**

### **1. Azure Overview**

- Azure Portal tour
- Resource groups
- Subscriptions & management groups
- Azure governance model (RBAC, naming conventions, tags)

### **2. Core Azure Services**

- **Compute**: VMs, VM Scale Sets
- **Networking**: VNets, NSGs, Azure Firewall
- **Storage**: Blob, Files, Queues
- **Identity**: Entra ID basics, Conditional Access

### **3. Hands‑On Lab**

- Create a resource group
- Deploy a VM
- Configure NSGs
- Connect via Bastion
- Upload files to a storage account

---

## **📅 Day 3 — AWS Fundamentals**

### **1. AWS Overview**

- AWS Management Console walkthrough
- Regions & Availability Zones
- IAM basics
- Cost awareness & tagging strategies

### **2. Core AWS Services**

- **Compute**: EC2, Lambda
- **Networking**: VPC, Security Groups
- **Storage**: S3, EBS
- **Identity**: IAM Users, Roles, Policies

### **3. Hands‑On Lab**

- Launch an EC2 instance
- Configure security groups
- S3 bucket creation & file uploads
- Attach IAM roles to EC2

---

## **📅 Day 4 — DevOps, Automation & Cloud Tools**

### **1. Infrastructure as Code (IaC)**

- Terraform basics
- ARM templates / Bicep
- AWS CloudFormation overview

### **2. DevOps Concepts**

- CI/CD pipelines (Azure DevOps or GitHub Actions)
- Source control workflows (Git: branching, PRs, merges)

### **3. Monitoring & Logging**

- Azure Monitor
- AWS CloudWatch
- Log Analytics
- Alerts and dashboards

### **4. Hands‑On Lab**

- Create a small Terraform project to deploy a VM or S3 bucket

---

## **📅 Day 5 — Security, Best Practices & Capstone Project**

### **1. Cloud Security Basics**

- Zero Trust
- Identity protection (MFA, Conditional Access)
- Key Vault / AWS KMS
- Network segmentation
- Least privilege and RBAC/IAM best practices

### **2. Cost Optimization**

- Azure Advisor
- AWS Trusted Advisor
- Rightsizing resources
- Stopping unused VMs

### **3. Capstone Project**

**Interns pick one:**

- Build a small multi‑tier lab in Azure
- Deploy a secure web app on AWS
- Implement a monitoring dashboard
- Create a Terraform-based deployment

### **4. Presentation**

Interns present:

- What they built
- What they learned
- What challenges they encountered

---

# 🎓 **Bonus Topics (Optional for Extended Training)**

### Cybersecurity

- SOC operations overview
- Incident response workflow
- Defender for Cloud / AWS GuardDuty

### Networking

- DNS fundamentals
- VPNs, ExpressRoute, Direct Connect

### M365

- Entra ID admin
- Intune device onboarding
- Teams/SharePoint admin basics

---

# 📄 **Would you like me to create any of the following?**

✔ A printable **PDF** version of the itinerary  
✔ A **PowerPoint** slide deck for intern orientation  
✔ A **checklist** for intern tasks  
✔ Detailed **hands‑on labs** for each day  
✔ A **30‑day extended training curriculum**

Just tell me what you'd like!


Perfect addition. Below is an **expanded intern itinerary** that adds **detailed AWS hands‑on labs**, plus **quizzes and assessments** you can use to validate learning. This is written so you can directly turn it into **lab guides, LMS content, or onboarding docs**.

---

# 🌩️ IT Intern Cloud Training

## **AWS Hands‑On Labs, Quizzes & Assessments**

---

## 🧪 **AWS Hands‑On Labs (Progressive Difficulty)**

### **AWS Lab 1 — AWS Account & IAM Fundamentals**

**Objective:** Teach secure access and identity management.

**Topics Covered**

- AWS Console navigation
- IAM users, groups, roles
- MFA
- Least privilege principle

**Lab Steps**

1. Log into AWS Console
2. Create an IAM user
3. Assign to an IAM group
4. Attach a managed policy (ReadOnlyAccess)
5. Enable MFA
6. Test permissions by accessing services

✅ **Success Criteria**

- User cannot create resources
- MFA is enforced
- Intern explains why root account should not be used

---

### **AWS Lab 2 — EC2 Compute & Networking**

**Objective:** Deploy and secure a virtual server.

**Topics Covered**

- EC2 instances
- AMIs
- Security Groups
- SSH/RDP access

**Lab Steps**

1. Launch EC2 instance (Amazon Linux or Windows)
2. Select instance type
3. Configure Security Group:
    - Allow SSH (22) or RDP (3389)
4. Generate key pair
5. Connect to the instance

✅ **Success Criteria**

- Instance is reachable
- Security group rules are minimal
- Intern can explain public vs private IPs

---

### **AWS Lab 3 — VPC & Networking Basics**

**Objective:** Understand AWS networking architecture.

**Topics Covered**

- VPC
- Subnets (public/private)
- Internet Gateway
- Route tables

**Lab Steps**

1. Create a custom VPC
2. Create public and private subnets
3. Attach Internet Gateway
4. Update route tables
5. Deploy EC2 into public subnet

✅ **Success Criteria**

- EC2 in public subnet is reachable
- EC2 in private subnet is not

---

### **AWS Lab 4 — S3 Storage & Permissions**

**Objective:** Learn object storage and access control.

**Topics Covered**

- S3 buckets
- Bucket policies
- Versioning
- Encryption

**Lab Steps**

1. Create an S3 bucket
2. Enable versioning
3. Upload files
4. Enable default encryption
5. Configure bucket policy (read‑only access for IAM role)

✅ **Success Criteria**

- Files are versioned
- Bucket access is restricted
- Intern understands public vs private buckets

---

### **AWS Lab 5 — IAM Roles & EC2 Access**

**Objective:** Teach role‑based access instead of credentials.

**Topics Covered**

- IAM roles
- Instance profiles
- Secure service access

**Lab Steps**

1. Create IAM role with S3 read access
2. Attach role to EC2 instance
3. Access S3 from EC2 without credentials

✅ **Success Criteria**

- No access keys used
- Access works via role

---

### **AWS Lab 6 — Monitoring with CloudWatch**

**Objective:** Understand monitoring and alerting.

**Topics Covered**

- Metrics
- Logs
- Alarms

**Lab Steps**

1. View EC2 metrics
2. Create CPU alarm
3. Trigger alarm using stress test
4. Review logs

✅ **Success Criteria**

- Alarm triggers
- Intern explains monitoring importance

---

### **AWS Lab 7 — Automation with Terraform (Optional Advanced)**

**Objective:** Introduce Infrastructure as Code.

**Topics Covered**

- Terraform basics
- Providers
- State

**Lab Steps**

1. Initialize Terraform
2. Deploy EC2 or S3
3. Modify resource
4. Destroy resources

✅ **Success Criteria**

- Resources created via code
- Intern understands idempotency

---

## 📝 **Quizzes (Knowledge Checks)**

### **Daily Quiz Format**

- 5–10 questions
- Multiple choice + short answer
- Pass score: **80%**

---

### **Sample AWS Quiz Questions**

**1. What is the purpose of an IAM role?**  
A. Store passwords  
B. Provide temporary permissions ✅  
C. Replace security groups  
D. Manage billing

---

**2. What service provides object storage in AWS?**  
A. EBS  
B. EFS  
C. S3 ✅  
D. Glacier

---

**3. Which AWS construct controls inbound and outbound traffic?**  
A. Route Tables  
B. Security Groups ✅  
C. IAM Policies  
D. NACL only

---

**4. True or False:**  
You should always use the root account for daily tasks.  
❌ **False**

---

**5. What happens if you delete an EC2 instance?**

- Instance is terminated
- Root volume may be deleted
- Data loss occurs if not backed up

✅ **Expected explanation**

---

## 📊 **Assessments & Evaluation**

### **Mid‑Week Assessment (Day 3)**

**Format**

- 20‑question quiz
- 1 practical lab

**Lab Scenario**

> Deploy an EC2 instance in a secure VPC and upload a file to S3 using IAM roles.

---

### **Final Capstone Assessment (Day 5)**

**Intern must:**

- Design a basic AWS solution
- Deploy at least:
    - EC2
    - S3
    - IAM roles
    - CloudWatch alarm

**Deliverables**

- Architecture diagram
- Security explanation
- Cost considerations
- Demo walkthrough

✅ **Evaluation Criteria**

|Area|Weight|
|---|---|
|Security|30%|
|Functionality|30%|
|Documentation|20%|
|Explanation|20%|

---
