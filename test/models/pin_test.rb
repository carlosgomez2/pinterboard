require 'test_helper'

class PinTest < ActiveSupport::TestCase
  def setup
    @pin = Pin.new
    @relationship = Pin.new(id: 1, user_id: 1)
  end

  test "pins are valid if they have data" do
    @pin.title = "Some title"
    @pin.description = "Some description"
    assert @pin.valid?
  end

  test "pins are not valid if blank" do
    @pin.title = nil
    @pin.description = nil
    refute @pin.valid?
  end

  test "pin belongs to user" do
    @relationship.valid?
  end
end
