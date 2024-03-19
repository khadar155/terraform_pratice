resource "aws_instance" "depend" {
    ami = "ami-0d7a109bf30624c99"
    key_name = "terrformkey"
    instance_type = "t2.micro"


  
}

resource "aws_s3_bucket" "depend" {
    bucket = "s3depend"
    depends_on = [ aws_instance.depend ]
  
}