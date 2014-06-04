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
include_recipe 'database::mysql'

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

mysql_connection_info = {
  :host => 'localhost',
  :username => 'root',
  :password => node[:mysql][:server_root_password]
}

mysql_database 'db_wordpress' do
  connection mysql_connection_info
  action :create
end

mysql_database_user 'wp_user' do
  connection    mysql_connection_info
  password      'wp_password'
  database_name 'db_wordpress'
  host          '%'
  privileges    [:all]
  action        :grant
end
