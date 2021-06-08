#####################
## Basic variables ##
#####################

# Build vars
name           = "rockylinux_8.4"
version        = "0.1"
build_dir      = "./packer_builds"
scripts_dir    = "./scripts"
http_dir       = "./http"
templates_dir  = "./templates"
files_dir      = "./files"

# OS vars
iso_checksum   = "846d2b6c1d61900038d0647d2f52ff86e6507fd9bcd12a546a600eb9dee1a5fb"
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
