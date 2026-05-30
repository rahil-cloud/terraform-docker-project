provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "webserver" {

  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"
  key_name      = "terraform-key"

  user_data = <<-EOF
#!/bin/bash

apt update -y

apt install docker.io git -y

systemctl start docker
systemctl enable docker

cd /home/ubuntu

git clone https://github.com/rahil-cloud/terraform-docker-project.git

cd terraform-docker-project/app

docker build -t website .

docker run -d -p 80:80 website

EOF

  tags = {
    Name = "Terraform-Docker-Server"
  }
}
