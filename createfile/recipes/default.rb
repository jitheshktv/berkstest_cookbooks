directory "/tmp/shared" do
  mode 0755
  owner 'root'
  group 'root'
  recursive true
  action :create
end

cookbook_file "/tmp/shared/example.json" do
  source "example_data.json"
  mode 0644
  action :create_if_missing
end
