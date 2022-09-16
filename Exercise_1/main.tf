# TODO: Designate a cloud provider, region, and credentials
terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 4.16"
      }
  }
}
provider "aws" {
    region = "us-east-1"
    profile = "admin"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2

resource "aws_instance" "udacity_t2"{
    ami = "ami-05fa00d4c63e32376"
    instance_type = "t2.micro"
    count = 4
    subnet_id = "subnet-014792d44bcb63e4e"
    tags = {
        Name = "Udacity T2"
    }

}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "udacity_m4"{
#     ami = "ami-05fa00d4c63e32376"
#     instance_type = "m4.large"
#     count = 2
#     subnet_id = "subnet-014792d44bcb63e4e"
#     tags = {
#         Name = "Udacity M4"
#     }

# }