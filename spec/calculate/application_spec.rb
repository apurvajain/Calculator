require 'spec_helper'

describe 'Application' do

 it " checks launching of application" do 
  calci = Parser.new
  allow(Parser).to receive(:new) { calci }
  allow(Kernel).to receive(:gets) { "add 5" }
  expect(calci).to receive(:change).with("add 5")
  app = Application.new
  app.start_test

 end 
end