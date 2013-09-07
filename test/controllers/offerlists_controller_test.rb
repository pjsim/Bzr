require 'test_helper'

class OfferlistsControllerTest < ActionController::TestCase
  setup do
    @offerlist = offerlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offerlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offerlist" do
    assert_difference('Offerlist.count') do
      post :create, offerlist: { buyer: @offerlist.buyer, date: @offerlist.date, price: @offerlist.price, product_id: @offerlist.product_id }
    end

    assert_redirected_to offerlist_path(assigns(:offerlist))
  end

  test "should show offerlist" do
    get :show, id: @offerlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offerlist
    assert_response :success
  end

  test "should update offerlist" do
    patch :update, id: @offerlist, offerlist: { buyer: @offerlist.buyer, date: @offerlist.date, price: @offerlist.price, product_id: @offerlist.product_id }
    assert_redirected_to offerlist_path(assigns(:offerlist))
  end

  test "should destroy offerlist" do
    assert_difference('Offerlist.count', -1) do
      delete :destroy, id: @offerlist
    end

    assert_redirected_to offerlists_path
  end
end
