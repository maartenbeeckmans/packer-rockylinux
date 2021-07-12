#####################
## Basic variables ##
#####################

# Build vars
name           = "rockylinux_8.4"
version        = "1.0"
build_dir      = "./packer_builds"
scripts_dir    = "./scripts"
http_dir       = "./http"
templates_dir  = "./templates"
files_dir      = "./files"

# OS vars
iso_checksum   = "53a62a72881b931bdad6b13bcece7c3a2d4ca9c4a2f1e1a8029d081dd25ea61f"
iso_name       = "Rocky-8.4-x86_64-boot.iso"
kickstart_path = "anaconda-ks.cfg"
template       = "rockylinux-8.4-x86_64"
mirror         = "http://rockylinux.cu.be/mirror/pub/rocky"
mirror_dir     = "8.4/isos/x86_64"

# VM vars
box_basename   = "rockylinux_8"
cpus           = 2
memory         = 2048
disk_size      = "10G"
headless       = true
