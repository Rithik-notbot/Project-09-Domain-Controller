data "aws_ami" "windows_server" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["Windows_Server-2022-English-Full-Base-*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_security_group" "domain_controller" {
  name        = "project-09-domain-controller-sg"
  description = "Restricted RDP access for the domain controller"
  vpc_id      = var.vpc_id

  ingress {
    description = "RDP from approved administrator IP only"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = [var.allowed_rdp_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "Project-09-Domain-Controller-SG"
    ManagedBy = "Terraform"
  }
}

resource "aws_instance" "domain_controller" {
  ami                         = data.aws_ami.windows_server.id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.domain_controller.id]
  key_name                    = var.key_pair_name
  associate_public_ip_address = false

  root_block_device {
    volume_size = 50
    volume_type = "gp3"
    encrypted   = true
  }

  tags = {
    Name      = "Project-09-Domain-Controller"
    Project   = "Project-09"
    ManagedBy = "Terraform"
  }
}