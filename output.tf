output "aws_vpc" {
  
  value = aws_vpc.main.id
}

output "vpc_info" {
  value = data.aws_vpc.default
}

output "ami_id_info" {
    value = data.aws_ami.ami_id.id
}

output "region_names" {
    value = data.aws_regions.current.names
}

output "azs" {

    value = data.aws_availability_zones.available
  
}