file '/tmp/hello.txt' do
  content node['greeting']
end

template "/tmp/template.txt" do
  action :create
  source "templates/template.erb"
  variables(message: "World")
end
