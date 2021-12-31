provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform-state-storage-s3" {
  bucket = "terraform-forolajidecaleb"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name           = "terraform-state-lock-forolajide"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
