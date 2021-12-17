# 2 Instance Of Redhat Servers(t2.medium)
resource "aws_instance" "redhat_servers"{
  count                  = 4
  ami                    = var.redhatami
  instance_type          = "t2.medium"
  #vpc_security_group_ids = [aws_security_group.demo_sg.id]
  #subnet_id              = element(aws_subnet.subnets.*.id, count.index)
  key_name               = var.key_name
  #user_data              = file("init_script.sh")
  tags = {
    Name = "Redhat_Server_${count.index + 1}"
  }
}
