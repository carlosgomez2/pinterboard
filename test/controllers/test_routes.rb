require 'test_helper'

class PinsController::RoutesTest < ActionController::TestCase
  def test_routes
    # index root
    assert_routing '/',   controller: "pins", action: "index"
    # action new
    assert_routing '/pins/new', controller: "pins", action: "new"
    # action show, 2 pins
    assert_routing '/pins/1', controller: "pins", action: "show", id: "1"
    assert_routing '/pins/2', controller: "pins", action: "show", id: "2"
    # action edit, 2 pins
    assert_routing '/pins/1/edit', controller: "pins", action: "edit", id: "1"
    assert_routing '/pins/2/edit', controller: "pins", action: "edit", id: "2"
  end
end
