include_recipe 'nginx'


git "/var/www/nginx-default" do
  repository "https://github.com/puppetlabs/exercise-webpage"
  reference "master"
  action :sync
end

directory "/var/www/nginx-default/.git" do
  recursive true
  action :delete
end

