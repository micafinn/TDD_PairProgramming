require 'test_helper'

class PostHelperTest < ActionView::TestCase
  test "link_to_post helper should get correct path" do
    post = posts(:one)
    assert_dom_equal %{<a href="/posts/#{post.id}">title_string</a> }, link_to_post(post)

  end
end
