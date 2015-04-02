#
# Cookbook Name:: instrumental
# Recipe:: tools
#
# The MIT License (MIT)
#
# Copyright (c) 2014 Undead Labs, LLC
#

# disabled until the validation cookbook works with chef 12
#validate_attributes "instrumental"

include_recipe "runit"

group node[:instrumental][:tools][:group] do
  system true
end

user node[:instrumental][:tools][:user] do
  gid node[:instrumental][:tools][:group]
  shell "/bin/false"
  system true
end

chef_gem "instrumental_tools"

runit_service "instrumental_tools" do
  default_logger true
  action [:enable, :start]
end
