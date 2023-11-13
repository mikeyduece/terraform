provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "myEc2" {
  ami           = "ami-05c13eab67c5d8861"
  instance_type = "t3.micro"
}