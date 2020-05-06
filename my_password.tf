module "my_password" {
  source = "./mod_password"
}

output "password" { value = "${module.my_password.password}" }

