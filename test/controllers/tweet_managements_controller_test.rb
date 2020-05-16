require 'test_helper'

class TweetManagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet_management = tweet_managements(:one)
  end

  test "should get index" do
    get tweet_managements_url
    assert_response :success
  end

  test "should get new" do
    get new_tweet_management_url
    assert_response :success
  end

  test "should create tweet_management" do
    assert_difference('TweetManagement.count') do
      post tweet_managements_url, params: { tweet_management: { description: @tweet_management.description, name: @tweet_management.name } }
    end

    assert_redirected_to tweet_management_url(TweetManagement.last)
  end

  test "should show tweet_management" do
    get tweet_management_url(@tweet_management)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweet_management_url(@tweet_management)
    assert_response :success
  end

  test "should update tweet_management" do
    patch tweet_management_url(@tweet_management), params: { tweet_management: { description: @tweet_management.description, name: @tweet_management.name } }
    assert_redirected_to tweet_management_url(@tweet_management)
  end

  test "should destroy tweet_management" do
    assert_difference('TweetManagement.count', -1) do
      delete tweet_management_url(@tweet_management)
    end

    assert_redirected_to tweet_managements_url
  end
end
