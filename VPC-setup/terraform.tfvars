//AWS 
region      = "us-east-2"
environment = "PROD"

/* module networking */
vpc_cidr             = "10.0.0.0/16"
public_subnets_cidr  = ["10.0.0.0/24"] //List of Public subnet cidr range
private_subnets_cidr = ["10.0.1.0/24"] //List of private subnet cidr range
