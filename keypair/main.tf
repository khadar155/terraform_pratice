provider "aws" {

}

resource "aws_instance" "server" {

  key_name      = aws_key_pair.example.key_name
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"


}

resource "aws_key_pair" "example" {
  key_name   = "terraformkey" # Replace with your desired key name
  public_key = file("C:/Users/Admin/.ssh/id_ed25519.pub")
}


