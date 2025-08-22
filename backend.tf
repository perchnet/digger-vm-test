terraform {
  backend "http" {
    update_method = "PUT"
    address       = "op://perchnet/oci-par-url/password"
  }
}