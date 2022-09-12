provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "terra-instance" {
  ami           = "ami-0cc49e55fac7c246a"
  instance_type = "t2.micro"
  tags = {
    Name        = "Terratest-infra"
    Environment = "Dev"
  }
}