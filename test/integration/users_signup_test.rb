require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get register_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { username:  "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
    end
    follow_redirect!
    assert_template 'users/new'
  end

  test "valid signup information" do
    get register_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { username:  "Example User",
                                         email: "user@example.com",
                                         password:              "password",
                                         password_confirmation: "password" } }
    end
    follow_redirect!
    assert_template 'home/home'
  end
end
