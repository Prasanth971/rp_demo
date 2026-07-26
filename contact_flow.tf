locals {

lambda_arns = {

dev = "arn:aws:connect:us-west-2:367115304840:instance/dba85ea8-af3e-40d8-ae9c-59302bcd7a23/contact-flow/39be5f6c-fe74-4be9-8624-2484304fe1e5"


}

}

resource "aws_connect_contact_flow" "Terraform_Contact_Flow" {
  instance_id  = var.instance_id
  name         = "Terraform_Contact_Flow"
  description  = "Test Contact Flow Description"
  type         = "CONTACT_FLOW"
  content = templatefile("${path.module}/flow01.json.tftpl", {
    lambda_arn = "arn:aws:connect:us-west-2:367115304840:instance/dba85ea8-af3e-40d8-ae9c-59302bcd7a23/contact-flow/39be5f6c-fe74-4be9-8624-2484304fe1e5"
  })
tags = {
    "Name"        = "Terraform Contact Flow",
    "Application" = "Terraform",
    "Method"      = "Create"
  }
}