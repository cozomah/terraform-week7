resource "aws_route_table" "rt1" {
    vpc_id = aws_vpc.vpc1.id
    route  {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gtw1.id
    }
#depends_on = [ aws_internet_gateway.gtw1 ]
}

