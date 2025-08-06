provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "website" {
  bucket = "samfortunato.com"
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.website.id

  index_document {
    suffix = "index.html"
  }
}
