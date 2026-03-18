
# IT Intern Cloud Training Repository

Welcome to the IT Intern Cloud Training repository.
This repository is used to onboard and train interns in **cloud services, endpoint management, and source control best practices** using real-world workflows.

This repository is treated as a **production-style learning environment**.

---

## 🎯 Purpose

This repository helps interns:

- Learn **Git and GitHub** using proper branching and pull request workflows
- Gain hands-on experience with **Azure, Microsoft Intune, and AWS**
- Practice documentation and configuration management
- Follow enterprise IT standards for **security, change control, and collaboration**

---

## 🧰 Required Tools (Windows Only)

All interns are expected to use **Windows 10 or Windows 11**.

Before starting, ensure the following tools are installed and configured:

- ✅ **Visual Studio Code**  
  https://code.visualstudio.com
- ✅ **Git for Windows**  
  https://git-scm.com/download/win
- ✅ **GitHub account** (signed in through VS Code)

Refer to the **Windows VS Code & Git Setup Guide (PDF)** provided during onboarding.

---

## 🌿 Git & GitHub Workflow (Required)

All changes must follow this workflow:

1. Clone the repository
   ```bash
   git clone https://github.com/<org>/intern-training.git
   ```
2. Create a feature branch
   ```bash
   git checkout -b feature/short-description
   ```
3. Make your changes
4. Commit with a clear message
   ```bash
   git commit -m "Brief description of the change"
   ```
5. Push your branch
   ```bash
   git push origin feature/short-description
   ```
6. Open a **Pull Request (PR)**
7. Address review feedback
8. Merge only after approval

🚫 **Do NOT commit directly to `main`.**

---

## 🔐 Security Guidelines

Security is critical and enforced throughout training.

- ❌ Do **NOT** commit passwords, secrets, API keys, or tokens
- ✅ Use approved secrets solutions:
  - GitHub Secrets
  - Azure Key Vault
  - AWS Secrets Manager
- ✅ Follow the **principle of least privilege**
- ✅ Multi-Factor Authentication (MFA) is required

⚠️ If a secret is accidentally committed, notify a mentor immediately.

---

## ☁️ Training Topics Covered

### Azure & Microsoft Intune
- Azure Portal navigation
- Microsoft Entra ID (Azure AD)
- User and group management
- Role-Based Access Control (RBAC)
- Windows 10/11 device enrollment
- Configuration profiles
- Compliance policies
- Conditional Access
- Application deployment
- Update rings
- Monitoring and reporting
- Privileged Identity Management (PIM)

### AWS Fundamentals
- IAM users, groups, and roles
- EC2 instances
- VPC and networking basics
- Security Groups
- S3 storage
- CloudWatch monitoring
- Cost awareness and security best practices

### Source Control (Git & GitHub)
- Git fundamentals
- Branching strategies
- Pull Requests and reviews
- Commit history and collaboration
- Safe handling of secrets

---

## 🧪 Labs & Hands-On Exercises

Interns will complete hands-on labs including:

- Azure and Intune configuration tasks
- AWS deployment labs
- Git and GitHub workflow exercises
- Documentation updates and reviews

Expected lab behavior:
- Small, focused changes
- Clear commit messages
- Pull Requests for all changes
- Ability to explain what was done and why

---

## 📝 Quizzes & Assessments

Interns will complete quizzes covering:

- Azure & Intune fundamentals (20 questions)
- AWS fundamentals (20 questions)
- Git basics (10 questions)

Quizzes are delivered via **Microsoft Forms** and validate readiness for hands-on work.

---

## ✅ Intern Expectations

Interns are expected to:

- Follow documented workflows
- Use Git and GitHub correctly
- Keep changes small and readable
- Ask questions when unsure
- Respect security boundaries
- Treat this repository professionally

This environment simulates real-world IT operations.

---

## 🤝 Code of Conduct

All participants must adhere to the following standards:

### Professional Behavior
- Be respectful, inclusive, and professional
- Communicate clearly and constructively
- Accept feedback and reviews respectfully

### Collaboration
- Do not remove or overwrite others’ work without approval
- Use Pull Requests for discussion and review
- Credit others when building on their work

### Security & Compliance
- Do not bypass security controls
- Do not attempt to access systems or data outside your scope
- Report security concerns immediately

### Accountability
- Your name and email appear in commit history
- All actions are logged and auditable
- Treat this as a learning environment with real consequences

Violations of this Code of Conduct may result in removal from the repository or internship program.

---

## 📣 Getting Help

If you need assistance:

- Review this README
- Check previous commits or pull requests
- Review training materials
- Ask your mentor or team lead

---

Welcome to the team — and happy learning! 🚀
