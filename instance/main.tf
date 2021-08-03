resource "aws_instance" "web_server" {
ami = "${var.image}"
instance_type = "${var.instance_type}"
tags= {
Name = "${var.server_name}"
}
}

