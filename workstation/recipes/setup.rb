yum_package 'vim-enhanced'
yum_package 'emacs'
yum_package 'nano'

yum_package 'tree' do
action :install
end

yum_package 'git' do
action :install
end


yum_package 'ntp' do
action :install
end

service 'ntpd' do
action [:enable, :start]
end

file '/etc/motd' do
content 'This server is property of dinky butt'
action :create
end

