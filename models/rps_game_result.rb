class RPSGameResult 

  def initialize(opts={})
    @human_play = opts[:human_play]
    @computer_play = opts[:computer_play]
    @won = opts[:won]
  end

  def won?
    @won
  end

  def tied?
    @human_play == @computer_play
  end

  def self.game_result
    
  end

end
