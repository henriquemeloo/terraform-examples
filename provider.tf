# Backend bucket must already exist, and it is advisable that
# bucket versioning is turned on.
terraform {
  backend "s3" {
    bucket = "melo-upload-test"
    key    = "terraform-examples/setup/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  profile = var.profile_name
  default_tags {
    tags = {
      project = "pombo"
      project_ref = "https://github.com/henriquemeloo/terraform-examples"
    }
  }
}
