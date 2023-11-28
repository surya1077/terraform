terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
       }
  }
}

provider "aws" {
  region  = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

}

resource "aws_instance" "example_server" {
  ami           = "ami-06d4b7182ac3480fa"
  instance_type = "t2.micro"

  tags = {
    Name = "JacksBlogExample"
  }
}

