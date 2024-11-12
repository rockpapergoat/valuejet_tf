<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.svc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_autoscaling_notification.svc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_notification) | resource |
| [aws_launch_template.svc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_lb.svc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_route53_record.svc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_security_group.svc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_vpc_security_group_egress_rule.svc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_egress_rule) | resource |
| [aws_vpc_security_group_ingress_rule.svc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_ingress_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | ami id for instances | `string` | n/a | yes |
| <a name="input_asg_count"></a> [asg\_count](#input\_asg\_count) | how many instances in the asg to spin up | `number` | `0` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | availability zone (AZ) in which to deploy these instances | `string` | `"us-east-1a"` | no |
| <a name="input_delete_on_termination"></a> [delete\_on\_termination](#input\_delete\_on\_termination) | whether to delete EBS volumes on instance termination | `bool` | `true` | no |
| <a name="input_device_name"></a> [device\_name](#input\_device\_name) | device name for the virtual disk: /dev/sda | `string` | `"/dev/sda"` | no |
| <a name="input_disable_api_stop"></a> [disable\_api\_stop](#input\_disable\_api\_stop) | default behavior for api stop protection: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html | `bool` | `false` | no |
| <a name="input_disable_api_termination"></a> [disable\_api\_termination](#input\_disable\_api\_termination) | default behavior for api termination protection: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingDisableAPITermination.html | `bool` | `true` | no |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | vulume size in GB for EBS disk | `number` | `30` | no |
| <a name="input_disk_type"></a> [disk\_type](#input\_disk\_type) | EBS volume type | `string` | `"gp2"` | no |
| <a name="input_dns_record"></a> [dns\_record](#input\_dns\_record) | create a dns record for this service | `string` | `""` | no |
| <a name="input_ebs_optimized"></a> [ebs\_optimized](#input\_ebs\_optimized) | launch the instance ebs-optimized | `bool` | `true` | no |
| <a name="input_iam_instance_profile"></a> [iam\_instance\_profile](#input\_iam\_instance\_profile) | iam instance profile to assign to these instances: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template#instance-profile | `string` | n/a | yes |
| <a name="input_instance_metadata_tags"></a> [instance\_metadata\_tags](#input\_instance\_metadata\_tags) | whether the instance has access to its own metadata tags | `string` | `"enabled"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | instance type of instances in this asg | `string` | `"t3.small"` | no |
| <a name="input_load_balancer"></a> [load\_balancer](#input\_load\_balancer) | whether to create a load balancer for the service | `bool` | `false` | no |
| <a name="input_market_type"></a> [market\_type](#input\_market\_type) | market type: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template#market-options | `string` | `null` | no |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | whether to enable detailed monitoring: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template#monitoring | `bool` | `false` | no |
| <a name="input_private_dns_name_options"></a> [private\_dns\_name\_options](#input\_private\_dns\_name\_options) | options for the instance hostname (hostname\_type) | `string` | `"resource-name"` | no |
| <a name="input_public_ip"></a> [public\_ip](#input\_public\_ip) | whather to associate a public ip with this instance | `bool` | `false` | no |
| <a name="input_role"></a> [role](#input\_role) | puppet role to assign to this host | `string` | n/a | yes |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | list of additional security groups to associate with these instances | `list(string)` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | service name | `string` | n/a | yes |
| <a name="input_sg_description"></a> [sg\_description](#input\_sg\_description) | describe the security group for this service | `string` | n/a | yes |
| <a name="input_sg_in"></a> [sg\_in](#input\_sg\_in) | map of port(s) and protocols to configure ingress security group rules | `map(any)` | <pre>{<br/>  "ssh": {<br/>    "cidr": "10.140.0.0/22",<br/>    "from_port": 22,<br/>    "protocol": "tcp",<br/>    "to_port": 22<br/>  }<br/>}</pre> | no |
| <a name="input_sg_out"></a> [sg\_out](#input\_sg\_out) | map of port(s) and protocols to configure egress security group rules | `map(any)` | <pre>{<br/>  "ssh": {<br/>    "cidr": "10.140.0.0/22",<br/>    "from_port": 22,<br/>    "protocol": "tcp",<br/>    "to_port": 22<br/>  }<br/>}</pre> | no |
| <a name="input_shutdown_behavior"></a> [shutdown\_behavior](#input\_shutdown\_behavior) | shutdown behavior: stop or terminate | `string` | `"terminate"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | tags to add to these resources | `map(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | the vpc id. use a data lookup, global vars, or remote state lookup to reference this. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->