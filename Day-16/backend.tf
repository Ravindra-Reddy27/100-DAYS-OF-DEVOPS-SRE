terraform {
  backend "s3" {
    bucket       = "terraform-lock-learning"
    key          = "iam-user/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}