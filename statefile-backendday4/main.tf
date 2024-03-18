resource "aws_instance" "localname" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = "terrformkey"
    tags = {
      Name = "terrraform"
    }
  
}