resource "aws_instance" "localname" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = "terrformkey"
    associate_public_ip_address = true
    tags = {
      Name = var.tags
    }
  
}