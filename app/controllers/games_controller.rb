class GamesController < ApplicationController

  def welcome

    render("games/welcoming_page.html.erb")
  end

  def play_rock
    @player_move = "Rock"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @outcome = "tied"
    elsif @computer_move == "Paper"
      @outcome = "lose"
    else
      @outcome = "won"
    end

    render("games/play_game.html.erb")
  end

  def play_scissors
    @player_move = "Scissors"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @outcome = "lose"
    elsif @computer_move == "Paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end

    render("games/play_game.html.erb")
  end

  def play_paper
    @player_move = "Paper"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @outcome = "won"
    elsif @computer_move == "Paper"
      @outcome = "tied"
    else
      @outcome = "lose"
    end

    render("games/play_game.html.erb")
  end

end
