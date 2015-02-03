require 'spec_helper'

describe 'Parser' do

  let(:parse1) {Parser.new}

  it 'checks parsing' do
    expect(parse1.change("add 5")).to eq(5)
  end
  
end