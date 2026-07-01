resource "aws_internet_gateway" "ig1" {
    vpc_id = aws_vpc.vpc.id
    tags={
        "Name"=var.igname
    }
  
}