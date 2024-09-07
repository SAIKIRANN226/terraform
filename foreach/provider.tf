terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "daws76s-remote-state"
    key    = "foreach"  # your bucket information will be saved here in foreach key name this is our wish we can create as per our requirement
    region = "us-east-1"
    dynamodb_table = "daws76s-locking"  # table name you are using to lock the bucket,here you need to reconfigure by "terraform init -reconfigure"
  }
}

provider "aws" {
  region = "us-east-1"
}