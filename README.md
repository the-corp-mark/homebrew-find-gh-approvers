# 🛡️ Find Github Approvers

**Stop guessing who owns the code.** GitHub makes it difficult to see who the active maintainers of a project are. `find-gh-approvers` solves this by auditing recent PR history to surface the people actually reviewing and approving code.

## 🛠️ The Problem it Solves

On large teams or open-source projects, the "Official Maintainers" list is often outdated. By analyzing the last 100 merged PRs, this tool tells you:

1. **Who is actually active** right now.
2. **Who the subject-matter experts are** based on approval frequency.
3. **Monthly trends** to see if a maintainer has recently stepped away.

---

## 🚀 Installation

### 1. Prerequisites

Ensure you have the following installed and authenticated:

* [Homebrew](https://brew.sh/)
* [GitHub CLI (`gh`)](https://cli.github.com/) — Run `gh auth login` to authenticate.
* [jq](https://jqlang.github.io/jq/) — Required for data processing.

### 2. Tap and Install

Run the following commands to add the tap and install the CLI:

```bash
brew tap the-corp-mark/find-gh-approvers
brew install find-gh-approvers

```

---

## 📈 Usage

Run this command inside any local git repository that has a GitHub remote:

### **Identify Active Approvers (Default)**

This is the "Executive Summary." It groups approvals by month and counts them per user, showing you the most active maintainers at a glance.

```bash
find-gh-approvers

```

### **Audit Recent PRs (Verbose)**

Need to see exactly which PRs a specific person approved? Use the verbose flag to get a full JSON dump including titles and URLs.

```bash
find-gh-approvers --verbose

```

---

## 🔄 Updating

Since this tool is installed via Homebrew, keeping it up to date is simple:

```bash
brew update
brew upgrade find-gh-approvers

```

---
