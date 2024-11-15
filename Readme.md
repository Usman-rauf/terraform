Terraform AWS Infrastructure Deployment
This project provides Terraform modules to set up AWS infrastructure with high availability, security, and performance in mind. The infrastructure includes components such as an Application Load Balancer (ALB), Auto Scaling Group, RDS, Route 53, AWS Elemental MediaConvert, ClickHouseDB, and optional CI/CD pipeline resources.

Prerequisites
Terraform: Install Terraform (v1.0 or later) from terraform.io.
AWS CLI: Install AWS CLI and configure it with appropriate permissions (aws configure).
IAM Permissions: Ensure your AWS credentials have permissions for creating resources used in this project (e.g., EC2, RDS, ALB, Route 53, MediaConvert).
Project Structure
The project is structured as follows:


project/
├── main.tf               # Main configuration file to reference modules
├── variables.tf          # Common variables for the entire infrastructure
├── outputs.tf            # Common outputs for the entire infrastructure
└── modules/              # Directory for individual modules
    ├── alb/              # ALB setup
    ├── autoscaling/      # Auto Scaling Group setup
    ├── rds/              # RDS instance setup
    ├── route53/          # Route 53 DNS setup
    ├── mediaconvert/     # AWS Elemental MediaConvert setup
    ├── clickhouse/       # ClickHouseDB setup
    └── ci_cd/            # CI/CD pipeline setup
Each module has its own main.tf, variables.tf, and outputs.tf files.


1. Configure Variables
Edit the variables.tf files in the root and each module to match your environment. You can also create a terraform.tfvars file in the root directory to specify variable values globally.

Example terraform.tfvars:

hcl
Copy code
aws_region       = "us-east-1"
vpc_id           = "vpc-123456"
security_groups  = ["sg-123456"]
subnets          = ["subnet-123456", "subnet-654321"]
db_username      = "your-db-username"
db_password      = "your-db-password"
3. Initialize Terraform
Initialize the project to download required provider plugins and modules.

bash
Copy code
terraform init
4. Review and Plan the Deployment
Run terraform plan to review the resources that will be created.

bash
Copy code
terraform plan
5. Deploy the Infrastructure
Apply the changes to create the resources in your AWS account.

bash
Copy code
terraform apply
6. Destroy the Infrastructure (Optional)
If you need to tear down the resources created, use:





