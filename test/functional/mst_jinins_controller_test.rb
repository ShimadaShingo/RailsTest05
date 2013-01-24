require 'test_helper'

class MstJininsControllerTest < ActionController::TestCase
  setup do
    @mst_jinin = mst_jinins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mst_jinins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mst_jinin" do
    assert_difference('MstJinin.count') do
      post :create, mst_jinin: { authoritylevel: @mst_jinin.authoritylevel, contact1: @mst_jinin.contact1, contact2: @mst_jinin.contact2, contact3: @mst_jinin.contact3, id: @mst_jinin.id, kana_mei: @mst_jinin.kana_mei, kana_sei: @mst_jinin.kana_sei, mailaddress1: @mst_jinin.mailaddress1, mailaddress2: @mst_jinin.mailaddress2, mailaddress3: @mst_jinin.mailaddress3, name_sei: @mst_jinin.name_sei, neme_mei: @mst_jinin.neme_mei, password: @mst_jinin.password, punchnotify: @mst_jinin.punchnotify, registdate: @mst_jinin.registdate, registuser: @mst_jinin.registuser, sendareamail: @mst_jinin.sendareamail, updatedate: @mst_jinin.updatedate, updateuser: @mst_jinin.updateuser }
    end

    assert_redirected_to mst_jinin_path(assigns(:mst_jinin))
  end

  test "should show mst_jinin" do
    get :show, id: @mst_jinin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mst_jinin
    assert_response :success
  end

  test "should update mst_jinin" do
    put :update, id: @mst_jinin, mst_jinin: { authoritylevel: @mst_jinin.authoritylevel, contact1: @mst_jinin.contact1, contact2: @mst_jinin.contact2, contact3: @mst_jinin.contact3, id: @mst_jinin.id, kana_mei: @mst_jinin.kana_mei, kana_sei: @mst_jinin.kana_sei, mailaddress1: @mst_jinin.mailaddress1, mailaddress2: @mst_jinin.mailaddress2, mailaddress3: @mst_jinin.mailaddress3, name_sei: @mst_jinin.name_sei, neme_mei: @mst_jinin.neme_mei, password: @mst_jinin.password, punchnotify: @mst_jinin.punchnotify, registdate: @mst_jinin.registdate, registuser: @mst_jinin.registuser, sendareamail: @mst_jinin.sendareamail, updatedate: @mst_jinin.updatedate, updateuser: @mst_jinin.updateuser }
    assert_redirected_to mst_jinin_path(assigns(:mst_jinin))
  end

  test "should destroy mst_jinin" do
    assert_difference('MstJinin.count', -1) do
      delete :destroy, id: @mst_jinin
    end

    assert_redirected_to mst_jinins_path
  end
end
