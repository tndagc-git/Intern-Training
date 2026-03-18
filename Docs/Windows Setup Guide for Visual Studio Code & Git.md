# 🛠️ **Windows Setup Guide: Visual Studio Code & Git (Intern Training)**

**Audience:** IT Interns (Windows 10 / Windows 11)  
**Goal:**  
Interns can:

- Edit files in VS Code
- Use Git locally on Windows
- Authenticate securely to GitHub
- Follow standard enterprise workflows

**Time Required:** ~30–45 minutes

---

## ✅ **Part 1 — Install Required Tools (Windows)**

---

## **1️⃣ Install Visual Studio Code**

**What it is:**  
The standard editor used for scripts, Infrastructure as Code, and documentation.

### Steps
Note: **Visual Studio Code** can also be installed from the **Company Portal**.

1. Open a browser
2. Go to:  
    👉 [https://code.visualstudio.com](https://code.visualstudio.com/)
3. Click **Download for Windows**
4. Run the installer
5. ✅ Keep **default options**
    - ✔ Add to PATH
    - ✔ Register Code as editor

✅ **Verify**

- Open **Start Menu**
- Launch **Visual Studio Code**
- You see the Welcome screen

---

## **2️⃣ Install Git for Windows**

**What it is:**  
The Git engine required for GitHub and source control.

### Steps
Note: **Git** can also be installed from the **Company Portal**.

1. Go to:  
    👉 [https://git-scm.com/download/win](https://git-scm.com/download/win)
2. Download and run installer
3. Use **default settings**, but ensure:
    - ✅ **Git from the command line and 3rd‑party software**
    - ✅ **Use bundled OpenSSH**
    - ✅ **Use Windows Secure Channel library**
    - ✅ **Checkout Windows‑style, commit Unix‑style line endings**
    - ✅ **Git Credential Manager** (VERY important)

✅ **Why these matter**

- Works with PowerShell
- Secure authentication
- Avoids line‑ending issues

✅ **Verify Installation** Open **PowerShell** and run:

git --version

Expected output:

```
git version x.xx.x.windows.x
```

---

## ✅ **Part 2 — One‑Time Git Configuration**

These settings apply to **all repos** on the intern’s machine.

---

## **3️⃣ Configure Name & Email**

Used for commit history and auditing.

git config --global user.name "First Last"

git config --global user.email "[firstname.lastname@company.com](mailto:firstname.lastname@company.com)"

✅ **Verify**

git config --global --list


---

## **4️⃣ Set Default Branch Name**

Standardizes repos across teams.

git config --global init.defaultBranch main

---

## **5️⃣ Set VS Code as Default Git Editor**

Avoids confusing terminal editors.

git config --global core.editor "code --wait"


✅ **Why**

- Commit messages open in VS Code
- Easier and safer for beginners

---

## ✅ **Part 3 — Authenticate GitHub (Windows‑Safe Method)**

✅ **DO NOT use usernames/passwords**  
✅ **DO NOT store PATs manually**

---

## **6️⃣ Sign in to GitHub via VS Code**

### Steps

1. Open **Visual Studio Code**
2. Click **Accounts icon** (bottom‑left)
3. Choose **Sign in with GitHub**
4. Browser opens → authenticate
5. Approve access

✅ **What this uses**

- GitHub OAuth
- Windows Credential Manager
- MFA supported

✅ **Verify** Open VS Code terminal:

git pull

✅ No credential prompt = success

---

## ✅ **Part 4 — Required VS Code Extensions**

### Install Extensions

Open Extensions (`Ctrl + Shift + X`) and install:

### ✅ Required

- **GitHub Pull Requests and Issues**
- **GitLens** (recommended)

### ✅ Optional (IT / Cloud)

- PowerShell
- Terraform
- Azure Tools
- YAML

✅ **Why**

- Visual diffs
- Commit history
- Easier PR reviews

---

## ✅ **Part 5 — Hands‑On: Clone Repo & Commit (Windows)**

---

## **7️⃣ Clone Intern Training Repo**

Open **VS Code Terminal (PowerShell)**

git clone https://github.com/<org>/intern-training.git

cd intern-training

code .

✅ Repo opens in VS Code

---

## **8️⃣ Create a Branch**

git checkout -b feature/windows-setup-test

✅ **Rule**

> Never commit directly to `main`

---

## **9️⃣ Make a Test Change**

1. Open `README.md`
2. Add:

```
Windows setup verified by <Your Name>
```

3. Save file

---

## **🔟 Commit Changes**

git status

git add README.md

git commit -m "Verified Windows Git and VS Code setup"

✅ **Commit Message Rules**

- Short
- Clear
- Descriptive
- No secrets

---

## **1️⃣1️⃣ Push Branch to GitHub**

git push origin feature/windows-setup-test

✅ Branch now visible in GitHub

---

## ✅ **Part 6 — Pull Request (Required Workflow)**

### Steps

1. Open repo in GitHub
2. Click **Compare & Pull Request**
3. Add description:
    - What changed
    - Why
4. Submit PR

✅ **Explain to Interns**

- PRs = reviews
- Reviews = safety + audit trail

---

## 📝 **Mini Knowledge Check (Windows)**

**1. Why don’t we commit directly to `main`?**  
✅ Prevent breaking shared code

**2. Where are GitHub credentials stored on Windows?**  
✅ Windows Credential Manager

**3. What command checks file status?**  
✅ `git status`

---

## ✅ **Windows Troubleshooting (Common Issues)**

### ❌ Git Not Found

git : The term 'git' is not recognized

✅ Fix:

- Restart PowerShell
- Confirm Git is in PATH
- Reinstall Git if needed

---

### ❌ Credential Prompts Repeating

✅ Fix:

git config --global --unset credential.helper

Then sign in again via VS Code.

---

## ✅ **Intern Setup Completion Checklist**

Intern must complete **all items**:

- [ ]  Windows 10/11
- [ ]  VS Code installed
- [ ]  Git for Windows installed
- [ ]  Git configured (name/email)
- [ ]  GitHub signed in via VS Code
- [ ]  Repo cloned
- [ ]  Branch created
- [ ]  Commit created
- [ ]  Pull Request submitted

---
