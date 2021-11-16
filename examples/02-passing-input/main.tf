module "hello_world" {
  # https://www.terraform.io/docs/language/modules/sources.html#github
  source = "git@github.com:mbigras/hello-terraform.git?ref=0.1.0"
  target = "quickstart"
}
