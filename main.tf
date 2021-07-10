provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "demo-instance" {
  ami           = "ami-08ee2516c7709ea48"
  instance_type = "t2.micro"
  tags = {
    Name        = "demo-1"
    Environment = "develop"
  }
}
