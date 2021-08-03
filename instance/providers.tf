provider "aws" {
access_key = "${var.aws_access_keyID}"
secret_key = "${var.aws_secret_key}"
region = "${var.aws_region}"
}

