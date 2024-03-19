provider "aws" {

  region = "us-east-1"

}

resource "aws_instance" "ec2_import" {
  ami           = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
tags = {
  Name = "ec2_import"
}

}
