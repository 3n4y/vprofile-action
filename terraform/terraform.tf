terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.25.0"
    }

    random = {
        source = "hashicorp/random"
        version = "~> 3.5.1"
    }
  }

  backend "s3" {
    bucket = "vprofile-kops-endy-state"
    key = "terraform.state"
    region = "us-east-2"
  }

  required_version = "~>1.6.3"
}