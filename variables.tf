variable "instance_type" {
	type = string
	default = "t2.micro"
}

variable "ami_id" {
	type = string
	default = "ami-09e67e426f25ce0d7"
	sensitive = true
}


