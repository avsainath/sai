resource "aws_vpc" "vpc" { 
    cidr_block = var.vpcip1
    tags={
        "Name"=var.vpcname
    }
  
}
resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnetid
    tags={
        Name=var.subname
    }
    depends_on = [ aws_vpc.vpc ]
  
}
