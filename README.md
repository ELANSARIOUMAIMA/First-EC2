# First Terraform EC2 Deployment

## What I built
A simple EC2 instance on AWS using Terraform (Infrastructure as Code).

## What I learned today

### Terraform basics
- `provider` → tells Terraform which cloud to use (AWS)
- `resource` → the thing you want to create (EC2 instance)
- `variable` → reusable values to avoid repetition

### Terraform commands
- `terraform init`    → downloads the provider plugins
- `terraform plan`    → preview what will be created (no real changes)
- `terraform apply`   → creates the real infrastructure on AWS
- `terraform destroy` → deletes everything (important to avoid costs)

### AWS concepts learned
- `AMI`      → Amazon Machine Image = the OS installed on EC2

- `EC2`      → virtual machine on AWS
- `IAM user` → identity used to connect AWS CLI to AWS account
- `IAM role` → permissions for AWS services (not people)
- `Region`   → physical datacenter location (we used us-east-1)

### AWS CLI commands used
- `aws configure`            → connect terminal to AWS account
- `aws sts get-caller-identity` → verify credentials are working
- `aws ec2 describe-images`  → find correct AMI ID
- `aws ec2 describe-instance-types` → find free tier instance types

### Problems I faced and fixed
- AMI ID was outdated → found correct one using AWS CLI
- t2.micro not free tier → changed to t3.micro
- Git push required token → created GitHub Personal Access Token
