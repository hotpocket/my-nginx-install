#
# Cookbook Name:: ../site-cookbooks/my-nginx-install
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

recipe 'nginx'

git "/var/www/nginx-default" do
  repository "https://github.com/puppetlabs/exercise-webpage"
  reference "master"
  action :sync
end

