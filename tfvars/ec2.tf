# resource <resource-type> <resource-name>
resource "aws_instance" "expense" {
    for_each = var.instance_names # each.key(name define) and each.value(num define)
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-0162dcf909c6da751"] #replace with you SG ID
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            Name = "${each.key}"
            Module = "${each.key}"
            Environment = var.environment
        }
    )
}

