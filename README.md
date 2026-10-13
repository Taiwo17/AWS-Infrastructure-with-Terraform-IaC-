# Automate AWS Infrastructure with Terraform (IaC)

## Project Overview

This project demonstrates how to automate AWS network infrastructure using **Terraform (Infrastructure as Code)**. It covers creating a Virtual Private Cloud (VPC) and public subnets, while refactoring the configuration to use variables, data sources, and dynamic resource creation.

## Technologies Used

* AWS
* Terraform
* AWS CLI
* Git & GitHub

## Infrastructure Created

* AWS VPC
* Public subnets across Availability Zones
* Dynamic subnet CIDR allocation using `cidrsubnet()`
* AWS Availability Zones lookup using a Terraform data source

## Terraform Concepts Practiced

* AWS provider configuration
* Resources and data sources
* Input variables and `terraform.tfvars`
* The `count` meta-argument
* Terraform functions: `length()` and `cidrsubnet()`
* Infrastructure planning, deployment, and destruction

## Prerequisites

* An AWS account with appropriate permissions
* Terraform CLI installed
* AWS CLI configured with valid credentials

## How to Run

1. Clone this repository:

   ```bash
   git clone <your-repository-url>
   cd <your-project-folder>
   ```

2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Preview the infrastructure changes:

   ```bash
   terraform plan
   ```

4. Deploy the infrastructure:

   ```bash
   terraform apply
   ```

5. When finished, remove the resources created by this project:

   ```bash
   terraform destroy
   ```

## What I Learned

I gained practical experience automating AWS network infrastructure, writing reusable Terraform configurations, retrieving Availability Zone information dynamically, and managing infrastructure through the Terraform workflow.

## Security Note

Never commit AWS access keys, Terraform state files, or other sensitive information to GitHub. Use `.gitignore` and secure credential management practices.

---

**Status:** Completed
**Project:** DevOps / Infrastructure as Code (IaC) Learning Series
