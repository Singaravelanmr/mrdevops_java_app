resource "aws_vpc" "velans_vpc" {
    cidr_block = var.cidr_block 
    tags = var.tags
}

resource "aws_internet_gateway" "velans_igw" {
  vpc_id = aws_vpc.velans_vpc.id
  tags = var.tags
}

resource "aws_subnet" "velans_subnet-a" {
  vpc_id     = aws_vpc.velans_vpc.id
  cidr_block = var.sub-a_cidr_block
  availability_zone = var.subnet_az1
  map_public_ip_on_launch = true
  tags = var.tags
}

resource "aws_subnet" "velans_subnet-b" {
  vpc_id     = aws_vpc.velans_vpc.id
  cidr_block = var.sub-b_cidr_block
  availability_zone = var.subnet_az2
  map_public_ip_on_launch = true
  tags = var.tags
}

resource "aws_subnet" "velans_subnet-c" {
  vpc_id     = aws_vpc.velans_vpc.id
  cidr_block = var.sub-c_cidr_block
  availability_zone = var.subnet_az3
  map_public_ip_on_launch = true
  tags = var.tags
}

resource "aws_route_table" "velans_pubic-rt" {
  vpc_id = aws_vpc.velans_vpc.id
  route {
    cidr_block = var.cidr_block_igw
    gateway_id = aws_internet_gateway.velans_igw.id
  }
  tags = var.tags
}

resource "aws_route_table_association" "velans_rt-association1" {
  subnet_id = aws_subnet.velans_subnet-a.id
  route_table_id = aws_route_table.velans_pubic-rt.id
}

resource "aws_route_table_association" "velans_rt-association2" {
  subnet_id = aws_subnet.velans_subnet-b.id
  route_table_id = aws_route_table.velans_pubic-rt.id
}
resource "aws_route_table_association" "velans_rt-association3" {
  subnet_id = aws_subnet.velans_subnet-c.id
  route_table_id = aws_route_table.velans_pubic-rt.id
}



