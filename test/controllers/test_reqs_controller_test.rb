require 'test_helper'

class TestReqsControllerTest < ActionController::TestCase
  setup do
    @test_req = test_reqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_reqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_req" do
    assert_difference('TestReq.count') do
      post :create, test_req: { end_date: @test_req.end_date, notes: @test_req.notes, req_type: @test_req.req_type, site: @test_req.site, start_date: @test_req.start_date, unit: @test_req.unit }
    end

    assert_redirected_to test_req_path(assigns(:test_req))
  end

  test "should show test_req" do
    get :show, id: @test_req
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_req
    assert_response :success
  end

  test "should update test_req" do
    patch :update, id: @test_req, test_req: { end_date: @test_req.end_date, notes: @test_req.notes, req_type: @test_req.req_type, site: @test_req.site, start_date: @test_req.start_date, unit: @test_req.unit }
    assert_redirected_to test_req_path(assigns(:test_req))
  end

  test "should destroy test_req" do
    assert_difference('TestReq.count', -1) do
      delete :destroy, id: @test_req
    end

    assert_redirected_to test_reqs_path
  end
end
