terraform {
  backend "s3" {
      bucket = "myterraform-remote-bucket"
      key = "terraform.tfstate"
      region = "ap-south-1"
  }
}
