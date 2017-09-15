require 'part5.rb'

describe "CartesianProduct" do
  it "should exist" do
#    lambda { CartesianProduct.new(1..2,3..4) }.should_not raise_error
    expect(lambda { CartesianProduct.new(1..2,3..4) }).not_to raise_error
  end
  
  it "should return the correct result" do
    #expect(CartesianProduct.new(1..2, 3..4)).to
  end
end

