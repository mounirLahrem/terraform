provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "frontend" {
  ami           = "ami-0b500ef59d8335eee"
  instance_type = "t2.medium"
  key_name = "awskey"
  tags = {
    Name = "moun-test-front"
  }
}
resource "aws_instance" "bdd" {
  ami           = "ami-0b500ef59d8335eee"
  instance_type = "t2.medium"
  key_name = "awskey"
  tags = {
    Name = "moun-test-bdd"
  }
}
