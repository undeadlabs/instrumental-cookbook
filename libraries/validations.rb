#
# Cookbook Name:: instrumental
# Library:: validations
#
# The MIT License (MIT)
#
# Copyright (c) 2014 Undead Labs, LLC
#

module Instrumental
  module Validations
    class << self
      def validate!(node)
        if node[:instrumental].nil?
          Chef::Application.fatal!("Must set attribute: 'instrumental' to a hash.")
        end
        if node[:instrumental][:tools].nil?
          Chef::Application.fatal!("Must set attribtue: 'instrumental.tools' to a hash.")
        end
        if node[:instrumental][:api_key].nil? || node[:instrumental][:api_key].empty?
          Chef::Application.fatal!("Must set attribute: 'instrumental.api_key to a string.")
        end
        true
      end
    end
  end
end
