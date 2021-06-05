###########
## Build ##
###########
build {
  sources = ["source.qemu.rockylinux8"]
  provisioner "shell" {
    environment_vars    = ["HOME_DIR=/root",]
    start_retry_timeout = "15m"
    expect_disconnect   = true
    scripts             = [
      "${var.scripts_dir}/dnf.sh",
    ]
  }
  provisioner "shell" {
    environment_vars    = ["HOME_DIR=/root",]
    expect_disconnect   = true
    start_retry_timeout = "15m"
    pause_before = "120s"
    scripts             = [
      "${var.scripts_dir}/profile.sh",
      "${var.scripts_dir}/qemu.sh",
      "${var.scripts_dir}/puppet.sh",
      "${var.scripts_dir}/cloud-init.sh"
    ]
  }
  post-processor "checksum" {
    checksum_types      = [
      "sha256"
    ]
    keep_input_artifact = false
    output              = "${var.build_dir}/rockylinux.box.sha256"
  }
  post-processor "compress" {
    output = "${var.build_dir}/rockylinux.qcow2.tar.gz"
    compression_level = 9
  }
}
