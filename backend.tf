terraform {
  backend "s3" {
    bucket = "tf_backend_01"
    key    = "aws.tf"
    region = "us-west-2"
    use_lockfile  = "true"
  }
}
