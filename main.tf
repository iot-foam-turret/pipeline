terraform {
  backend "s3" {
    bucket = "iot-turret-terraform"
    key    = "tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  version = "~> 2.28"
  region = "us-west-2"
}

resource "aws_iot_thing" "pi_turret" {
  name = "Pi-Turret"
}
