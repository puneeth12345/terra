variable "instance_type" {
	type = string
	default = "t2.micro"
}

variable "ami_id" {
	type = string
	default = "ami-09e67e426f25ce0d7"
	sensitive = true
}

variable "bname" {
	type = string
	default = "s3-test-backend-bucket-1111111"
}

variable "dynsmoname" {
	type = string
	default = "backend_dynamoDB"
}

variable "aws_region" {
	type = string
	default = "us-east-1"
}

variable "hash_key" {
	type = string
	default = "LockID"
}

