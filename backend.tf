terraform {
  backend "s3" {
    bucket         = "terrybackend"
    key            = "aws/terraform.tfstate"
    region         = "us-east-1"
   # dynamodb_table = "terraform-lock-table"
  }
}