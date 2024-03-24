provider "aws" {

    region = "us-east-1"
   

  
}

provider "aws" {
    region = "ap-south-1"
    alias = "India"
  
}

resource "aws_s3_bucket" "dev" {

    bucket = "jjklogkingindfjk"
   
  
}

resource "aws_s3_bucket" "hi" {

    bucket = "jjk2asdjfafjaser"
    provider = aws.India

  
}

