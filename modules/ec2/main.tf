data "aws_caller_identity" "current" {}

/*data "aws_ami" "ec2_instance" {
  most_recent = true
  
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }


  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["752717405135"]
}*/

resource "aws_instance" "web" {
  ami           = "ami-0ce2e5b7d27317779"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2 Demo Instance"
  }
}
