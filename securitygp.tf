resource "aws_instance" "footbar" {
    ami = "ami-079b5e5b3971bd10d"
    instance_type = "t2.micro"
    tags = {
      Name = "tf"
    }
}


resource "aws_instance" "footbar-new" {
    ami = "ami-079b5e5b3971bd10d"
    instance_type = "t2.micro"
    count = 1
    tags = {
      Name = "tf-new"
    }
    lifecycle {
      prevent_destroy= true
    }
}