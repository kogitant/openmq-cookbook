#
# Cookbook Name:: openmq-cookbook
# Recipe:: default
#
include_recipe "ark"

src_filename = node[:openmq][:archive_file]
src_filepath = "#{Chef::Config['file_cache_path']}/#{src_filename}"
extract_path = node[:openmq][:install_dir]

user node[:openmq][:user] do
  home "#{extract_path}/openmq"
end

group node[:openmq][:group] do
  members [ node[:openmq][:user] ]
end


remote_file src_filepath do
  source node[:openmq][:url]
  owner node[:openmq][:user]
  group node[:openmq][:group]
  mode "0644"
end

ark 'openmq' do
  url node[:openmq][:url]
  version node[:openmq][:version]
  action :install
end