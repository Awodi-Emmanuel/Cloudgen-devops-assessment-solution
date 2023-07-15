# Automated RDS Backup and Restore Strategy

<h3>Description</h3> 
This project aims to provide an automated backup strategy for RDS instances using Terraform. The Terraform scripts included in this project facilitate the provisioning of RDS instances with scheduled automated backups. Additionally, a separate script is provided to restore an RDS instance from a backup when needed.

<h2>Features</h2>

- Automated provisioning of RDS instances with customizable settings such as instance class, allocated storage, and backup retention period.
- Scheduled backups using a specified backup window to ensure regular and consistent backups.
- Separation of provisioning and restoration logic into separate scripts for better modularity and maintainability.
- Ability to restore an RDS instance from a specific DB snapshot, providing a recovery option in case of data loss or corruption.

# General overview of the steps taken to accomplish this Task:
I am going to walk us through the steps I took to accomplish this task, without no further delay let's dive right in.

<h1>Pre-requisite</h1> 

- [AWS Account](https://signin.aws.amazon.com/signin?redirect_uri=https%3A%2F%2Fconsole.aws.amazon.com%2Fconsole%2Fhome%3FhashArgs%3D%2523%26isauthcode%3Dtrue%26nc2%3Dh_ct%26src%3Dheader-signin%26state%3DhashArgsFromTB_eu-north-1_80a19daf0efb962a&client_id=arn%3Aaws%3Asignin%3A%3A%3Aconsole%2Fcanvas&forceMobileApp=0&code_challenge=Ejh1Enkh7ToD7h73wDKPlxL-pEzqsiTlEimdbnQf87w&code_challenge_method=SHA-256) 
- [AN IAM User](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html)
- [Access Key](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html)
- [Install & Configure AWSCLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [Installing and Setting up Your First Terraform Project](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- Create A GitHub Repository
- References

<h2>Follow this Step to run this project</h2>
This project is broken down into steps, now we're going to execute this step to provision our Infrastructure with Terraform

- Step 1
<br> [AWS Account:](https://signin.aws.amazon.com/signin) Since our cloud focus is [Amazon Web Service(AWS)](https://signin.aws.amazon.com/signin) we need to first of all signup into AWS to be able to make leverage their service to provision our infrastructure.

- Step 2
<br> [Create An IAM User:](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html) To be able to use the AWSCLI we need to create an IAM user follow this [link](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html) to guide you through the steps to creating an IAM user from the AWS Management console.

- Step 3
  <br> [Create an Access Key:](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html) Follow this [link](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html) and learn how to create an Access and Secrete key.

- Step 4
<br> [Install & Configure AWSCLI:](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) We need to Install and configure our AWSCLI with the access

# Usage

1. Install Terraform and configure AWS credentials.
2. Customize the Terraform script (main.tf) to specify the desired RDS instance settings, backup window, and retention period.
3. Run terraform init to initialize the Terraform project.
4. Run terraform apply to provision the RDS instance with automated backups.
5. To restore an RDS instance from a backup, modify the restoration script (restore.tf) with the appropriate snapshot identifier and run terraform apply using the restoration script.
Please refer to the individual Terraform scripts for more details and customization options.

