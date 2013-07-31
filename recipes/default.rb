#
# Cookbook Name:: berks-development
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

group node[:development][:group]

user node[:development][:user] do
  group node[:development][:group]
  system true
  shell "/bin/bash"
end

include_recipe "apache2"
