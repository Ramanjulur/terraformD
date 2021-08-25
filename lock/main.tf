terraform {
  backend "s3" {
    bucket         = "terraformstate-ram"
    key            = "infra"
    region         = "us-east-2"
    encrypt  = true

    dynamodb_table = "terraform-lock"

  }
}

resource "aws_instance" "sample" {
ami = "ami-0003569dd0860582f"
instance_type = "t2.micro"
tags= {
Name = " sample-dev2"
}
}

