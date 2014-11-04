#
# Cookbook Name:: instrumental
# Attributes:: Tools
#
# The MIT License (MIT)
#
# Copyright (c) 2014 Undead Labs, LLC
#

default[:instrumental][:tools][:user]     = "instrumental"
default[:instrumental][:tools][:group]    = "instrumental"
default[:instrumental][:tools][:hostname] = node[:fqdn]
