module "app_pombo" {
  source            = "./awesome-app-model"
  app_name          = "pombo"
  suffix            = terraform.workspace
  subnet_id         = aws_subnet.private_subnet.id
  security_group_id = aws_security_group.allow_inside_vpc.id
  key_name          = var.key_name
  instance_type     = "t3a.micro"
}

module "app_joinha" {
  source            = "./awesome-app-model"
  app_name          = "joinha"
  suffix            = terraform.workspace
  subnet_id         = aws_subnet.private_subnet.id
  security_group_id = aws_security_group.allow_inside_vpc.id
  key_name          = var.key_name
  instance_type     = "t3a.nano"
}
