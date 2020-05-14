resource "aws_instance" "web" {
  ami      = "${data.aws_ami.centos.id}"
  instance_type = "t2.medium"
  associate_public_ip_address = true
  key_name      =  "${aws_key_pair.us-east-1-key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
  subnet_id     = "${aws_subnet.public1.id}"
  source_dest_check = false
  availability_zone = "${var.region}${var.az1}"
  tags = "${var.tags}"
}