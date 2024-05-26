terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

resource "aws_instance" "example_server" {
  ami           = ""
  instance_type = "t2.micro"

  tags = {
    Name = "JacksBlogExample"
  }
}
