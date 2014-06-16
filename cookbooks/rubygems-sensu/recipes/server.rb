include_recipe 'chef-vault'

sensu_creds = ChefVault::Item.load("sensu", "credentials")

node.default['sensu']['use_ssl'] = false
node.default['sensu']['dashboard']['bind'] = '0.0.0.0'
node.default['sensu']['dashboard']['user'] = sensu_creds['user']
node.default['sensu']['dashboard']['password'] = sensu_creds['password']

include_recipe "sensu::rabbitmq"
include_recipe "sensu::redis"
include_recipe "sensu::server_service"
include_recipe "sensu::api_service"
include_recipe "sensu::dashboard_service"
