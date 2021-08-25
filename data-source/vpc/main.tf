terraform {
  backend "s3" {
    bucket         = "terraformstate-ram"
    key            = "vpc/tfstate"
    region         = "us-east-2"
    encrypt  = true

    dynamodb_table = "terraform-lock"

  }
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/20"

  tags= {
     Name = "myvpc"
}
}


output "vpc_id" {

  value = "${aws_vpc.my_vpc.id}"

}

