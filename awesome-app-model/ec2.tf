resource "aws_instance" "app_server" {
  ami                         = "ami-09e67e426f25ce0d7"
  instance_type               = var.instance_type
  key_name                    = var.key_name
  associate_public_ip_address = false
  subnet_id            = var.subnet_id
  vpc_security_group_ids = [
    var.security_group_id
  ]
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }
  tags = {
    "Name" = "${var.app_name}-app_server-${var.suffix}"
  }
  volume_tags = {
    "Name" = "${var.app_name}-app_server-${var.suffix}"
  }
}
