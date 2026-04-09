provider "aws" {
  region = "us-east-1"
}
# provider = tells Terraform "use AWS as the cloud"
# region = "us-east-1" means we use the US East (Virginia) datacenter

resource "aws_instance" "my_server" {
  ami           = "ami-0ea87431b78a82070"
  instance_type = "t3.micro"
}
# resource = something we want to create on AWS
# "aws_instance" = the type → an EC2 virtual machine
# "my_server" = the name we give it, can be anything
# ami = the OS image (this one is Amazon Linux 2)
# instance_type = "t2.micro" is the smallest/cheapest size (free tier)
