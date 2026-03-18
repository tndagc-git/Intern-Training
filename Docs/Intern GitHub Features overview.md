**GitHub / Source Control training module**. This is intentionally **lightweight, practical, and hands‑on**, designed for interns who may be **new to Git entirely**.

---

# 🧠 **Source Control Basics – GitHub Training for IT Interns**

**Goal:**  
Teach interns _why_ source control matters, _how_ to use GitHub safely, and _basic daily workflows_ they’ll encounter in IT, cloud, and automation work.

**Total Time:** ~2–3 hours  
**Skill Level:** Beginner

---

## 📌 **Section 1 — What Is Source Control? (15–20 min)**

### Key Concepts

- What is source control?
- Why IT teams use Git (not just developers)
- Real IT use cases:
    - Infrastructure as Code (Terraform, Bicep, CloudFormation)
    - Scripts (PowerShell, Bash, Python, etc.)
    - Documentation (Markdown: README.md)
    - Config backups (S3, Azure Blob)

### Explain These Terms (Plain English)

|Term|Meaning|
|---|---|
|Repository (Repo)|A project folder with history|
|Commit|A saved change|
|Branch|A copy to work safely|
|Pull Request (PR)|Request to merge changes|
|Merge|Combine changes|
|Version history|Who changed what and when|

✅ **Checkpoint Question**

Why is Git better than saving scripts on a file share?

---

## 🧪 **Lab 1 — GitHub Account & Repo Basics (20 min)**

### Objective

Learn how to navigate GitHub and create a repo.

### Lab Steps

1. Log into GitHub
2. Create a new repository:
    - Name: `intern-training`
    - Initialize with README
3. Edit README in browser
4. Commit changes

✅ **Success Criteria**

- Repo exists
- Commit history shows changes
- Intern can explain what a commit is

---

## 📌 **Section 2 — GitHub Workflow (Concepts) (15 min)**

### Explain the Standard Workflow

1. Clone repo
2. Create branch
3. Make changes
4. Commit
5. Push
6. Pull Request
7. Review & Merge

### Explain _Why_ Branching Matters

- Prevents breaking production
- Enables reviews
- Supports teamwork

✅ **Checkpoint Question**

Why **shouldn’t** you commit directly to `main`?

---

## 🧪 **Lab 2 — Clone Repo & Make Changes Locally (30 min)**

### Objective

Practice local Git usage.

### Lab Steps

git clone https://github.com/tndagc-git/intern-training.git

cd intern-training

1. Create a new branch:

git checkout -b feature/add-notes

2. Edit README.md
3. Save changes
4. Commit:

git status

git add .
or 
git add -A

git commit -m "Added intern notes"

5. Push branch:

git push origin feature/add-notes

✅ **Success Criteria**

- Branch exists in GitHub
- Commit message is meaningful

---

## 🧪 **Lab 3 — Pull Requests & Code Review (20 min)**

### Objective

Learn collaboration and approvals.

### Lab Steps

1. Open Pull Request in GitHub
2. Add description:
    - What changed?
    - Why?
3. Assign reviewer
4. Reviewer leaves comment
5. Merge PR

✅ **Success Criteria**

- PR created and merged
- Intern understands review process

---

## 📌 **Section 3 — GitHub for IT & Cloud (15 min)**

### Show Real Examples

- Terraform repo
- Intune PowerShell scripts
- Documentation repo

### Best Practices

✅ Clear commit messages  
✅ Small changes  
✅ Never store secrets  
✅ Use `.gitignore`  
✅ Use README files

### Explain Secrets Handling

- Why secrets should **never** be in Git
- Use:
    - GitHub Secrets
    - Azure Key Vault
    - AWS Secrets Manager

✅ **Checkpoint Question**

What happens if you accidentally commit a password?

---

## 📝 **Mini Quiz (10 min)**

**1. What is the purpose of a branch?**  
A. Delete files  
B. Isolate changes ✅  
C. Encrypt code  
D. Publish apps

---

**2. True or False:**  
Commits should be large and infrequent  
❌ False

---

**3. What command shows file status?**  
✅ `git status`

---

**4. Where should secrets be stored?**  
A. README  
B. Code comments  
C. GitHub Secrets ✅  
D. Commit messages

---

## 🧪 **Mini Assessment (30 min)**

### Scenario

“You are asked to add a troubleshooting note to a shared IT documentation repo.”

**Intern must:**

1. Create branch
2. Edit README
3. Commit changes
4. Open PR
5. Merge after review

✅ **Pass Criteria**

- No direct commits to main
- Clear commit message
- PR used correctly

---

## 📄 **Optional Add‑Ons (If Time Allows)**

### GitHub Features Overview

- Issues
- Projects
- Wiki
- GitHub Actions (high‑level only)

### GitHub + Azure or AWS Tie‑In

- GitHub Actions → Azure or AWS
- Repo‑based infrastructure
- CI/CD awareness

---
