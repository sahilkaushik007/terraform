terraform {
  backend "s3" {
      bucket = "tf-manage-007"
      key = "terraform.tfstate"
      region = "ap-south-1"
  }
}