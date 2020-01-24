provider "digitalocean" {
  token = var.digitalocean_token

  spaces_access_id  = var.spaces_key
  spaces_secret_key = var.spaces_secret

  version = "~> 1.12"
}

resource "digitalocean_spaces_bucket" "state_bucket" {
  name   = var.bucket_name
  region = "fra1"
  acl    = "private"
}
