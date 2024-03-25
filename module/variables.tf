variable "ami" {
  description = "ami ec2 main"
  type        = string
  default     = ""

}

variable "instance_type" {
  type    = string
  default = ""


}

variable "key_name" {
    type = string
    default = ""
  
}

variable "tags" {
    default = ""
  
}
