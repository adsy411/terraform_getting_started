### basic terraform script for ec2-instance

# provider "aws" {
#   access_key           = "AKIAISLZ3MBNU4XHRX3A"
#   secret_key           = "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"
#   region               = "us-east-2"
# }


resource "aws_instance" "test" {
  ami                  = "ami-0653e888ec96eab9b"
  instance_type        = "t2.micro"
}


#########################################################
##   ubuntu16.04 LTS   = ami-0653e888ec96eab9b         ##
##   instance_type     = t2.micro                      ##
#########################################################
