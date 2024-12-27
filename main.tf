/*
 
# use region that your account is linked to
# provide access key and secret key
provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

# provisioning resources format
#resource "<provider>_<resource_type>" "name" {
    # this is where you provide config options
    # these will be basic key value pairs

#}

# create a aws t2.micro EC2 instance
resource "aws_instance" "myServer" {
    ami = "ami-0230bd60aa48260c6"
    instance_type = "t2.micro"

    tags = {
        Name = "ubuntu1"
    }
}

# create VPC1
resource "aws_vpc" "VPC1" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "production"
    }
}

# create VPC2
resource "aws_vpc" "VPC2" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "Dev"
    }
}

# create a subnet for VPC1
resource "aws_subnet" "subnet1" {
    vpc_id = "${aws_vpc.VPC1.id}" #this references the ID of the VPC1 above
    cidr_block = "10.1.0.0/24"

    tags = {
        Name = "prodSubnet"
    }
}

# create a subnet for VPC2
resource "aws_subnet" "subnet2" {
    vpc_id = "${aws_vpc.VPC2.id}" #this references the ID of the VPC2 above
    cidr_block = "10.1.0.0/24"

    tags = {
        Name = "devSubnet"
    }
}

*/