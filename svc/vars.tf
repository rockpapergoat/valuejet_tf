variable "service_name" {
  description = "service name"
  type        = string
}

variable "ports" {
  description = "port or ports service listens on"
  type        = list(number)
}

variable "role" {
  description = "puppet role to assign to this host"
  type        = string
}

variable "disk_size" {
  description = "vulume size in GB for EBS disk"
  type        = number
  default     = 30
}

variable "disk_type" {
  description = "EBS volume type"
  type        = string
  default     = "gp2"
}

variable "delete_on_termination" {
  description = "whether to delete EBS volumes on instance termination"
  type        = bool
  default     = true
}

variable "instance_type" {
  description = "instance type of instances in this asg"
  type        = string
  default     = "t3.small"
}

variable "device_name" {
  description = "device name for the virtual disk: /dev/sda"
  type        = string
  default     = "/dev/sda"
}

variable "ebs_optimized" {
  description = "launch the instance ebs-optimized"
  type        = bool
  default     = true
}

variable "disable_api_stop" {
  description = "default behavior for api stop protection: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html"
  type        = bool
  default     = false
}

variable "disable_api_termination" {
  description = "default behavior for api termination protection: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingDisableAPITermination.html"
  type        = bool
  default     = true
}

variable "instance_metadata_tags" {
  description = "whether the instance has access to its own metadata tags"
  type        = string
  default     = "enabled"
}

variable "ami_id" {
  description = "ami id for instances"
  type        = string
  #default = rocky_image_here?
}

variable "market_type" {
  description = "market type: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template#market-options"
  type        = string
  default     = null
  nullable    = true
}

variable "iam_instance_profile" {
  description = "iam instance profile to assign to these instances: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template#instance-profile"
  type        = string
}

variable "monitoring" {
  description = "whether to enable detailed monitoring: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template#monitoring"
  type        = bool
  default     = false
}

variable "public_ip" {
  description = "whather to associate a public ip with this instance"
  type        = bool
  default     = false
}

variable "availability_zone" {
  description = "availability zone (AZ) in which to deploy these instances"
  type        = string
  default     = "us-east-1a"
}

variable "security_groups" {
  description = "list of additional security groups to associate with these instances"
  type        = list(string)
}

variable "shutdown_behavior" {
  description = "shutdown behavior: stop or terminate"
  type        = string
  default     = "terminate"

}

variable "private_dns_name_options" {
  description = "options for the instance hostname (hostname_type)"
  type        = string
  default     = "resource-name"
}

variable "tags" {
  description = "tags to add to these resources"
  type        = map(string)
}

variable "load_balancer" {
  description = "whether to create a load balancer for the service"
  type        = bool
  default     = false
}

variable "dns_record" {
  description = "create a dns record for this service"
  type        = string
  default     = ""
}

variable "asg_count" {
  description = "how many instances in the asg to spin up"
  type        = number
  default     = 0
}

