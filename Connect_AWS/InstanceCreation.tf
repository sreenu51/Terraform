# Ec2 Instance Creation
resource "aws_instance" "My_First_Instance" {
    ami = "ami-08d4ac5b634553e16"
    instance_type = "t2.micro"
    count = 5
    tags = {
      "name" = "Instance1"
    }  
}

resource "aws_vpc" "My_VPC1" {
  cidr_block = "10.4.0.0/16"

  tags = {
    Name = "My_VPC1"
  }
  
}
