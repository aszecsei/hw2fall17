require 'part1.rb'

describe "#palindrome?" do
  it "should be defined" do
    expect(lambda {palindrome?("Testing")}).not_to raise_error
  end
  it "should detect palindromes" do
    expect(palindrome?("Madam, I'm Adam")).to be true
  end
  it "should detect not-palindromes" do
    expect(palindrome?("Testing")).to be false
  end
end

describe "#count_words" do
  it "should be defined" do
    expect(lambda{count_words("Testing")}).not_to raise_error
  end
  it "should return a Hash" do
    expect(count_words("Testing")).to be_a_kind_of(Hash) 
  end
  it "should give the correct count" do
    expect(count_words("A man, a plan, a canal -- Panama")["a"]).to eq(3)
    expect(count_words("Doo bee doo bee doo")["doo"]).to eq(3)
    expect(count_words("Doo bee doo bee doo")["bee"]).to eq(2)
  end
end
