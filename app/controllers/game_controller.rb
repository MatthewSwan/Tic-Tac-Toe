class GameController < ApplicationController
  def board
    user = User.find_by(session[:user_id])
    user.games.create(board: [["", "", ""],["", "", ""], ["", "", ""]])
    redirect_to root_path
  end

  def marker

    row = params[:location][0]
    column = params[:location][1]
    require "pry"
    binding.pry
    cookies[row.to_i][column.to_i] = params[:token]
  end
end
