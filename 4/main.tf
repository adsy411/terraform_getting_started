#############################################################
###   In the step we are going to show defining variables   #
###   here we defined regions variable those are defined in #
###   "variables.tfvars"                                    #
#############################################################
variable "region" {}
variable "shared_credentials_file"  {}
variable "profile"  {}
variable "my_ami" {
  type = "map"
}

#############################################################
#### Providers config                                       #
#############################################################

provider "aws" {
  region                          = "${var.region}"
  shared_credentials_file         = "${var.shared_credentials_file}"
  profile                         = "${var.profile}"
}
#############################################################
### Resource or in common term objectives                   #
#############################################################
resource "aws_instance" "test" {
  ami = "${lookup(var.my_ami, var.region)}"
  instance_type = "t2.micro"
  tags {
    Name = "test"
  }
}



##############################################################
### Steps to reproduce output                                #
### $terraform init                                          #
### $terraform plan                                          #
### $terrafrom apply                                         #
### $terraform destroy                                       #
##############################################################
