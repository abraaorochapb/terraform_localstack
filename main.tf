terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 4.0"
        }
    }
    
    required_version = ">= 1.0.0"
}

provider "aws" {
  region = values(var.aws_region)
  access_key = values(var.access_key)
  secret_key = values(var.secret_key)

  # PARA O LOCALSTACK #
  s3_use_path_style = true
  skip_credentials_validation = true
  skip_metadata_api_check = true
  skip_requesting_account_id = true

  endpoints {
    ec2 = "http://localhost:4566"
    s3 = "http://localhost:4566"
    }
}