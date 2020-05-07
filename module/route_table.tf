resource "aws_route_table" "r" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "${var.route_table_cidr}"
    # cidr_block = "${var.route_table_cidr}"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
  tags = "${var.tags}"
}

resource "aws_route_table" "n" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "${var.route_table_cidr}"
    gateway_id = "${aws_nat_gateway.gw.id}"
  }
  tags = "${var.tags}"
}