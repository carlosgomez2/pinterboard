require 'test_helper'

class UserTest < ActiveSupport::TestCase
   def setup
     @user = User.new(id: 1)
   end
   
   test "user has many pins" do
     @user.pins.new(id:1, user_id: 1).valid?
   end
end
