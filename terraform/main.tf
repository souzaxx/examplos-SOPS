terraform {
  required_providers {
    sops = {
      source = "carlpett/sops"
      version = "~> 0.5"
    }
  }
}

data "sops_file" "demo-secret" {
  source_file = "demo-secret.enc.json"
}

output "root-value-password" {
  # Access the password variable from the map
  value = nonsensitive(data.sops_file.demo-secret.data["password"])
}

output "mapped-nested-value" {
  # Access the password variable that is under db via the terraform map of data
  value = nonsensitive(data.sops_file.demo-secret.data["db.password"])
}

output "nested-json-value" {
  # Access the password variable that is under db via the terraform object
  value = jsondecode(data.sops_file.demo-secret.raw).db.password
  sensitive = true
}
