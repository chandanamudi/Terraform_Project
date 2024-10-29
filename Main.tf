provider "aws" {
  region = "ap-south-1"  # Change to your desired region
}

resource "aws_security_group" "my-security-group123" {
  name        = "my-security-group123"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # All inbound traffic 
    #Change this to a more restrictive CIDR block for production
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # Allows all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  }

resource "aws_instance" "my_ec2_instance123" {
  ami           = var.ami_value  # Change to your desired AMI
  instance_type = var.instance_type  # Change to your desired instance type
  security_groups = [aws_security_group.my-security-group123.name]
  key_name = var.key_name

  tags = {
    Name = "my_ec2_instance123"
  }
}




