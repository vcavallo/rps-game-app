require_relative '../config/environment'
require 'pry'

class PlayTypeError < StandardError
end

class RPSGame
  attr_accessor :gametype, :valid_moves, :tied, :won, :computer_move

  def initialize(gametype)
    case gametype
    when :rock 
      @gametype = gametype
    when :scissors
      @gametype = gametype
    when :paper
      @gametype = gametype
    else
      raise PlayTypeError
    end

    @valid_moves = [:rock, :paper, :scissors]

    @tied = false
    @won = false

  end


  def computer_play
    self.computer_move = self.valid_moves.sample
  end

  def self.valid_play?(move)
    true if move == :rock || move == :scissors || move == :paper
  end

  def won?
    if self.gametype == :rock && computer_play == :scissors
      @won = true
    elsif self.gametype == :paper && computer_play == :rock
      @won = true
    elsif self.gametype == :scissors && computer_play == :paper
      @won = true
    end
    @won
  end

  def tied?
    if gametype == computer_play
      @tied = true
    else
      @tied
    end
    @tied
  end

  def lost?
    if won? || tied?
      false
    else
      true
    end
  end

end