#
# Cookbook Name:: wordpress
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'apache2::default'
include_recipe 'apache2::mod_php5'
include_recipe 'mysql::server'
include_recipe 'php::default'

remote_file "#{Chef::Config[:file_cache_path]}/#{node[:wordpress][:filename]}.tar.gz" do
  action :create
  owner 'root'
  group 'root'
  mode '0644'
  source node[:wordpress][:url]
end

execute 'wordpress_extract' do
  user 'root'
  cwd Chef::Config[:file_cache_path]
  command "tar xvzf #{node[:wordpress][:filename]}.tar.gz"
  action :run
  not_if { ::Dir.exist?("#{Chef::Config[:file_cache_path]}/wordpress")}
end

