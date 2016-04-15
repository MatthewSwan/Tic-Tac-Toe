require 'test_helper'

class GameControllerTest < ActionController::TestCase
  def test_new_game_board_is_created_at_login
    get :create
    assert_response :redirect
  end

  def test_user_can_insert_token_on_board
    post(:marker, token:  "x", location: "12")
    assert_response :redirect
  end

  def test_check_for_win_diagonally
    skip
    game = GameController.new
    game.place("x", [0,0])
    game.place("x", [1,1])
    game.place("x", [2,2])
    assert game.win?
  end

  def test_check_for_win_other_diagonal
    skip
    game = GameController.new
    game.place("x", [0,2])
    game.place("x", [1,1])
    game.place("x", [2,0])
    assert game.win?
  end

  def test_check_for_win_vertically
    skip
    game = GameController.new
    game.place("x", [0,0])
    game.place("x", [1,0])
    game.place("x", [2,0])
    assert game.win?
  end

  def test_check_for_win_horizontally
    skip
    game = GameController.new
    game.place("x", [0,0])
    game.place("x", [0,1])
    game.place("x", [0,2])
    assert game.win?
  end
end
