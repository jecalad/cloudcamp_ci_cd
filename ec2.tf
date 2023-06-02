provider "aws" {
  region = "us-east-1"
  profile = "cloudcamp"
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-0715c1897453cabd1"  # Replace with the desired AMI ID
  instance_type = "t2.micro"            # Replace with the desired instance type
  key_name      = "juan-calad-key"       # Replace with the name of your key pair

  tags = {
    Name = "juan_calad_cloudcamp",
    bootcamp = "devops"
  }
}
