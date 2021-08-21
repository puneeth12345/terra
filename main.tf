resource "aws_instance" "my_instance" {
	ami = "ami-09e67e426f25ce0d7"
	instance_type = "t2.micro"
	tags = {
		Name = "Terra-instance"
	}
}
