require 'test_helper'

class PicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pic = pics(:one)
  end

   test "should get index" do
    get pics_url
    assert_response :success
  end

  test "should get new" do
    get new_pic_url
    assert_response :success
  end

  test "should create pic" do
    assert_difference('Pic.count') do
      pic pics_url, params: { pic: { body: @pic.body, title: @pic.title, image: @pic.image } }
    end

    assert_redirected_to pic_url(Pic.last)
  end

  test "should show pic" do
    get pic_url(@pic)
    assert_response :success
  end

   test "should get edit" do
    get edit_pic_url(@pic)
    assert_response :success
  end
  test "should update pic" do
    patch pic_url(@pic), params: { pic: { body: @pic.body, title: @pic.title, image: @pic.image } }
    assert_redirected_to pic_url(@pic)
  end 
  test "should destroy post" do
    assert_difference('Pic.count', -1) do
      delete pic_url(@pic)
    end

    assert_redirected_to pic_url
  end
end
