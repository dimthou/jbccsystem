require 'test_helper'

class JbccsControllerTest < ActionController::TestCase
  setup do
    @jbcc = jbccs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jbccs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jbcc" do
    assert_difference('Jbcc.count') do
      post :create, jbcc: { address: @jbcc.address, create_date: @jbcc.create_date, introductor: @jbcc.introductor, kanji: @jbcc.kanji, name: @jbcc.name, remark: @jbcc.remark, service: @jbcc.service, sex: @jbcc.sex, support: @jbcc.support }
    end

    assert_redirected_to jbcc_path(assigns(:jbcc))
  end

  test "should show jbcc" do
    get :show, id: @jbcc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jbcc
    assert_response :success
  end

  test "should update jbcc" do
    patch :update, id: @jbcc, jbcc: { address: @jbcc.address, create_date: @jbcc.create_date, introductor: @jbcc.introductor, kanji: @jbcc.kanji, name: @jbcc.name, remark: @jbcc.remark, service: @jbcc.service, sex: @jbcc.sex, support: @jbcc.support }
    assert_redirected_to jbcc_path(assigns(:jbcc))
  end

  test "should destroy jbcc" do
    assert_difference('Jbcc.count', -1) do
      delete :destroy, id: @jbcc
    end

    assert_redirected_to jbccs_path
  end
end
