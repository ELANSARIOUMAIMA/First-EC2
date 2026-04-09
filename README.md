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
<img width="1873" height="633" alt="لقطة شاشة 2026-04-09 195314" src="https://github.com/user-attachments/assets/575448ef-2187-4b0c-a79c-28654d5949f0" />

- `EC2`      → virtual machine on AWS
- `IAM user` → identity used to connect AWS CLI to AWS account
<img width="941" height="231" alt="لقطة شاشة 2026-04-09 195517" src="https://github.com/user-attachments/assets/fc17a68c-8ce8-444e-8cf9-0d2afebd3a2f" />
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
## Screenshots
### Terraform Apply Success
<img width="891" height="743" alt="لقطة شاشة 2026-04-09 203749" src="https://github.com/user-attachments/assets/0feecbd6-e1cc-4b9a-99ac-88e9cccd26ae" />
ply.png)
### EC2 Running on AWS
<img width="922" height="653" al![Uploading لقطة شاشة 2026-04-09 203749.png…]()
t="لقطة شاشة 2026-04-09 204329" src="https://github.com/user-attachments/assets/709ae78c-6067-4640-9c5e-1d7411e2e79d" />


