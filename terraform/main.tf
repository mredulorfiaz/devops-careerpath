resource "aws_instance" "dev_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  associate_public_ip_address = true

  user_data = base64encode(file("${path.module}/user-data.yaml"))

  subnet_id = data.aws_subnets.subnets.ids[0]
  tags = {
    Name = "dev-instance"
  }
  iam_instance_profile = ""
}

resource "aws_ebs_volume" "dev_volume" {
  availability_zone = aws_instance.dev_instance.availability_zone
  size              = 10
  type              = "gp2"
  tags = {
    Name = "dev-volume"
  }
}

resource "aws_volume_attachment" "dev_volume_attach" {
  device_name = "/dev/xvdf"
  volume_id   = aws_ebs_volume.dev_volume.id
  instance_id = aws_instance.dev_instance.id
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = data.aws_vpc.vpc.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

output "name" {
  value = aws_instance.dev_instance.public_ip
}
