provider "aws" {
  version                = "~> 2.9"
  region                 = var.region
  access_key             = var.access_key
  secret_key             = var.secret_key
}

resource "aws_instance" "csgoserver" {
  ami                    = local.ami[var.region]
  instance_type          = local.instance_type
  user_data              = file(local.user_data)
  vpc_security_group_ids = [aws_security_group.linuxgsm.id, aws_security_group.default.id]

  root_block_device {
    volume_size          = 30
  }

  tags = {
    Name                 = local.name
  }
}

resource "aws_security_group" "linuxgsm" {
  name                   = "linuxgsm csgo ports"

  ingress {
    from_port            = 27005
    to_port              = 27005
    protocol             = "udp"
    cidr_blocks          = ["0.0.0.0/0"]
  }

  ingress {
    from_port            = 27020
    to_port              = 27020
    protocol             = "udp"
    cidr_blocks          = ["0.0.0.0/0"]
  }

  ingress {
    from_port            = 27015
    to_port              = 27015
    protocol             = "udp"
    cidr_blocks          = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "default" {
  name                   = "operational ports"

  egress {
    from_port            = 80
    to_port              = 80
    protocol             = "tcp"
    cidr_blocks          = ["0.0.0.0/0"]
  }


  egress {
    from_port            = 443
    to_port              = 443
    protocol             = "tcp"
    cidr_blocks          = ["0.0.0.0/0"]
  }


  ingress {
    from_port            = 19999
    to_port              = 19999
    protocol             = "tcp"
    cidr_blocks          = ["0.0.0.0/0"]
  }

  ingress {
    from_port            = 22
    to_port              = 22
    protocol             = "tcp"
    cidr_blocks          = ["0.0.0.0/0"]
  }
}
