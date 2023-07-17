# Automated RDS Backup and Restore Strategy

## Description
This project aims to provide an automated backup strategy for RDS instances using Terraform. The Terraform scripts included in this project facilitate the provisioning of RDS instances with scheduled automated backups. Additionally, a separate script is provided to restore an RDS instance from a backup when needed.

## Features

- Automated provisioning of RDS instances with customizable settings such as instance class, allocated storage, and backup retention period.
- Scheduled backups using a specified backup window to ensure regular and consistent backups.
- Separation of provisioning and restoration logic into separate scripts for better modularity and maintainability.
- Ability to restore an RDS instance from a specific DB snapshot, providing a recovery option in case of data loss or corruption.

## Prerequisites

- AWS Account: Sign up for an [AWS account](https://signin.aws.amazon.com/signin) if you don't have one.
- IAM User: Create an IAM user in your AWS account with appropriate permissions and generate an access key and secret key.
- AWS CLI: Install and configure the AWS CLI using the access key and secret key generated for the IAM user.
- Terraform: Install Terraform on your local machine. You can download it from the [Terraform website](https://www.terraform.io/downloads.html).

## Usage

1. Clone the repository to your local machine: 
```
git clone <repository_url>
```
3. Change into the project directory: 
```
cd <project_directory>
````
3. Initialize the Terraform project: 
 ```
terraform init
```
5. Customize the Terraform script `main.tf` to specify the desired RDS instance settings, backup window, and retention period.
6. Validate the Terraform configuration: 
```
terraform validate
```
8. Plan the changes to be applied: 
```
terraform plan
```
9. Apply the changes to provision the RDS instance with automated backups: 
```
terraform apply
```
10. To restore an RDS instance from a backup, modify the restoration script `restore-snapshot/restore_instance.tf` with the appropriate snapshot identifier.
11. Validate the restoration script: 
```
terraform validate 
```

12. Apply the changes using the restoration script to restore the RDS instance: 
```
terraform apply 
```
Note: Replace `<repository_url>` with the actual URL of the repository and `<project_directory>` with the name of the project directory. Also, replace `<snapshot_identifier>` with the identifier of the DB snapshot you want to restore from.

## Clean-up

To clean up the resources created by the Terraform scripts, follow the steps below:

1. Open a terminal or command prompt.

2. Change into the project directory where the Terraform scripts are located.

3. Run the following command to destroy the provisioned resources:
```
terraform destroy
```

This command will prompt you to confirm the destruction of the resources. Type `yes` and press Enter to proceed.

4. Wait for Terraform to complete the destruction process. Once finished, all the resources provisioned by the Terraform scripts will be removed from your AWS account.

Note: Be cautious when running the `terraform destroy` command, as it will permanently delete the resources associated with the project. Make sure to review the resources that will be destroyed before confirming the action.

It is important to clean up the resources to avoid any unnecessary costs or resource waste in your AWS account. Performing clean-up after completing the assessment demonstrates good practice and responsibility in managing cloud resources.



## Challenges Faced and Solutions

1. **Challenge: Completing the Assessment Steps**

   The task presented several challenges throughout the process, requiring careful consideration and attention to detail at each step.

   **Solution**

   I approached each challenge systematically, breaking down the requirements and seeking guidance from relevant documentation and resources. By following best practices, utilizing the Terraform documentation, and leveraging my experience in infrastructure provisioning, I was able to overcome the challenges and complete the assessment successfully.

2. **Challenge: Deleting a Default Subnet**

   One particular challenge I encountered was related to deleting a default subnet. AWS doesn't allow direct deletion of default subnets, which can be a limitation when configuring the infrastructure.

   **Solution**

   To address this challenge, I reached out to the AWS Support team for assistance. They provided me with detailed documentation on recreating the default subnet, allowing me to proceed with the required steps for the assessment. By following their guidance, I was able to recreate the default subnet and continue with the assessment without any further obstacles.

## Troubleshooting

If you encounter any issues or errors during the execution of the Terraform scripts, refer to the Terraform documentation or consult the project's troubleshooting guide for common solutions.

## References

Here are some helpful references for further reading:

1. [AWS Account Sign-up](https://aws.amazon.com/free/): Sign up for an AWS account if you don't have one.

2. [Getting Started with Terraform](https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started): Guide to installing and setting up Terraform for your first project.

3. [Creating an IAM User in AWS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html): AWS documentation on how to create an IAM user in your AWS account.

4. [AWS RDS Provisioning](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html): AWS documentation on provisioning RDS resources.

5. [Terraform AWS Instance Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance): Documentation for the Terraform AWS instance resource, which allows you to create EC2 instances.

6. [Installing and Configuring AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html): AWS documentation on installing and configuring the AWS CLI for managing your AWS resources.

Feel free to explore these resources to enhance your understanding of AWS, Terraform, IAM user creation, RDS provisioning, creating EC2 instances with Terraform, and installing/configuring AWS CLI.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request.


## License

This project is licensed under the [MIT License](LICENSE).





