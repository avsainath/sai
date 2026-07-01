resource "aws_default_security_group" "sg1" {
  vpc_id = aws_vpc.vpc.id


ingress {
    description = "SSH from anywhere"
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
    cidr_blocks = var.ssh_cidr
  }

  ingress {

    description = "all traffic"
    protocol  = "icmp"
    from_port = -1
    to_port   = -1
    cidr_blocks = var.icmp_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.egress_cidr
  }
  tags = {
    Name=var.sgname
  }
}