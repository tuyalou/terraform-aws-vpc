resource "aws_route_table_association" "b1" {
  subnet_id      = "${aws_subnet.public1.id}"
  route_table_id = "${aws_route_table.r.id}"
}

resource "aws_route_table_association" "b2" {
  subnet_id      = "${aws_subnet.public2.id}"
  route_table_id = "${aws_route_table.r.id}"
}

resource "aws_route_table_association" "b3" {
  subnet_id      = "${aws_subnet.public3.id}"
  route_table_id = "${aws_route_table.r.id}"
}

resource "aws_route_table_association" "p1" {
  subnet_id      = "${aws_subnet.private1.id}"
  route_table_id = "${aws_route_table.n.id}"
}

resource "aws_route_table_association" "p2" {
  subnet_id      = "${aws_subnet.private2.id}"
  route_table_id = "${aws_route_table.n.id}"
}

resource "aws_route_table_association" "p3" {
  subnet_id      = "${aws_subnet.private3.id}"
  route_table_id = "${aws_route_table.n.id}"
}