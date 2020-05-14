resource "null_resource" "nagios_install" {
  provisioner "remote-exec" {
    connection {
        type            = "ssh"
        user            = "centos"
        private_key     = "${file("~/.ssh/id_rsa")}"
        host            = "${aws_instance.web.public_ip}"
    }
    inline = [
      "sudo yum install curl -y",
      "sudo curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sudo sh",
    ]
  }
}