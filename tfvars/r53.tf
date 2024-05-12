resource "aws_route53_record" "expense" {
    for_each = aws_instance.expense
    zone_id = var.zone_id
    name = each.key == "frontend-prod" ? var.domain_name : "${each.key}.${var.domain_name}"
    # name = local.record_name
    type = "A"
    ttl = 1
    # count and count.index will not work in locals
    # records =  local.record_value
    records = startswith(each.key, "frontend") ? [each.value.public_ip] : [each.value.private_ip]
    # if records alredy exists
    allow_overwrite = true
}
 