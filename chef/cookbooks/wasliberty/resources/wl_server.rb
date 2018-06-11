########################################################
# Copyright IBM Corp. 2016, 2018
########################################################
actions :add_element
default_action :add_element

#property :name, :kind_of => String, :name_attribute => true
property :install_dir, :kind_of => String
property :timeout, :kind_of => String, :default => '30'
property :force_restart, :kind_of => [TrueClass, FalseClass], :default => false
property :jvm_options, :kind_of => String
property :user, :kind_of => String

