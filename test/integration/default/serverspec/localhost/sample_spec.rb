require 'spec_helper'


describe "Install depends packages" do
  %w{dstat screen}.map do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end
end

describe "files exist" do
  describe file('/tmp/hello.txt') do
    it { should be_file }
  end

  describe file('/tmp/template.txt') do
    it { should be_file }
    its(:content) { should match /World/ }
  end
end
