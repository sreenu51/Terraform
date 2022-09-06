#Terraform block

terraform {
    required_version = "~>0.14"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~>3.0"
        }
    }
}

# Providers block 

provider "aws" {
    region = "us-east-1"
}

# Variable decleration

variable "vpcname" {
    type = string
    default = "MyVpc"
  
}

variable "PortNumber" {
    type = number 
    default = 22
  
}

variable "Mylist" {
    type = list(sting)
    default = [ "vlue1","value2" ]
  
}

variable "Mymap" {
    type = Mymap
    default = {
        key1 = "value1"
        key2 = "value2"
    }
}

variable "inputname" {
    type = string
    description = "set the name of the VPC"
  
}

resource "aws_vpc" "MyVpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      "key1" = "value1"
    }
  
}


output "Myoutput" {
    value = aws_vpc.MyVpc.id
  
}
