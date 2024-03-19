resource "aws_instance" "dev" {

    ami = "ami-0d7a109bf30624c99"
    instance_type = "t2.micro"
    key_name = "terrformkey"
    subnet_id = data.aws_subnet.dev.id
    security_groups = [ data.aws_security_group.dev.id]
    


    tags = {
        Name = "dec2_data_source"
    }
  
}