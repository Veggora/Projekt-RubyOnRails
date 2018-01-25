require 'test_helper'

class AktorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aktor = aktors(:one)
  end

  test "should get index" do
    get aktors_url
    assert_response :success
  end

  test "should get new" do
    get new_aktor_url
    assert_response :success
  end

  test "should create aktor" do
    assert_difference('Aktor.count') do
      post aktors_url, params: { aktor: { name: @aktor.name, surname: @aktor.surname } }
    end

    assert_redirected_to aktor_url(Aktor.last)
  end

  test "should show aktor" do
    get aktor_url(@aktor)
    assert_response :success
  end

  test "should get edit" do
    get edit_aktor_url(@aktor)
    assert_response :success
  end

  test "should update aktor" do
    patch aktor_url(@aktor), params: { aktor: { name: @aktor.name, surname: @aktor.surname } }
    assert_redirected_to aktor_url(@aktor)
  end

  test "should destroy aktor" do
    assert_difference('Aktor.count', -1) do
      delete aktor_url(@aktor)
    end

    assert_redirected_to aktors_url
  end
end
