require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_room_url
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post rooms_url, params: { room: { address: @room.address, city_id: @room.city_id, description: @room.description, images: @room.images, latitude: @room.latitude, longitude: @room.longitude, name: @room.name, price: @room.price, rules: @room.rules } }
    end

    assert_redirected_to room_url(Room.last)
  end

  test "should show room" do
    get room_url(@room)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_url(@room)
    assert_response :success
  end

  test "should update room" do
    patch room_url(@room), params: { room: { address: @room.address, city_id: @room.city_id, description: @room.description, images: @room.images, latitude: @room.latitude, longitude: @room.longitude, name: @room.name, price: @room.price, rules: @room.rules } }
    assert_redirected_to room_url(@room)
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete room_url(@room)
    end

    assert_redirected_to rooms_url
  end
end
