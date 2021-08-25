resource "aws_instance" "server1" {
ami = "ami-0003569dd0860582f"
instance_type = "t2.micro"
tags= {
Name = "server1"
}
}


resource "aws_instance" "server2" {
ami = "ami-0003569dd0860582f"
instance_type = "t2.micro"
tags= {
Name = "server2"
}
}

resource "aws_instance" "terraform" {
ami = "ami-0b9064170e32bde34"
instance_type = "t2.micro"
tags= {
Name = "terraform"
}
}

