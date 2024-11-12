output "svc_asg_id" {
  value = aws_autoscaling_group.svc.id
}

output "svc_sg_id" {
  value = aws_security_group.svc.id
}