terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
       }
  }
}

provider "aws" {
  region  = "us-east-1"


}

resource "aws_instance" "example_server" {
  ami           = "ami-06aa3f7caf3a30282"
  instance_type = "t2.micro"

  tags = {
    Name = "JacksBlogExample"
  }
}

resource "aws_instance" "example_server2" {
  ami           = "ami-06aa3f7caf3a30282"
  instance_type = "t2.micro"

  tags = {
    Name = "Surya"
  }
}

