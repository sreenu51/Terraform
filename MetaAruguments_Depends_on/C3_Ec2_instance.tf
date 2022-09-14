# aws instance creation

resource "aws_instance" "My_First_Instance" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  #count = 5
  key_name      = "terraform_key1"
  #subnet_id = aws_subnet.vpc-dev-public-subnet-1.id
  #vpc_security_group_ids = [aws_security_group.vpc-web]

  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo systemctl enable httpd
    sudo service httpd start  
    sudo echo '<h1>Welcome to StackSimplify - APP-1</h1>' | sudo tee /var/www/html/index.html
    EOF
  # user_data = file("apache-install.sh")

  tags = {
    #"Name" = "My_First_Instance-${count.index}"
    "Name" = "My_First_Instance"
    
  }
}