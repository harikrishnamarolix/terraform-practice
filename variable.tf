variable "vpc_cidr" {
  type = string
 default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
    type = list 
    default = ["10.0.1.0/24","10.0.2.0/24"]
}
variable "azs" {
    type = list 
    default = ["us-east-2a","us-east-2b"]
}
variable "public_subnet_Names" {
    type = list 
    default = ["public-2a","public-2b"]
}

variable "private_subnet" {
    type = map 
    default = {
        private-subnet-1 = {
            Name = "private-1a"
            cidr = "10.0.14.0/24"
            az = "us-east-2a"
        }
        private-subnet-2 = {
            Name = "private-1b"
            cidr = "10.0.15.0/24"
            az = "us-east-2b"
        }
        private-subnet-3 = {
            Name = "private-1c"
            cidr = "10.0.16.0/24"
            az = "us-east-2c"
        }
    }
  
}