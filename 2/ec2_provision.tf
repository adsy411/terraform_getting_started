#############################################################
###   In the step we are going to show defining variables   #
###   here we defined regions variable                      #
#############################################################

variable "region" {
  default = "us-east-2"
}

#############################################################
#### Providers config                                       #
#############################################################
provider "aws" {
  region                      = "${var.region}"
  shared_credentials_file      = "/home/brightlab_team/.aws/credentials"
  profile                     = "terraform"
}

#############################################################
### Resource or in common term objectives                   #
#############################################################
resource "aws_instance" "test" {
  ami                         = "ami-0653e888ec96eab9b"
  instance_type               = "t1.micro"
  tags {
    Name = "test"
  }
}
