

# Define the Terraform source module to use: an RDS database module in this example


remote_state {
  backend = "s3"
  config = {
    encrypt        = true
    bucket         = "terragrunt-288866261642"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-west-2"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}