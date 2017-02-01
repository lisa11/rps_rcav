class GamesController < ApplicationController

  def welcome

    render("games/welcoming_page.html.erb")
  end

  def play_rock
    @player_move = "Rock"
    @player_hand = "fa-hand-rock-o"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @outcome = "tied"
      @label_color = "label-warning"
      @computer_hand = "fa-hand-rock-o"
    elsif @computer_move == "Paper"
      @outcome = "lose"
      @label_color = "label-danger"
      @computer_hand = "fa-hand-paper-o"
    else
      @outcome = "won"
      @label_color = "label-success"
      @computer_hand = "fa-hand-scissors-o"
    end

    render("games/play_game.html.erb")
  end

  def play_scissors
    @player_move = "Scissors"
    @player_hand = "fa-hand-scissors-o"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @outcome = "lose"
      @label_color = "label-danger"
      @computer_hand = "fa-hand-rock-o"
    elsif @computer_move == "Paper"
      @outcome = "won"
      @label_color = "label-success"
      @computer_hand = "fa-hand-paper-o"
    else
      @outcome = "tied"
      @label_color = "label-warning"
      @computer_hand = "fa-hand-scissors-o"
    end

    render("games/play_game.html.erb")
  end

  def play_paper
    @player_move = "Paper"
    @player_hand = "fa-hand-paper-o"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @outcome = "won"
      @label_color = "label-success"
      @computer_hand = "fa-hand-rock-o"
    elsif @computer_move == "Paper"
      @outcome = "tied"
      @label_color = "label-warning"
      @computer_hand = "fa-hand-paper-o"
    else
      @outcome = "lose"
      @label_color = "label-danger"
      @computer_hand = "fa-hand-scissors-o"
    end

    render("games/play_game.html.erb")
  end

end
