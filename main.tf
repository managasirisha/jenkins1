provider "aws" {
  region = var.region
}
resource "aws_instance" "web" {
  instance_type = "t2.micro"
  ami= lookup(var.ami, var.name)
  count= 1
  tags = {
    name = var.name
  }
}
