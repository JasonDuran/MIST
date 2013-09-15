require 'active_record'
require '../../spec/spec_helper'
require '../../app/models/standard'

describe Standard do

  it 'Ensure can not save w/o name and version' do
    #stan = Standard.new
    #stan.valid?.should be_false
  end

end
