require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "login user" do
    visit "/"
    login_as users(:george)
  end
end
