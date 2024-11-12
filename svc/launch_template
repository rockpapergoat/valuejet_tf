resource "aws_launch_template" "this" {
  name = "${var.service_name}_template"

  block_device_mappings {
    device_name = var.device_name

    ebs {
      volume_size = var.disk_size
    }
  }

  disable_api_stop        = var.disable_api_stop
  disable_api_termination = var.disable_api_termination

  ebs_optimized = var.ebs_optimized

  iam_instance_profile {
    name = var.iam_instance_profile
  }

  image_id = var.ami_id

  instance_initiated_shutdown_behavior = var.shutdown_behavior

  instance_market_options {
    market_type = var.market_type
  }

  instance_type = var.instance_type

  metadata_options {
    instance_metadata_tags = var.instance_metadata_tags
  }

  monitoring {
    enabled = var.monitoring
  }

  network_interfaces {
    associate_public_ip_address = var.public_ip
  }

  placement {
    availability_zone = var.availability_zone
  }

  tag_specifications {
    resource_type = "instance"

    tags = var.tags
  }

  user_data = filebase64("${path.module}/start.sh")
}