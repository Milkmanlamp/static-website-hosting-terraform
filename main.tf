provider "aws" {
  region = "ap-southeast-2"
}
## Bucket
resource "aws_s3_bucket" "this" {
  bucket = "my-website-bucket-project65"
}
resource "aws_s3_bucket_ownership_controls" "this" {
  bucket = aws_s3_bucket.this.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}


resource "aws_s3_bucket_public_access_block" "this" {
  bucket                  = aws_s3_bucket.this.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}
resource "aws_s3_bucket_website_configuration" "this" {
  bucket = aws_s3_bucket.this.id
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
}
resource "aws_s3_bucket_policy" "public_read" {
  bucket = aws_s3_bucket.this.id

  depends_on = [
    aws_s3_bucket_public_access_block.this
  ]
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowCloudFrontServicePrincipalReadOnly"
        Effect = "Allow"
        Principal = {
          Service = "cloudfront.amazonaws.com"
        }
        Action   = "s3:GetObject"
        Resource = "${aws_s3_bucket.this.arn}/*"
        Condition = {
          StringEquals = {
            "AWS:SourceArn" = "arn:aws:cloudfront::665511041793:distribution/E1UB90KFJEPZOE"
          }
        }
      }
    ]
  })
}

locals {
  website = fileset("${path.module}/website", "**")

  content_types = {
    html = "text/html"
    css  = "text/css"
    js   = "application/javascript"
    json = "application/json"
    png  = "image/png"
    svg  = "image/svg+xml"
    ico  = "image/x-icon"
    txt  = "text/plain"
  }
}
## Website files
resource "aws_s3_object" "website_files" {
  for_each = local.website

  bucket = aws_s3_bucket.this.id
  key    = each.value
  source = "${path.module}/website/${each.value}"
  etag   = filemd5("${path.module}/website/${each.value}")

  content_type = lookup(
    local.content_types,
    lower(element(reverse(split(".", each.value)), 0)),
    "application/octet-stream"
  )
}
## Cloudfront
resource "aws_cloudfront_origin_access_control" "this" {
  name        = "${aws_s3_bucket.this.id}-oac"
  description = "allow access into the bucket from cloudfront"

  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}
