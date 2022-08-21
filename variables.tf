# Define policy ARNs as list
variable "iam_policy_arn" {
  description = "IAM Policy to be attached to role"
  type        = list(string)
}

variable "aws_region" {
    default = "us-east-1"
    description = "AWS Region to deploy to"
}


variable "vpc_cidr" {
default = "10.0.0.0/16"
}



variable "identifier" {
  default     = "mydb-rds"
  description = "Identifier for your DB"
}

variable "storage" {
  default     = "10"
  description = "Storage size in GB"
}

variable "engine" {
  default     = "mysql"
  description = "Engine type, here it is mysql"
}

variable "engine_version" {
  description = "Engine version"

  default = {
    mysql    = "8.0.28"
  }
}

variable "instance_class" {
  default     = "db.t2.micro"
  description = "Instance class"
}

variable "db_name" {
  default     = "kolwezidb"
  description = "db name"
}

variable "username" {
  default     = "gauthier"
  description = "User name"
}

variable "db_password" {
  description = "RDS root user password"
  default = "kolweziYetu"
  sensitive   = true
}
variable "subnet_1_cidr" {
  default     = "10.0.2.0/24"
  description = "Your AZ"
}

variable "subnet_2_cidr" {
  default     = "10.0.3.0/24"
  description = "Your AZ"
}

variable "az_1" {
  default     = "us-east-1a"
  description = "Your Az1, use AWS CLI to find your account specific"
}

variable "az_2" {
  default     = "us-east-1b"
  description = "Your Az2, use AWS CLI to find your account specific"
}
