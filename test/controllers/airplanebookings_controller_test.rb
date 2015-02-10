require 'test_helper'

class AirplanebookingsControllerTest < ActionController::TestCase
  setup do
    @airplanebooking = airplanebookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airplanebookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airplanebooking" do
    assert_difference('Airplanebooking.count') do
      post :create, airplanebooking: { date_of_journey: @airplanebooking.date_of_journey, from: @airplanebooking.from, noOfPassengers: @airplanebooking.noOfPassengers, return_date: @airplanebooking.return_date, to: @airplanebooking.to }
    end

    assert_redirected_to airplanebooking_path(assigns(:airplanebooking))
  end

  test "should show airplanebooking" do
    get :show, id: @airplanebooking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airplanebooking
    assert_response :success
  end

  test "should update airplanebooking" do
    patch :update, id: @airplanebooking, airplanebooking: { date_of_journey: @airplanebooking.date_of_journey, from: @airplanebooking.from, noOfPassengers: @airplanebooking.noOfPassengers, return_date: @airplanebooking.return_date, to: @airplanebooking.to }
    assert_redirected_to airplanebooking_path(assigns(:airplanebooking))
  end

  test "should destroy airplanebooking" do
    assert_difference('Airplanebooking.count', -1) do
      delete :destroy, id: @airplanebooking
    end

    assert_redirected_to airplanebookings_path
  end
end
