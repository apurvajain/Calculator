require 'spec_helper'

describe 'Parser' do

  let(:parse1) {Parser.new}

  it 'checks parsing - add' do
    expect(parse1.change("add 5")).to eq(["add", "5"])
  end

  it 'checks parsing - sub' do
    parse1.change("add 5")
    expect(parse1.change("sub 2")).to eq(["sub", "2"])
  end

  it 'checks parsing - multiply' do
    parse1.change("add 5")
    parse1.change("sub 2")
    expect(parse1.change("multiply 2")).to eq(["multiply", "2"])
  end
  
  it 'checks parsing - divide' do
    parse1.change("add 5")
    parse1.change("sub 2")
    parse1.change("multiply 2")
    expect(parse1.change("divide 3")).to eq(["divide", "3"])
  end

  it 'checks parsing - cancel' do
    parse1.change("add 5")
    parse1.change("sub 2")
    parse1.change("multiply 2")
    parse1.change("divide 3")
    expect(parse1.change("cancel")).to eq(["cancel"])
  end
  
end