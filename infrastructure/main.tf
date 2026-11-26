resource "aws_instance" "ansible-controller" {

  ami                         = var.ami
  instance_type               = var.instance_type1
  key_name                    = "abi"
  subnet_id                   = aws_subnet.myapp-subnet-1.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone1
  associate_public_ip_address = true
  user_data                   = file("ansible.sh")
  tags = {
    Name = "${var.env_prefix}-ansible-controller"
  }
}
resource "aws_instance" "remote-server1" {

  ami                         = var.ami
  instance_type               = var.instance_type2
  key_name                    = "abi"
  subnet_id                   = aws_subnet.myapp-subnet-2.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone2
  associate_public_ip_address = true

  tags = {
    Name = "${var.env_prefix}-remote-server1"
  }
}
resource "aws_instance" "remote-server2" {
  #ami                        = data.aws_ami.latest-amazon-linux-image.id
  ami                         = var.ami
  instance_type               = var.instance_type3
  key_name                    = "abi"
  subnet_id                   = aws_subnet.myapp-subnet-3.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone3
  associate_public_ip_address = true

  tags = {
    Name = "${var.env_prefix}-remote-server2"
  }
}
resource "aws_instance" "remote-server3" {
  #ami                        = data.aws_ami.latest-amazon-linux-image.id
  ami                         = var.ami
  instance_type               = var.instance_type4
  key_name                    = "abi"
  subnet_id                   = aws_subnet.myapp-subnet-4.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone4
  associate_public_ip_address = true

  tags = {
    Name = "${var.env_prefix}-remote-server3"
  }
}

