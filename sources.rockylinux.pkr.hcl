#############
## Sources ##
#############
source "qemu" "rockylinux8" {
  boot_command     = [
    "<esc><wait>",
    "linux inst.ks=http://{{.HTTPIP}}:{{.HTTPPort}}/${var.kickstart_path} ipv6.disable_ipv6=1",
    "<enter>"
  ]
  boot_wait        = "10s"
  cpus             = "${var.cpus}"
  memory           = "${var.memory}"
  disk_size        = "${var.disk_size}"
  headless         = "${var.headless}"
  http_directory   = "${var.http_dir}"
  iso_checksum     = "${var.iso_checksum}"
  iso_url          = "${var.mirror}/${var.mirror_dir}/${var.iso_name}"
  output_directory = "${var.build_dir}"
  shutdown_command = "sudo -S /sbin/shutdown -hP now"
  ssh_port         = 22
  ssh_timeout      = "3600s"
  ssh_username     = "root"
  ssh_password     = "secret"
  vm_name          = "${var.template}.qcow2"
  accelerator      = "kvm"
  format           = "qcow2"
}
