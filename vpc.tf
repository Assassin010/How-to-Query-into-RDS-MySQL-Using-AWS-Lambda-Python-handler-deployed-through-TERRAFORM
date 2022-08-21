resource "aws_vpc" "test0-vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    tags = {
        Name = "TEST-VPC"
    }
}


resource "aws_security_group" "rdssg" {
    name = "rdssg"
    vpc_id =  aws_vpc.test0-vpc.id

    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
}


resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.test0-vpc.id

  tags = {
    Name = "main"
  }
}


resource "aws_route_table" "example" {
    vpc_id = "${aws_vpc.test0-vpc.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.gw.id}"
    }

    tags = {
        Name = "routing"
    }
}

resource "aws_route_table_association" "assoc" {
subnet_id = "${aws_subnet.subnet_2.id}"
route_table_id = "${aws_route_table.example.id}"
}