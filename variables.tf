variable "region" {
      type = string
      default = "us-east-1"
}

variable "environment" {
      type = string
      default = "prd"
}

variable "username" {
      type = string
      default = "efortes"
}

variable "app_version" {
      type = string
      default = "1.0.0"
}

variable "tags" {
  type = map(string)
  default = {
    Project = "lambda-gw"
    Team = "DevOps"
    Env = "prd"
  }
}
