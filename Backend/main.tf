module "s3_creation" {
	source = "./modules/Create_s3"
	bucket_name = var.bname
}

module "dynamoDB_creation" {
	source = "./modules/Create_DynamoDB"
	dynamdb_name = var.dynsmoname
	hash_key = var.hash_key
}

resource "aws_instance" "my_instance" {
	ami = var.ami_id
	instance_type = var.instance_type
	tags = {
		Name = "Terra-instance"
	}
} 

data "template_file" "backend" {
	template = "${file("templates/backend.tpl")}"
	vars = {
		bucket_name = var.bname
		key = "backend/terraform.tfstate"
		region = var.aws_region
		dynamo_table = var.dynsmoname
	}
}

