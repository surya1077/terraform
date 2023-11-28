provider "aws" {
  region  = "us-east-1"


}

resource "aws_instance" "example_server" {
  ami           = "ami-06aa3f7caf3a30282"
  instance_type = "t2.micro"

  tags = {
    Name = "JacksBlogExample"
    env =sbx
  }
}

resource "aws_instance" "example_server2" {
  ami           = "ami-06aa3f7caf3a30282"
  instance_type = "t2.micro"

  tags = {
    Name = "Suryavami"
  }
}

