file '/tmp/date.txt' do
  content Time.now.to_s
end

# care for chef-apply
node.normal.merge!(
  JSON.parse(
    File.read(
      File.expand_path("../../dna.json", __FILE__)
    )
  )
) if self.class.to_s == 'Chef::Recipe'

file '/tmp/message.txt' do
  content node[:message]
end
