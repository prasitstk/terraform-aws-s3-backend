terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # backend "s3" {
  #   bucket         = "terraform-backend-thoafoodoh8tiqu5xit0"
  #   region         = "ap-southeast-1"
  #   key            = "test1/remote_terraform.tfstate"

  #   # NOTE: `encrypt = true` as a second layer in addition to `backend_bucket_sse` to ensure that the state file is always encrypted on the S3 bucket.
  #   encrypt        = true

  #   dynamodb_table = "terraform-backend-state-lock-thoafoodoh8tiqu5xit0"
  # }
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}