resource "aws_s3_bucket" "web_bucket" {
  bucket = "my-web-app-bucket-unique"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = {
    Name = "WebApp-Bucket"
  }
}

