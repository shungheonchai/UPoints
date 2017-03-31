require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get requests_url
    assert_response :success
  end

  test "should get new" do
    get new_request_url
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post requests_url, params: { request: { buyer: @request.buyer, buyer_rating: @request.buyer_rating, exchange_method: @request.exchange_method, food_description: @request.food_description, location: @request.location, price: @request.price, seller: @request.seller, seller_rating: @request.seller_rating, special_request: @request.special_request, time_period: @request.time_period } }
    end

    assert_redirected_to request_url(Request.last)
  end

  test "should show request" do
    get request_url(@request)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_url(@request)
    assert_response :success
  end

  test "should update request" do
    patch request_url(@request), params: { request: { buyer: @request.buyer, buyer_rating: @request.buyer_rating, exchange_method: @request.exchange_method, food_description: @request.food_description, location: @request.location, price: @request.price, seller: @request.seller, seller_rating: @request.seller_rating, special_request: @request.special_request, time_period: @request.time_period } }
    assert_redirected_to request_url(@request)
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete request_url(@request)
    end

    assert_redirected_to requests_url
  end
end
