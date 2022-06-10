

resource "aws_instance" "footbar-new" {
    ami = "ami-079b5e5b3971bd10d"
    instance_type = "t2.micro"
    count = Servers
    tags = {
      Name = "tf-new"
    }
    lifecycle {
      prevent_destroy= true
    }
}
