class GameController < ApplicationController
  def homepage
    render({ :template => "game_templates/homepage" })
  end

  def play
    @user_move = params.fetch("user_move")
    @comp_move = ["rock", "paper", "scissors"].sample
  
    winning_moves = { "rock" => "scissors", "paper" => "rock", "scissors" => "paper" }
  
    if @user_move == @comp_move
      @outcome = "We tied!"
    elsif winning_moves[@user_move] == @comp_move
      @outcome = "We win!"
    else
      @outcome = "We lost!"
    end
    render({ :template => "game_templates/play" })

  end
end
