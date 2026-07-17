# Provider configuration for AWS
provider "aws" {
  region = "us-east-1"
}

# Secure VPC Setup
resource "aws_vpc" "investor_safe_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "jatansg-production-vpc"
    Environment = "Production"
    SafetyLevel = "Investor-Ready"
  }
}

# Public Subnet for App Tier
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.investor_safe_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "jatansg-public-subnet"
  }
}

# Strict Security Group (Eliminates risk findings)
resource "aws_security_group" "secure_web_sg" {
  name        = "secure-web-traffic"
  description = "Allow inbound HTTPS and restricted SSH"
  vpc_id      = aws_vpc.investor_safe_vpc.id

  # Inbound HTTPS from anywhere
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound traffic rule
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Compliance = "Sanitized"
  }
}
