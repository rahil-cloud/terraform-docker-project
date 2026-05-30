provider "aws" {
 region = "ap-south-1"
}

resource "aws_instance" "docker_server" {
 ami           = "ami-xxxxxxxx"
 instance_type = "t2.micro"

 tags = {
   Name = "Docker-Server"
 }
}
