resource "aws_connect_contact_flow" "Terraform_Contact_Flow" {
  instance_id  = var.instance_id
  name         = "Terraform_Contact_Flow"
  description  = "Test Contact Flow Description"
  type         = "CONTACT_FLOW"
  filename     = "flow01.json"
  content_hash = filebase64sha256("flow01.json")
  tags = {
    "Name"        = "Terraform Contact Flow",
    "Application" = "Terraform",
    "Method"      = "Create"
  }
}