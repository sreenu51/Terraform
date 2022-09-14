# Create elastic IP

resource "aws_eip" "my-eip" {
    instance = aws_instance.My_First_Instance.id
    vpc = true

    depends_on = [ aws_internet_gateway.vpc-dev-igw ]
    
  
}