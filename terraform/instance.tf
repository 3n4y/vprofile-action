data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  owners = ["099720109477"] #Canonical
}

resource "aws_key_pair" "connect_key" {
  key_name   = "code_challenge"
  public_key = file("~/.ssh/code_challenge.pub")
}

resource "aws_instance" "ubuntu" {
  ami               = data.aws_ami.ubuntu.id
  instance_type     = var.INSTANCE_TYPE
  availability_zone = var.ZONE1
  key_name          = aws_key_pair.connect_key.key_name
}