resource "aws_instance" "footbar" {
    ami = "ami-079b5e5b3971bd10d"
    instance_type = "t2.micro"
    region = "ap-south-1"
    shared_credentials_file = "/home/vvdn/.aws/credentials"
    tags = {
      Name = "tf"
    }
}
