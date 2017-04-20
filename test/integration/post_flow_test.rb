require 'test_helper'

class PostFlowTest < ActionDispatch::IntegrationTest
  test "can see the post#index as homepage" do
    get "/"
    assert_select "h1", "Post#index"
  end
end
