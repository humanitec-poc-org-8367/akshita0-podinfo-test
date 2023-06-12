terraform {
  required_version = ">= 1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    humanitec = {
      source = "humanitec/humanitec"
      version = "0.9.0"
    }
  }
}


provider "aws" {
  region     = var.region
  access_key = var.credentials.access_key
  secret_key = var.credentials.secret_key
}
provider "humanitec" {
  # example configuration here
  token      = var.credentials.hu_token_api
  org_id     = "htc-demo-12"
  
}
