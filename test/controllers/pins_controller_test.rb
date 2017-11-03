require 'test_helper'

class PinsControllerTest < ActionController::TestCase

  test "show all pins on index" do
    get :index
    assert_response :success
    assert_select "h2", text: "MyString_one"
    assert_select "p", text: "Submitted by test@pinterboard.com"
  end

  test "show pin" do
    get :show, controller: "pins", id: "1"
    assert_response :success
    assert_select "h1", text: "MyString_one"
    assert_select "p", text: "Submitted by test@pinterboard.com"

    get :show, controller: "pins", id: "2"
    assert_response :success
    assert_select "h1", text: "MyString_two"
    assert_select "p", text: "Submitted by test@pinterboard.com"
  end

end
