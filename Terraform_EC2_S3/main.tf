data "aws_ami" "ubuntu" {
  most_recent = true

  owners = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  root_block_device {
    volume_size           = var.root_volume_size
    volume_type           = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "Terraform-EC2"
  }
}

resource "aws_ebs_volume" "extra_volume" {
  availability_zone = aws_instance.ec2.availability_zone
  size              = var.extra_volume_size
  type              = "gp3"

  tags = {
    Name = "Terraform-Extra-Volume"
  }
}

resource "aws_volume_attachment" "extra_attach" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.extra_volume.id
  instance_id = aws_instance.ec2.id

  force_detach = true
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "Terraform-S3"
  }
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
