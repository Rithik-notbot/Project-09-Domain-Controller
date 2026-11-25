# Project 09: Active Directory Domain Controller

## Overview
This project prepares Terraform configuration for an AWS Windows Server instance intended to serve as an Active Directory Domain Controller.

## Objectives
- Identify a Windows Server 2022 AMI.
- Configure an EC2 instance.
- Configure an encrypted GP3 root volume.
- Prepare infrastructure for a future Active Directory deployment.
- Follow company network security restrictions.

## Technologies
- AWS EC2
- Windows Server 2022
- Terraform

## Project Files
- `main.tf` – Windows Server AMI, security group, and EC2 configuration.
- `variables.tf` – Input variable declarations.
- `terraform.tfvars.example` – Example variable values.
- `outputs.tf` – Terraform outputs.
- `versions.tf` – Terraform and AWS provider requirements.

## Security Configuration
- No inbound RDP rule is configured.
- The instance does not receive a public IP.
- Root storage is encrypted.
- Remote administration requires an approved access method.

## Validation
Terraform formatting and validation were completed locally.

**Result:** Terraform configuration validation successful.

## Deployment Status
Infrastructure code is prepared and validated.

**AWS deployment and Active Directory installation are pending.** No AWS resources were created during local preparation.

## Learning Outcomes
- Understanding Windows Server infrastructure.
- Preparing EC2 infrastructure with Terraform.
- Applying network security restrictions.
- Understanding Active Directory deployment requirements.