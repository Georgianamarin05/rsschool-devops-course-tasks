provider "aws" {
  region = "us-east-1"
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "example" {
  bucket = "devops-course-bucket-123456"  
  acl    = "private"
}
