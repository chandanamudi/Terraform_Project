provider "aws" {
  region = "us-east-1"                   # Change to your desired region
  access_key = "YOUR_AWS_ACCESS_KEY"
  secret_key = "YOUR_AWS_SECRET_KEY"
}

resource "aws_instance" "my_ec2_instance123" {
  ami           = "ami-0dee22c13ea7a9a67" # Change to your desired AMI
  instance_type =  "t2.micro"             # Change to your desired instance type
  key_name = "Ajaykumar12334"

  tags = {
    Name = "my_ec2_instance123"
  }
}




