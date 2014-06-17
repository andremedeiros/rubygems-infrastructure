include_recipe 'chef-vault'

librato_creds = ChefVault::Item.load('librato', 'credentials')

node.default['collectd_librato']['email'] = librato_creds['email']
node.default['collectd_librato']['api_token'] = librato_creds['token']

include_recipe "collectd"
include_recipe "collectd-librato"

include_recipe "collectd_plugins::cpu"
include_recipe "collectd_plugins::df"
include_recipe "collectd_plugins::disk"
include_recipe "collectd_plugins::interface"
include_recipe "collectd_plugins::memory"
include_recipe "collectd_plugins::swap"
include_recipe "collectd_plugins::syslog"