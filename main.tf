provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "example_server" {
  ami           = "ami-06d4b7182ac3480fa"
  instance_type = "t2.micro"

  tags = {
    Name = "JacksBlogExample"
  }
}

