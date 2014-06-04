default[:wordpress][:version] = '3.9.1'
default[:wordpress][:filename] = "wordpress-#{node[:wordpress][:version]}"
default[:wordpress][:url] = "http://wordpress.org/#{node[:wordpress][:filename]}.tar.gz"
