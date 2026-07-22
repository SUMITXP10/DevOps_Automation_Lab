variable "aws_region" {
  default = "ap-south-2"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "root_volume_size" {
  default = 12
}

variable "extra_volume_size" {
  default = 20
}

variable "bucket_name" {
  description = "Unique S3 Bucket Name"
}
