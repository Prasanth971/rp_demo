terraform {
  backend "s3" {
    bucket = "ejtfbackend01"
    key    = "aws.tf"
    region = "us-west-2"
    use_lockfile  = "true"
  }
}
