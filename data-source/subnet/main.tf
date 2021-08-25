terraform {
  backend "s3" {
    bucket         = "terraformstate-ram"
    key            = "subnet/tfstate"
    region         = "us-east-2"
    encrypt  = true

    dynamodb_table = "terraform-lock"

  }
}

data "terraform_remote_state" "vpc" {
   backend =  "s3"
   config =  {
      bucket         = "terraformstate-ram"
      key            = "vpc/tfstate"
      region         = "us-east-2"
   }

}


resource "aws_subnet" "my_subnet" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.vpc_id}"

  cidr_block = "172.16.10.0/24"


  tags= {
     Name = "mysubnet"
}
}

