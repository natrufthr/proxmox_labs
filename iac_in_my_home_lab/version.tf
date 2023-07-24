terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.11"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.3.0"
    }
  }
  required_version = ">= 0.13"
}
provider "proxmox" {
  pm_api_url = "${var.proxmox_api_url}"
  pm_user = "${var.proxmox_username}"
  pm_password = "${var.proxmox_password}"
  pm_tls_insecure = true
  pm_debug = true
}