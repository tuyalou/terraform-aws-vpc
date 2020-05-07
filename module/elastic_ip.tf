resource "aws_eip" "nat" {
  vpc      = true
  tags = "${var.tags}"
}