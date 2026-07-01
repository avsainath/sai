resource "aws_instance" "ec2" {
  ami = var.amiid
  instance_type = var.instancetype
  subnet_id = aws_subnet.subnet.id
  key_name = "sainath"
  associate_public_ip_address = true
  tags = {
    Name = var.instance_name
  }
 

   provisioner "local-exec" {
    command = "echo 'Server launched with IP ${self.public_ip}' >> log.txt"
   }
   connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("sainath.pem")
    host        = self.public_ip
  }
}