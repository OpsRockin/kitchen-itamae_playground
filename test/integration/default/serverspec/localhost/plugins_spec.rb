require 'spec_helper'

describe "CentOS Only test for Selinux plugin" do
  describe selinux, :if => os[:family] == 'redhat'  do
    it { should be_permissive }
  end
end

describe "for git plugin" do
  describe file("/usr/local/bin/git") do
    it { should be_file }
    it { should be_executable }
  end
end

describe "for mail_alias plugin" do
  describe mail_alias('daemon') do
    it { should be_aliased_to 'root' }
  end
end
