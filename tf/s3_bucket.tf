resource "aws_s3_bucket_public_access_block" "public_access_bucket_1" {
  bucket = aws_s3_bucket.my_bucket_1.id

  block_public_acls   = false
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}


resource "aws_s3_bucket" "my_bucket_1" {
  bucket = "test-project-foo-bucket-01"
}
