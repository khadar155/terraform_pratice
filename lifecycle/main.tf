resource "aws_instance" "localname" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = "terrformkey"
    tags = {
      Name = "terrraform"
    }
  


#lifecycle{
#  prevent_destroy = true
#}
 #lifecycle {
  # ignore_changes = [ tags ]
 #}
 lifecycle {
   create_before_destroy = true
 }
}