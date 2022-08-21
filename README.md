How to Query into RDS MySQL Using AWS Lambda-Python handler deployed through TERRAFORM Then Connecting to RDS Database on a DB Instance using the MySQL Workbench

Prerequisites :

Code editor (Vscode, Atom, etc), Setup Terraform on your local machine, Setup Terraform in Visual Studio Code, Having an AWS account and an AWS IAM user with the appropriate permissions to perform the necessary actions, Install AWS CLI based on your operating system.

Note: It is necessary to download also the MySql GUI Tool, To download it, go to the Download MySQL Workbench page based on your OS but check first if you have Microsoft Visual C++ 2019 Redistribuable installed on your local machine if not then install it first otherwise you’ll have MySQL WorkBench installation issue.


Clone the code to your code editor with git clone command git clone https://github.com/Assassin010/How-to-Query-into-RDS-MySQL-Using-AWS-Lambda-Python-handler-deployed-through-TERRAFORM

Deployment Steps: In your terminal Run these commands below (-)

1.Terraform init
Initialize a working directory containing Terraform configuration files. This is the first command that should be run after writing a new Terraform configuration or cloning an existing one from version control. It is safe to run this command multiple times.

2.Terraform plan

The terraform plan command lets you to preview the actions Terraform would take to modify your infrastructure, or save a speculative plan which you can apply later.

3.Terraform apply-auto-approve To deploy the infra

4. To destroy the resources use the command: Terraform destroy-auto-approve


Note: To see the entire article please go to my medium page: https://bit.ly/3PEpdNd
