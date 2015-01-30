require './potato'

require 'rspec'

describe Potato do
  it 'should have a location' do
    expect(Potato.new).to respond_to(:location)
  end

  it 'should be in the ground when it is a new potato' do
    expect(Potato.new.location).to eq('ground')
  end

  it 'should be able to be harvested' do
    potato = Potato.new
    potato.harvest!
    expect(potato.location).to eq('basket')
  end

  it 'should not have the ability to set the location' do
    expect(Potato.new).to_not respond_to(:location=)
  end
end
