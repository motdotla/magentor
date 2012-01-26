require 'spec_helper'

describe Magentor do
  it 'should return correct version string' do
    Magentor.version_string.should eq "Magentor version #{Magentor::VERSION}"
  end
end