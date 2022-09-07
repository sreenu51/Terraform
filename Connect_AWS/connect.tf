#Connect aws account

provider "aws" {
    region = "us-east-1"
    access_key = "AKIAXTO6YWZ3AO5JPLHP"
    secret_key = "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"

  
}

resource "aws_instance" "My_First_Instance" {
    ami = "ami-08d4ac5b634553e16"
    instance_type = "t2.micro"
    security_groups = ["group1"]
    tags = {
      "name" = "tag1"
    }  
}

resource "aws_security_group" "group1" {
    name = "security_group_tf"
    description = "launching first instance"

    ingress = [ {
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "launching first instance"
      from_port = 8080
      ipv6_cidr_blocks = [ "2002:0:0:1234::/64" ]
      prefix_list_ids = [ "tag1" ]
      protocol = "tcp"
      security_groups = [ "group1" ]
      self = false
      to_port = 8080 
    }]
    egress = [ {
      cidr_blocks = [ "0.0.0.0/0" ]
      description = "launching first instance"
      from_port = 0
      ipv6_cidr_blocks = [ "2002:0:0:1234::/64" ]
      prefix_list_ids = [ "tag2" ]
      protocol = "tcp"
      security_groups = [ "group1" ]
      self = false
      to_port = 65535
    } ]
}
