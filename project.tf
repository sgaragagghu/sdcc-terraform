terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_instance" {
  ami           = "ami-0c7ed0ec32865e4db"   
#  ami           = "ami-02538f8925e3aa27a"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-01352b25182ee7b0b"]
  subnet_id              = "subnet-0cd3e50d7ca772ee0"
  key_name = "SDCC"
  tags = {
    Name = "SDCC"
  }
}
