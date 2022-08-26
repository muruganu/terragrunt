
include "root" {
  path = find_in_parent_folders()
}

inputs = {
  bucket-name = "terragrunt-dev001-bucket"
}


terraform {
  # Deploy version v0.0.3 in stage
  source = "../module/s3"
}