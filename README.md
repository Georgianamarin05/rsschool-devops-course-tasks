# Terraform Deployment Workflow – DevOps Task

This project contains a Terraform configuration and a GitHub Actions workflow to automate infrastructure deployment to AWS.

## 🧱 What’s Included

- Terraform configuration that creates an AWS S3 bucket
- GitHub Actions workflow with:
  - `terraform-check`: checks Terraform formatting
  - `terraform-plan`: previews infrastructure changes
  - `terraform-apply`: applies changes on push to the default branch (`main` or `master`)

---

## ⚙️ GitHub Actions Workflow

### Location:
`.github/workflows/terraform.yml`

### Trigger:
Runs automatically on:
- Push to `main` branch
- Any Pull Request to `main`

### Jobs:

| Job | Purpose |
|-----|---------|
| `terraform-check` | Runs `terraform fmt -check` to ensure code formatting |
| `terraform-plan`  | Runs `terraform init` and `terraform plan` to preview changes |
| `terraform-apply` | Runs `terraform apply -auto-approve` to apply infrastructure **only on push to main** |

---

## ☁️ AWS Credentials Setup

To allow the workflow to access AWS:

1. Go to `Repository > Settings > Secrets and variables > Actions`
2. Add the following repository secrets:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`

