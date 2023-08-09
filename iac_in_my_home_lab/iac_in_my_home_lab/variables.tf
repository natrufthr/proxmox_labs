variable "host_public_ssh_key" {
  default = ""
}

variable "proxmox_target_node" {
    default = "pve"
}

variable "template_name" {
    default = "VM 9000"
}

variable "vm_ip_address" {
    default = ""
}
variable "vm_gw_address" {
    default = ""
}

variable "vm_username" {
    default = "ubuntu"
}

variable "vm_password" {
    default = "p@ssword123!"
}

variable "proxmox_username" {
    default = ""
}

variable "proxmox_password" {
    default = ""
}

variable "proxmox_api_url" {
    default = ""
}