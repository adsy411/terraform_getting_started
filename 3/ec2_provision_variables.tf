#############################################################
###   In the step we are going to show defining variables   #
###   here we defined regions variable                      #
#############################################################

variable "region" {
  default               = "us-east-2"
}

variable "shared_credentials_file" {
  default               = "/home/brightlab_team/.aws/credentials"
}


variable "profile" {
  default               = "terraform"
}

#############################################################
#### Providers config                                       #
#############################################################

provider "aws" {
  region                    = "${var.region}"
  shared_credentials_file   = "${var.shared_credentials_file}"
  profile                   = "${var.profile}"
}

#############################################################
### Resource or in common term objectives                   #
#############################################################

resource "aws_instance" "test" {
  ami                       = "ami-0653e888ec96eab9b"
  instance_type             = "t2.micro"
  tags {
    Name                    = "test"
  }
}


##############################################################
### Steps to reproduce output                                #
### $terraform init                                          #
### $terraform plan                                          #
### $terrafrom apply                                         #
### $terraform destroy                                       #
##############################################################
