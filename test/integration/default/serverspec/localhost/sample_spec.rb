require 'spec_helper'


describe "Install depends packages" do
  %w{dstat screen}.map do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end
end

describe "file exist" do
  describe file('/tmp/hello.txt') do
    it { should be_file }
  end
end

describe "CentOS Only test" do
  describe selinux, :if => os[:family] == 'redhat'  do
    it { should be_disabled }
  end
end
