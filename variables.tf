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

variable "tags" {
  type = map(string)
  default = {
    Project = "lambda-gw"
    Team = "DevOps"
    Env = "prd"
  }
}
