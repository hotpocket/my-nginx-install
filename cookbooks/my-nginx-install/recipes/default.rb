include_recipe 'nginx'


directory '/var/www/nginx-default' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  recursive true
end

git "/var/www/nginx-default" do
  repository "https://github.com/puppetlabs/exercise-webpage"
  reference "master"
  action :sync
end

directory "/var/www/nginx-default/.git" do
  recursive true
  action :delete
end

