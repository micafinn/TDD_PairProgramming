require 'test_helper'

class PostFlowTest < ActionDispatch::IntegrationTest
  test "can see the post#index as homepage" do
    get "/"
    assert_select "h1", "Post#index"
  end

  test "can create a post" do
    get "/posts/new"
    assert_response :success

    post "/posts",
      params: { post: { title: "Post title", body: "Post body"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "h2", "Post title"
  end

  test "can see form on posts#new route" do
    get "/posts/new"
    assert_select "form"
  end

end
