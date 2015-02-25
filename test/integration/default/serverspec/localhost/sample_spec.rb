require 'spec_helper'


describe "Install depends packages" do
  %w{dstat tmux}.map do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end
end
