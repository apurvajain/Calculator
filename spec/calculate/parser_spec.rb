require 'spec_helper'

describe 'Parser' do

  let(:parse1) {Parser.new}

  it 'checks parsing - add' do
    expect(parse1.change("add 5")).to eq(5)
  end

  it 'checks parsing - sub' do
    parse1.change("add 5")
    expect(parse1.change("sub 2")).to eq(3)
  end

  it 'checks parsing - multiply' do
    parse1.change("add 5")
    parse1.change("sub 2")
    expect(parse1.change("multiply 2")).to eq(6)
  end
  
  it 'checks parsing - divide' do
    parse1.change("add 5")
    parse1.change("sub 2")
    parse1.change("multiply 2")
    expect(parse1.change("divide 3")).to eq(2)
  end

  it 'checks parsing - cancel' do
    parse1.change("add 5")
    parse1.change("sub 2")
    parse1.change("multiply 2")
    parse1.change("divide 3")
    expect(parse1.change("cancel")).to eq(0)
  end

end

