# # Public Subnet
# #########################################################
resource "aws_subnet" "public1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public1_cidr}"
    availability_zone = "${var.region}${var.az1}"
    map_public_ip_on_launch = true
    tags = "${var.tags}"
}
resource "aws_subnet" "public2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public2_cidr}"
    availability_zone = "${var.region}${var.az2}"
    map_public_ip_on_launch = true
    tags = "${var.tags}"
}
resource "aws_subnet" "public3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public3_cidr}"
    availability_zone = "${var.region}${var.az3}"
    map_public_ip_on_launch = true
    tags = "${var.tags}"
}