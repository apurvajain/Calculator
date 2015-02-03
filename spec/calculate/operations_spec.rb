require 'spec_helper'

describe 'Operations' do
	
	let(:operation1) {Operations.new}

	it 'checks operations' do
		expect(operation1.add(5)).to eq(5)
		expect(operation1.add(2)).to eq(7)
		expect(operation1.multiply(3)).to eq(21)
		expect(operation1.cancel).to eq(0)
	end

end