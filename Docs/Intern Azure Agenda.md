**Fully developed Azure-focused intern training itinerary centered on Microsoft Entra ID, Intune (Endpoint Manager), and the Azure Admin experience**. This is written so you can directly operationalize it for **real interns**, especially in environments like yours with **shared devices, Intune, and M365/Azure governance**.

---

# ☁️ **Azure & Intune Intern Training Program**

## **Hands‑On Labs, Quizzes & Assessments**

**Primary Focus Areas**

- Microsoft Entra ID (Azure AD)
- Microsoft Intune (Endpoint Manager)
- Azure Portal / Admin Consoles
- Identity, Device, and App Management
- Security & Governance

---

# 🧪 **Azure Hands‑On Labs (Progressive Learning Path)**

---

## **Azure Lab 1 — Azure Portal & Entra ID Fundamentals**

**Objective:** Understand Azure administration structure and identity basics.

### Topics Covered

- Azure Portal navigation
- Tenants vs subscriptions
- Microsoft Entra ID overview
- Users, groups, and roles
- RBAC vs Entra roles

### Lab Steps

1. Log into Azure Portal
2. Navigate to **Microsoft Entra ID**
3. Create:
    - One test user
    - One security group
4. Assign:
    - Reader role at subscription level
5. Sign in as test user and verify access

✅ **Success Criteria**

- Intern can explain:
    - Tenant vs subscription
    - RBAC vs Entra roles
- Test user has limited access

---

## **Azure Lab 2 — Intune Overview & Device Enrollment**

**Objective:** Learn how devices are managed with Intune.

### Topics Covered

- Microsoft Intune admin center
- MDM vs MAM - **(Mobile Device Management)** vs **(Mobile Application Management)**
- Device enrollment types
- Corporate vs personal devices

### Lab Steps

1. Open **Intune Admin Center**
2. Review:
    - Enrollment restrictions
    - Device platforms
3. Enroll a test Windows 11 device (or demo tenant)
4. Verify device appears in Intune

✅ **Success Criteria**

- Device shows compliant
- Intern explains MDM enrollment flow

---

## **Azure Lab 3 — Configuration Profiles**

**Objective:** Manage device settings using Intune policies.

### Topics Covered

- Configuration profiles
- Settings Catalog
- Device vs user targeting

### Lab Steps

1. Create Windows 11 configuration profile
2. Configure:
    - Password complexity
    - Disable USB storage (example)
3. Assign profile to test group
4. Sync device and verify settings

✅ **Success Criteria**

- Policy applies successfully
- Intern understands policy assignment scope

---

## **Azure Lab 4 — Compliance Policies & Conditional Access**

**Objective:** Enforce security posture.

### Topics Covered

- Compliance policies
- Conditional Access basics
- Risk‑based access

### Lab Steps

1. Create compliance policy:
    - Require BitLocker
    - Require secure boot
2. Mark device non‑compliant intentionally
3. Create Conditional Access policy:
    - Block access if non‑compliant
4. Test sign‑in behavior

✅ **Success Criteria**

- Device marked non‑compliant
- Access blocked as expected

---

## **Azure Lab 5 — Application Management**

**Objective:** Deploy and manage applications via Intune.

### Topics Covered

- Win32 apps
- Microsoft Store apps
- Required vs Available apps

### Lab Steps

1. Package a Win32 app (or use sample)
2. Upload to Intune
3. Assign as **Required**
4. Verify app installs on device

✅ **Success Criteria**

- App installs successfully
- Intern explains deployment types

---

## **Azure Lab 6 — Update Rings & Feature Updates**

**Objective:** Manage Windows updates at scale.

### Topics Covered

- Update rings
- Feature update policies
- Quality vs feature updates

### Lab Steps

1. Create update ring:
    - Deferral settings
    - Active hours
2. Assign to test device
3. Review update compliance report

✅ **Success Criteria**

- Update ring applied
- Intern understands update cadence

---

## **Azure Lab 7 — Monitoring, Reporting & Troubleshooting**

**Objective:** Teach operational visibility.

### Topics Covered

- Intune reports
- Device diagnostics
- Log collection

### Lab Steps

1. Review:
    - Device compliance report
    - App install status
2. Collect device logs
3. Troubleshoot failed policy deployment

✅ **Success Criteria**

- Intern identifies root cause
- Explains troubleshooting workflow

---

## **Azure Lab 8 — Security & Governance (Admin Console)**

**Objective:** Introduce secure administration.

### Topics Covered

- Least privilege
- Privileged Identity Management (PIM)
- Azure policies

### Lab Steps

1. Enable PIM for a test role
2. Activate role with approval
3. Review audit logs
4. Create Azure Policy:
    - Restrict resource location

✅ **Success Criteria**

- Role is time‑bound
- Policy enforces compliance

