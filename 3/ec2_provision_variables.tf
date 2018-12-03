variable "region" {
  default               = "us-east-2"
}

variable "shared_credentials_file" {
  default               = "/home/brightlab_team/.aws/credentials"
}


variable "profile" {
  default               = "terraform"
}



provider "aws" {
  region                    = "${var.region}"
  shared_credentials_file   = "${var.shared_credentials_file}"
  profile                   = "${var.profile}"
}


resource "aws_instance" "test" {
  ami                       = "ami-0653e888ec96eab9b"
  instance_type             = "t2.micro"
  tags {
    Name                    = "test"
  }
}
