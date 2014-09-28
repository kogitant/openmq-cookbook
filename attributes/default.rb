default[:openmq][:user] = "openmq"
default[:openmq][:group] = "openmq"

default[:openmq][:version] = "5.1"
default[:openmq][:archive_file] = "openmq5_1-binary-linux.zip"
default[:openmq][:url] = "http://download.java.net/mq/open-mq/#{default[:openmq][:version]}/latest/#{default[:openmq][:archive_file]}"

default[:openmq][:install_dir] = "/usr/local"
