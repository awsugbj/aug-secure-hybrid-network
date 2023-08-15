resource "aws_networkfirewall_firewall_policy" "perimetre" {
  name = "${var.resource_prefix}-nfw-policy-perimetre"

  firewall_policy {
    stateless_default_actions          = ["aws:pass"]
    stateless_fragment_default_actions = ["aws:drop"]
    # stateless_rule_group_reference {
    #   priority     = 1
    #   resource_arn = aws_networkfirewall_rule_group.example.arn
    # }
  }

  tags = {
    Name = "${var.resource_prefix}-nfw-policy-perimetre"
  }
}

resource "aws_networkfirewall_firewall" "perimetre" {
  name                = "${var.resource_prefix}-nfw-perimetre"
  firewall_policy_arn = aws_networkfirewall_firewall_policy.perimetre.arn
  vpc_id              = aws_vpc.perimetre.id

  subnet_mapping {
    subnet_id = aws_subnet.nfw_a.id
  }

  subnet_mapping {
    subnet_id = aws_subnet.nfw_b.id
  }

  tags = {
    Name = "${var.resource_prefix}-nfw-perimetre"
  }
}