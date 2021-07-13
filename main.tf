provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "demo-instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags          = var.tags
}

resource "aws_security_group" "ssh_connection" {
  name        = var.sg_name

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "-1"
    cidr_blocks      = # add a CIDR block here
  }

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port        = ingress.value.from_port
      to_port          = ingress.value.to_port
      protocol         = ingress.value.protocol
      cidr_blocks      = ingress.value.cidr_blocks
    }
  }
  tags = {
    Name = "allow_tls"
  }
}