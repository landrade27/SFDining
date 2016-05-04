require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post :create, restaurant: { buyout: @restaurant.buyout, buyout_price: @restaurant.buyout_price, chefs_table: @restaurant.chefs_table, contact_email: @restaurant.contact_email, contact_name: @restaurant.contact_name, contact_number: @restaurant.contact_number, cuisine: @restaurant.cuisine, full_bar: @restaurant.full_bar, max_people: @restaurant.max_people, min_people: @restaurant.min_people, name: @restaurant.name, neighborhood: @restaurant.neighborhood, private_dining: @restaurant.private_dining, valet: @restaurant.valet }
    end

    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should show restaurant" do
    get :show, id: @restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant
    assert_response :success
  end

  test "should update restaurant" do
    patch :update, id: @restaurant, restaurant: { buyout: @restaurant.buyout, buyout_price: @restaurant.buyout_price, chefs_table: @restaurant.chefs_table, contact_email: @restaurant.contact_email, contact_name: @restaurant.contact_name, contact_number: @restaurant.contact_number, cuisine: @restaurant.cuisine, full_bar: @restaurant.full_bar, max_people: @restaurant.max_people, min_people: @restaurant.min_people, name: @restaurant.name, neighborhood: @restaurant.neighborhood, private_dining: @restaurant.private_dining, valet: @restaurant.valet }
    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete :destroy, id: @restaurant
    end

    assert_redirected_to restaurants_path
  end
end
