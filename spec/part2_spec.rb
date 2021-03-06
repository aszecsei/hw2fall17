require 'part2.rb'

describe "#rps_game_winner" do
  it "should be defined" do
#    lambda { rps_game_winner([["X", "P"], ["Y", "S"]]) }.should_not raise_error
    expect(lambda {rps_game_winner([["X", "P"], ["Y", "S"]])}).not_to raise_error
  end
  # this is given for free in the outline
  it "should raise WrongNumberOfPlayersError if there are not exactly two players" do
#    lambda { rps_game_winner([ ["Allen", "S"] ]) }.should raise_error, "No error raised for incorrect number of players"
    expect(lambda { rps_game_winner([ ["Allen", "S"] ]) }).to raise_error(WrongNumberOfPlayersError)
  end
  it "should raise NoSuchStrategyError if the players choose something other than R, P, or S" do
    expect(lambda { rps_game_winner([["John", "S"], ["Mary", "Explode"]]) }).to raise_error(NoSuchStrategyError)
  end
  it "should correctly determine the winner of RPS" do
    expect(rps_game_winner([["John", "S"], ["Mary", "R"]])).to eq(["Mary", "R"])
    expect(rps_game_winner([["John", "S"], ["Mary", "S"]])).to eq(["John", "S"])
    expect(rps_game_winner([["Barry", "P"], ["Frank", "R"]])).to eq(["Barry", "P"])
  end
end

describe "#rps_tournament_winner" do
  it "should be defined" do
#    lambda { rps_tournament_winner([["X", "P"], ["Y", "S"]]) }.should_not raise_error
    expect(lambda { rps_tournament_winner([["X", "P"], ["Y", "S"]]) }).not_to raise_error
  end
  it "should correctly determine tournament winners" do
    expect(rps_tournament_winner([[["John", "R"], ["Mary", "S"]], [["Jason", "P"], ["Betsy", "S"]]])).to eq(["John", "R"])
  end
end
