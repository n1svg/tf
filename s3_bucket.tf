resource "aws_s3_bucket" "tf-hw-1" {
  bucket = "epam-hw-test-bucket"
  acl    = "private"

  tags = {
    Name        = "EPAM-hw-test-bucket"
    Environment = "test"
  }
}