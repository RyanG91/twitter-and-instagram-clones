require 'test_helper'

class InstapicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instapic = instapics(:one)
  end

  test "should get index" do
    get instapics_url
    assert_response :success
  end

  test "should get new" do
    get new_instapic_url
    assert_response :success
  end

  test "should create instapic" do
    assert_difference('Instapic.count') do
      post instapics_url, params: { instapic: { picture: @instapic.picture, post: @instapic.post, user_id: @instapic.user_id } }
    end

    assert_redirected_to instapic_url(Instapic.last)
  end

  test "should show instapic" do
    get instapic_url(@instapic)
    assert_response :success
  end

  test "should get edit" do
    get edit_instapic_url(@instapic)
    assert_response :success
  end

  test "should update instapic" do
    patch instapic_url(@instapic), params: { instapic: { picture: @instapic.picture, post: @instapic.post, user_id: @instapic.user_id } }
    assert_redirected_to instapic_url(@instapic)
  end

  test "should destroy instapic" do
    assert_difference('Instapic.count', -1) do
      delete instapic_url(@instapic)
    end

    assert_redirected_to instapics_url
  end
end
