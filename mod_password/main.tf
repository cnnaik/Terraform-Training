variable "user" {
  description = "Username for which password is to be generated."
  type = string
  default = "cnaik"
}

resource "random_password" "password" {
  length = 8
  special = true
  min_special = 1
  min_lower = 1
  min_upper = 1
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "password" { value = "Hi ${var.user}, password is ${random_password.password.result}" }

