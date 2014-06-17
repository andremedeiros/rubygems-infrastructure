#
# Cookbook Name:: rubygems
# Recipe:: default
#

node.default['rubygems']['role_from_base_recipe'] = node.recipes.first.split('-')[1]

include_recipe 'rubygems-chef'
include_recipe 'rubygems-hostname'
include_recipe 'rubygems-hosts'
include_recipe 'rubygems-metrics'
include_recipe 'rubygems-motd'
include_recipe 'rubygems-notify'
include_recipe 'rubygems-ntp'
include_recipe 'rubygems-people'
include_recipe 'rubygems-sensu'
include_recipe 'rubygems-ssh'
include_recipe 'rubygems-utility'