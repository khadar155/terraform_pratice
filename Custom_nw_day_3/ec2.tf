resource "aws_instance" "dev" {

    ami = var.ami
    instance_type = var.instance_type
    key_name = "terrformkey"
    subnet_id = aws_subnet.dev.id
    associate_public_ip_address = true
    security_groups = [aws_security_group.dev.id]


    tags = {
        Name = "dev_ec2"
    }
  
}