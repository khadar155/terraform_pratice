provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "dev" {
  ami                    = "ami-0c101f26f147fa7fd"      #change ami id for different region
  instance_type          = "t2.micro"
  key_name = "3rdkeypair"           #change key name as per your setup
  user_data              = file("test.sh")
  

  tags = {
    Name = "project-MainEc2"
  }
}

