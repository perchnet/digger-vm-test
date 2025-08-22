terraform {
  backend "http" {
    update_method = "PUT"
    address       = var.state_par_url
  }
}
variable "state_par_url" {
  type = string
}