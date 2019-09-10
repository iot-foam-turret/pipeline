terraform {
  backend "s3" {
    bucket = "iot-turret-terraform"
    key    = "tfstate"
    region = "us-west-2"
  }
}