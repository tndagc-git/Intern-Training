#########################################
# VPC
# - A Virtual Private Cloud is our isolated network
#########################################
resource "aws_vpc" "this" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "training-vpc"
  }
}

#########################################
# Internet Gateway
# - Allows resources in the VPC to talk to the internet
#########################################
resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = "training-igw"
  }
}

#########################################
# Public Subnet
# - Resources in this subnet can get public IPs
#########################################
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "${var.aws_region}a"

  # IMPORTANT:
  # Automatically assigns a public IP to EC2 instances
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}

#########################################
# Route Table
# - Controls where network traffic goes
#########################################
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.this.id

  # Default route: send all outbound traffic to the internet
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }

  tags = {
    Name = "public-rt"
  }
}

#########################################
# Associate Route Table to Subnet
#########################################
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

#########################################
# Security Group
# - Acts like a virtual firewall
#########################################
resource "aws_security_group" "web" {
  name        = "web-sg"
  description = "Allow HTTP and SSH access"
  vpc_id      = aws_vpc.this.id

  # Allow HTTP from anywhere
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow SSH from anywhere (training only)
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web-sg"
  }
}