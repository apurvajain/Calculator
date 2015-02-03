require 'spec_helper'

describe 'Operations' do
	
	let(:operation1) {Operations.new}
  
  it 'checks operations' do
    expect(operation1.add(5)).to eq(5)
  end
  
  it 'checks operations' do
    operation1.add(5)
    expect(operation1.sub(2)).to eq(3)
  end

  it 'checks operations' do
    operation1.add(5)
    operation1.sub(2)
    expect(operation1.multiply(4)).to eq(12)
  end

  it 'checks operations' do
    operation1.add(5)
    operation1.sub(2)
    operation1.multiply(4)
    expect(operation1.divide(6)).to eq(2)
  end

	it 'checks operations' do
    operation1.add(5)
    operation1.sub(2)
    operation1.multiply(4)
    operation1.divide(6)
		expect(operation1.cancel).to eq(0)
	end

end