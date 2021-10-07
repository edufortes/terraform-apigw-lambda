resource "aws_s3_bucket" "lambda-bucket" {
  bucket = "terraform-api-${var.username}"
  acl    = "private"

  tags = "${var.tags}"
}

resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.lambda-bucket.id
  key    = "${var.environment}/${var.app_version}/api.zip"
  acl    = "private"
  source = "api/api.zip"
  etag = filemd5("api/api.zip")
}
