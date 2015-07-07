require 'test_helper'

class TournamentsControllerTest < ActionController::TestCase
  setup do
    @tournament = tournaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tournaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tournament" do
    assert_difference('Tournament.count') do
      post :create, tournament: { category_id: @tournament.category_id, from_date: @tournament.from_date, image: @tournament.image, name: @tournament.name, prize: @tournament.prize, to_date: @tournament.to_date, venue_id: @tournament.venue_id, website: @tournament.website, year: @tournament.year }
    end

    assert_redirected_to tournament_path(assigns(:tournament))
  end

  test "should show tournament" do
    get :show, id: @tournament
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tournament
    assert_response :success
  end

  test "should update tournament" do
    put :update, id: @tournament, tournament: { category_id: @tournament.category_id, from_date: @tournament.from_date, image: @tournament.image, name: @tournament.name, prize: @tournament.prize, to_date: @tournament.to_date, venue_id: @tournament.venue_id, website: @tournament.website, year: @tournament.year }
    assert_redirected_to tournament_path(assigns(:tournament))
  end

  test "should destroy tournament" do
    assert_difference('Tournament.count', -1) do
      delete :destroy, id: @tournament
    end

    assert_redirected_to tournaments_path
  end
end
