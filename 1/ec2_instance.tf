### basic terraform script for ec2-instance

#######################################################################
# "shared_credentials_file = "/home/brightlab_team/.aws/credentials"  #
#  here this line will communicate with default aws credentials       #
####################################################################### 


provider "aws" {
  region                  = "us-east-2"
  shared_credentials_file = "/home/brightlab_team/.aws/credentials"
  profile                 = "terraform"
}


resource "aws_instance" "web" {
  ami = "ami-023c8dbf8268fb3ca"
  instance_type = "t2.micro"
  tags {
    Name = "eralabs"
  }
}


################################
# $terraform init              #
# $terraform plan              #
################################
