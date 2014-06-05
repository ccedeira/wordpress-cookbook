default[:wordpress][:version] = '3.9.1'
default[:wordpress][:extension] = '.tar.gz'
default[:wordpress][:filename] = "wordpress-#{node[:wordpress][:version]}#{node[:wordpress][:extension]}"
default[:wordpress][:url] = "http://wordpress.org/#{node[:wordpress][:filename]}"
default[:wordpress][:db_name] = 'db_wordpress'
default[:wordpress][:user] = 'wp_user'
default[:wordpress][:db_password] = 'wp_password'
