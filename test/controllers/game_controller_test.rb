require 'test_helper'

class GameControllerTest < ActionController::TestCase

  def test_starts_new_game_with_game_board
    game = Game.new
    assert_equal [["","",""],["","",""],["","",""]], game.board
  end

  def test_user_can_insert_token_on_board
    game = Game.new
    game.place("x", [2,2])
    assert_equal "x", game.board[2][2]
    refute_equal "x", game.board[1][2]
    game.place("o", [1,1])
    assert_equal "o", game.board[1][1]
    refute_equal "o", game.board[2][2]
  end

  def test_check_for_win_diagonally
    game = Game.new
    game.place("x", [0,0])
    game.place("x", [1,1])
    game.place("x", [2,2])
    assert game.win?
  end

  def test_check_for_win_vertically
    game = Game.new
    game.place("x", [0,0])
    game.place("x", [1,0])
    game.place("x", [2,0])
    assert game.win?
  end

  def test_check_for_win_horizontally
    game = Game.new
    game.place("x", [0,0])
    game.place("x", [0,1])
    game.place("x", [0,2])
    assert game.win?
  end

end
