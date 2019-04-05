provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "frontend" {
  ami           = "ami-0b500ef59d8335eee"
  instance_type = "t2.micro"
  key_name = "awskey"
  tags = {
    Name = "moun-test-front"
  }
}
resource "aws_instance" "bdd" {
  ami           = "ami-0b500ef59d8335eee"
  instance_type = "t2.micro"
  key_name = "awskey"
  tags = {
    Name = "moun-test-bdd"
  }
}
resource "aws_s3_bucket" "terraform-state-storage-s3" {
    bucket = "terraform-remote-state-storage-s3"
 
    versioning {
      enabled = true
    }
 
    lifecycle {
      prevent_destroy = true
    }
 
    tags {
      Name = "S3 Remote Terraform State Store"
    }      
}
