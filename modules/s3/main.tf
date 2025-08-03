data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "this" {
  bucket = "terry-s3-bucket-${data.aws_caller_identity.current.account_id}-${var.aws_region}"

  tags = {
    Name = "TerryS3Bucket"
  }
}
