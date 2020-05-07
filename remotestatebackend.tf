terraform {
  backend "s3" {
    bucket = "remotestaetbackendterraform"
    key    = "awsdevstatefile"
    region = "us-east-1"
    profile = "terraformstate"
  }
}
