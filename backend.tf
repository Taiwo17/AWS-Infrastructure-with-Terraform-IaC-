# Note: The bucket name may not work for you since buckets are unique globally in AWS, so you must give it a unique name.

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}

terraform {
  backend "s3" {
    bucket       = "taiwo-devops-terraform-bucket"
    key          = "global/s3/terraform.tfstate"
    region       = "eu-north-1"
    encrypt      = true
    use_lockfile = true
    profile      = "sso-admin"
  }
}
