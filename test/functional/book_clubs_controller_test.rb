require 'test_helper'

class BookClubsControllerTest < ActionController::TestCase
  setup do
    @book_club = book_clubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_clubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_club" do
    assert_difference('BookClub.count') do
      post :create, book_club: @book_club.attributes
    end

    assert_redirected_to book_club_path(assigns(:book_club))
  end

  test "should show book_club" do
    get :show, id: @book_club.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_club.to_param
    assert_response :success
  end

  test "should update book_club" do
    put :update, id: @book_club.to_param, book_club: @book_club.attributes
    assert_redirected_to book_club_path(assigns(:book_club))
  end

  test "should destroy book_club" do
    assert_difference('BookClub.count', -1) do
      delete :destroy, id: @book_club.to_param
    end

    assert_redirected_to book_clubs_path
  end
end
