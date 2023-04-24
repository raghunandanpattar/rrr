provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "ec-2-instance"{
    ami = "ami-06e46074ae430fba6"
    instance_type = "t2.micro"

    count = var.ec2_count
    vpc_security_group_ids = [aws_security_group.ec2-sg.id]
    subnet_id = element(var.subnets,count.index)
    tags = {
        Name = "${var.environment}.${var.product}.${count.index}"
    }
}
