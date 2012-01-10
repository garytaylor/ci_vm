#
# Cookbook Name:: cruise_control_rb
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "git"
gem_package "ruby-shadow"
user "cruise" do
  home "/home/cruise"
  comment "Cruise User"
  supports :manage_home => true
  system false
  password ""
end
bash "install-cruise" do
  code <<-EOH
    cd ~cruise
    git clone https://github.com/thoughtworks/cruisecontrol.rb.git cruise_control
  EOH
end





