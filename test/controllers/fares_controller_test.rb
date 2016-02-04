require 'test_helper'

class FaresControllerTest < ActionController::TestCase
  setup do
    @fare = fares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fare" do
    assert_difference('Fare.count') do
      post :create, fare: { fareDescription: @fare.fareDescription, fareIncReg: @fare.fareIncReg, fareIncSp: @fare.fareIncSp, farePriceReg: @fare.farePriceReg, farePriceSp: @fare.farePriceSp }
    end

    assert_redirected_to fare_path(assigns(:fare))
  end

  test "should show fare" do
    get :show, id: @fare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fare
    assert_response :success
  end

  test "should update fare" do
    patch :update, id: @fare, fare: { fareDescription: @fare.fareDescription, fareIncReg: @fare.fareIncReg, fareIncSp: @fare.fareIncSp, farePriceReg: @fare.farePriceReg, farePriceSp: @fare.farePriceSp }
    assert_redirected_to fare_path(assigns(:fare))
  end

  test "should destroy fare" do
    assert_difference('Fare.count', -1) do
      delete :destroy, id: @fare
    end

    assert_redirected_to fares_path
  end
end
