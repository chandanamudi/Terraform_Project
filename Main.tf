provider "aws" {
  region = "us-east-1"                   # Change to your desired region
  access_key = "YOUR_AWS_ACCESS_KEY"
  secret_key = "YOUR_AWS_SECRET_KEY"
}

resource "aws_instance" "my_ec2_instance123" {
  ami           = "ami-0866a3c8686eaeeba" # Change to your desired AMI
  instance_type =  "t2.micro"             # Change to your desired instance type
  key_name = "Practice111"

  tags = {
    Name = "my_ec2_instance123"
  }
}




