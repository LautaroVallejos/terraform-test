provider "aws" {
  region = var.region
}

resource "aws_instance" "terra-instance" {
  ami = var.ami
  instance_type = var.instance
  tags = {
    Name = "terra-instance"
    Environment = "Dev"
  }
}