class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  p1Choice = Choice.new(game[0][1])
  p2Choice = Choice.new(game[1][1])
  if p1Choice >= p2Choice
    return game[0]
  else
    return game[1]
  end
end

def rps_tournament_winner(tournament)
  begin
    winner = rps_game_winner(tournament)
    return winner
  rescue
    return rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
  end
end

#feel free to add your own helper functions as needed

class Choice
  include Comparable
  attr_reader :value

  def initialize(value)
    raise NoSuchStrategyError unless (value == "R" or value == "P" or value == "S")
    @value = value
  end

  def <=> (other)
    if @value == "R"
      if other.value == "P" then return -1 end
      if other.value == "R" then return 0 end
      if other.value == "S" then return 1 end
    end
    if @value == "P"
      if other.value == "S" then return -1 end
      if other.value == "P" then return 0 end
      if other.value == "R" then return 1 end
    end
    if @value == "S"
      if other.value == "R" then return -1 end
      if other.value == "S" then return 0 end
      if other.value == "P" then return 1 end
    end
  end
end