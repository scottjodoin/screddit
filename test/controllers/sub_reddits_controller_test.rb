require 'test_helper'

class SubRedditsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_reddit = sub_reddits(:one)
  end

  test "should get index" do
    get sub_reddits_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_reddit_url
    assert_response :success
  end

  test "should create sub_reddit" do
    assert_difference('SubReddit.count') do
      post sub_reddits_url, params: { sub_reddit: { description: @sub_reddit.description, name: @sub_reddit.name } }
    end

    assert_redirected_to sub_reddit_url(SubReddit.last)
  end

  test "should show sub_reddit" do
    get sub_reddit_url(@sub_reddit)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_reddit_url(@sub_reddit)
    assert_response :success
  end

  test "should update sub_reddit" do
    patch sub_reddit_url(@sub_reddit), params: { sub_reddit: { description: @sub_reddit.description, name: @sub_reddit.name } }
    assert_redirected_to sub_reddit_url(@sub_reddit)
  end

  test "should destroy sub_reddit" do
    assert_difference('SubReddit.count', -1) do
      delete sub_reddit_url(@sub_reddit)
    end

    assert_redirected_to sub_reddits_url
  end
end
