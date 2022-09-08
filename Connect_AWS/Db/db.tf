# Create DB
provider "aws" {
    region = "us-east-1"
    access_key = "AKIAXTO6YWZ3PKE42DRI"
    secret_key = "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"

    tags = {
        Name = "DbServer"
    }
    
}

variable "Dbname" {
    type = "string"
  
}

module "Dbname" {
    source = "./db"
    Dbname = "MyFirstDb"
  
}


