data "aws_ami" "ubuntu" {
  most_recent = true
  provider    = aws.east-1

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"] # Canonical Ubuntu
}


resource "aws_instance" "instance_region_1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2-micro"

  provider = aws.east-1
  for_each  = {
    hmg = "hmg"
    dev = "dev"
  }
  tags = {
    Name   = "HelloWorld its a env ${each.key}"
    region = var.region
    workspace = each.key
  }
}
