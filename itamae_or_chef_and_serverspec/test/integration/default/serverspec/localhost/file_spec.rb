require 'spec_helper'

describe file('/tmp/date.txt') do
  it { should be_file }
end

describe file('/tmp/message.txt') do
  it { should be_file }
  its(:content) { should match /EHLO/ }
end
