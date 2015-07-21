#
# Cookbook Name:: instrumental
# Recipe:: tools
#
# The MIT License (MIT)
#
# Copyright (c) 2014-2015 Undead Labs, LLC
#

validate_attributes "instrumental"

include_recipe "runit"

group node[:instrumental][:tools][:group] do
  system true
end

user node[:instrumental][:tools][:user] do
  gid node[:instrumental][:tools][:group]
  shell "/bin/false"
  system true
end

if Chef::Resource::ChefGem.instance_methods(false).include?(:compile_time)
  chef_gem "instrumental_tools" do
    compile_time false
  end
else
  chef_gem "instrumental_tools"
end

runit_service "instrumental_tools" do
  default_logger true

  if node[:instrumental][:enabled]
    action [:enable, :start]
  else
    action :create
  end
end
