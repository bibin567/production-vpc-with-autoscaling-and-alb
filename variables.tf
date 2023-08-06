variable "aws_region" {
  description = "AWS region for creating resources."
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "private_subnet_cidr_1" {
  description = "CIDR block for the private subnet in Availability Zone 1."
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr_2" {
  description = "CIDR block for the private subnet in Availability Zone 2."
  default     = "10.0.2.0/24"
}

variable "availability_zone_1" {
  description = "Availability Zone for the private subnet 1."
  default     = "us-east-1a"
}

variable "availability_zone_2" {
  description = "Availability Zone for the private subnet 2."
  default     = "us-east-1b"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances."
  default     = "ami-0f34c5ae932e6f0e4"
}

variable "instance_type" {
  description = "Instance type for the EC2 instances."
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key name for accessing instances."
  default     = "new"
}

variable "asg_desired_capacity" {
  description = "Desired capacity for the Auto Scaling Group."
  default     = 2
}

variable "asg_max_size" {
  description = "Maximum size for the Auto Scaling Group."
  default     = 2
}

variable "asg_min_size" {
  description = "Minimum size for the Auto Scaling Group."
  default     = 2
}
