#/bin/sh

export IMG_PATH="/root"

# download the image
wget https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img

# create a new VM with VirtIO SCSI controller
qm create 9000 --memory 2048 --net0 virtio,bridge=vmbr0 --scsihw virtio-scsi-pci

# import the downloaded disk to the local-lvm storage, attaching it as a SCSI drive
qm set 9000 --scsi0 local-lvm:0,import-from=$IMG_PATH/bionic-server-cloudimg-amd64.img

qm set 9000 --ide2 local-lvm:cloudinit

qm set 9000 --boot order=scsi0

qm set 9000 --serial0 socket --vga serial0

qm template 9000