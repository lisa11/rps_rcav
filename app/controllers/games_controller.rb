class GamesController < ApplicationController

  def welcome

    render("games/welcoming_page.html.erb")
  end

  def play_rock
    @player_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lose"
    else
      @outcome = "win"
    end

    render("games/play_game.html.erb")
  end

  def play_scissors
    @player_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "lose"
    elsif @computer_move == "paper"
      @outcome = "win"
    else
      @outcome = "tied"
    end

    render("games/play_game.html.erb")
  end

  def play_paper
    @player_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "win"
    elsif @computer_move == "paper"
      @outcome = "tied"
    else
      @outcome = "lose"
    end

    render("games/play_game.html.erb")
  end

end
