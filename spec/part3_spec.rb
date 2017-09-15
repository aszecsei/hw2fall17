require 'part3.rb'

describe "dessert" do
  it "should define a constructor" do
#    lambda { Dessert.new('a', 1) }.should_not raise_error
    expect(lambda {Dessert.new('a', 1)}).not_to raise_error
  end
 [:healthy?, :delicious?].each do |method|
    it "should define #{method}" do
#      Dessert.new('a',1).should respond_to method
      expect(Dessert.new('a',1)).to respond_to(method)
    end
  end
  it "should store calories" do
      expect(Dessert.new('celery', 1).calories).to eq(1)
  end
  it "should sometimes be healthy" do
      expect(Dessert.new('celery', 1).healthy?).to be true
      expect(Dessert.new('ice cream', 500).healthy?).to be false
  end
  it "should be delicious" do
      expect(Dessert.new('ice cream', 500).delicious?).to be true
  end
end

describe "jellybean" do
  it "should define a constructor" do
#    lambda { JellyBean.new('a', 1, 2) }.should_not raise_error
    expect(lambda { JellyBean.new('a', 1, 2) }).not_to raise_error
  end
    [:healthy?, :delicious?].each do |method|
    it "should define #{method}" do
#      JellyBean.new('a',1, 2).should respond_to method 
      expect(JellyBean.new('a',1, 2)).to respond_to(method) 
    end
  end
  it "should store calories" do
      expect(JellyBean.new('a', 1, 'red licorice').calories).to eq(1)
  end
  it "should sometimes be healthy" do
      expect(JellyBean.new('a', 1, 'red licorice').healthy?).to be true
      expect(JellyBean.new('a', 1000, 'red licorice').healthy?).to be false
  end
  it "should sometimes be delicious" do
      expect(JellyBean.new('a', 1, 'red licorice').delicious?).to be true
      expect(JellyBean.new('a', 1, 'black licorice').delicious?).to be false
  end
end
