terraform {
  backend "s3" {
    bucket         = "akshita-humanitec-demo"
    key            = "state3/terraform.tfstate"
    profile        = "ukg-pov-user"
    region         = "us-east-2"
  }
  secrets = {
      "access_key" = var.credentials.access_key
      "secret_key" = var.credentials.secret_key
    }
}
