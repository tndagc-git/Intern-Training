#########################################
# EC2 Web Server
#########################################
resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.web.id]
  key_name               = var.key_name

  associate_public_ip_address = true

  #######################################
  # User Data Script
  # - Runs once at instance boot
  #######################################
  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd wget unzip

    systemctl start httpd
    systemctl enable httpd

    cd /var/www/html
    wget https://github.com/azeezsalu/techmax/archive/refs/heads/main.zip
    unzip main.zip
    cp -r techmax-main/* /var/www/html/
    rm -rf techmax-main main.zip
  EOF

  tags = {
    Name = "training-webserver"
  }
}