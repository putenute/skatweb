require 'test_helper'

class SkatGameScoresControllerTest < ActionController::TestCase
  setup do
    @skat_game_score = skat_game_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skat_game_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skat_game_score" do
    assert_difference('SkatGameScore.count') do
      post :create, skat_game_score: @skat_game_score.attributes
    end

    assert_redirected_to skat_game_score_path(assigns(:skat_game_score))
  end

  test "should show skat_game_score" do
    get :show, id: @skat_game_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skat_game_score
    assert_response :success
  end

  test "should update skat_game_score" do
    put :update, id: @skat_game_score, skat_game_score: @skat_game_score.attributes
    assert_redirected_to skat_game_score_path(assigns(:skat_game_score))
  end

  test "should destroy skat_game_score" do
    assert_difference('SkatGameScore.count', -1) do
      delete :destroy, id: @skat_game_score
    end

    assert_redirected_to skat_game_scores_path
  end
end
