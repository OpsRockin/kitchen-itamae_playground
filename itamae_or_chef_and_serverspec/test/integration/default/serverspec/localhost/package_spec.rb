require 'spec_helper'

describe package('tmux') do
  it { should be_installed }
end

