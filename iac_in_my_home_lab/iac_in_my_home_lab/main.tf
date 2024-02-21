resource "proxmox_vm_qemu" "vm-clone-1" {
  name        = "vm-clone-1"
  count = 1
  target_node = "${var.proxmox_target_node}"
  full_clone = true
  cores = 2
  sockets = 1
  memory = 2048
  clone = "${var.template_name}"
  sshkeys = "${var.host_public_ssh_key}"
  ipconfig0 = "ip=${var.vm_ip_address}/24,gw=${var.vm_gw_address}"
  boot = "order=scsi0"
  ciuser = "${var.vm_username}"
  cipassword = "${var.vm_password}"
  network {
    model = "virtio"
    bridge = "vmbr0"
  }
}