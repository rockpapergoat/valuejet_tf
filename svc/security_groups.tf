resource "aws_security_group" "svc" {
  name        = "${var.service_name}_sg"
  description = var.sg_description
  vpc_id      = var.vpc_id
  tags = {
    Name = "${var.service_name}_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "svc" {
  for_each          = var.sg_in
  security_group_id = aws_security_group.this.id
  cidr_ipv4         = each.value["cidr"]
  ip_protocol       = each.value["protocol"]
  from_port         = each.value["from_port"]
  to_port           = each.value["to_port"]
}

resource "aws_vpc_security_group_egress_rule" "svc" {
  for_each          = var.sg_out
  security_group_id = aws_security_group.this.id
  cidr_ipv4         = each.value["cidr"]
  ip_protocol       = each.value["protocol"]
  from_port         = each.value["from_port"]
  to_port           = each.value["to_port"]
}