# Allocate one Elastic IP for the NAT Gateway

resource "aws_eip" "nat_eip" {
  domain = "vpc"

  depends_on = [aws_internet_gateway.ig]

  tags = merge(var.common_tags, {
    Name = format("%s-%s", aws_vpc.main.id, "EIP")
  })
}

# Create one NAT Gateway in the first public subnet
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public[0].id
  depends_on    = [aws_internet_gateway.ig]

  tags = merge(var.common_tags, {
    Name = format("%s-%s", aws_vpc.main.id, "NAT")
  })
}

