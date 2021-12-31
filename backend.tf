terraform {
  backend "s3" {
    bucket         = "terraform-forolajidecaleb"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock-forolajide"

  }
}
