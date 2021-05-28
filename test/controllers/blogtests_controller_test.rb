require 'test_helper'

class BlogtestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blogtest = blogtests(:one)
  end

  test "should get index" do
    get blogtests_url
    assert_response :success
  end

  test "should get new" do
    get new_blogtest_url
    assert_response :success
  end

  test "should create blogtest" do
    assert_difference('Blogtest.count') do
      post blogtests_url, params: { blogtest: { text: @blogtest.text, title: @blogtest.title } }
    end

    assert_redirected_to blogtest_url(Blogtest.last)
  end

  test "should show blogtest" do
    get blogtest_url(@blogtest)
    assert_response :success
  end

  test "should get edit" do
    get edit_blogtest_url(@blogtest)
    assert_response :success
  end

  test "should update blogtest" do
    patch blogtest_url(@blogtest), params: { blogtest: { text: @blogtest.text, title: @blogtest.title } }
    assert_redirected_to blogtest_url(@blogtest)
  end

  test "should destroy blogtest" do
    assert_difference('Blogtest.count', -1) do
      delete blogtest_url(@blogtest)
    end

    assert_redirected_to blogtests_url
  end
end
