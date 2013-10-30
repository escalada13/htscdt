require 'test_helper'

class HtscdtsControllerTest < ActionController::TestCase
  setup do
    @htscdt = htscdts(:one)
    @update = {
      htsus:'0000.00.0000',
      date:'2013-01-01',
      author:'lorem ipsum',
      verified_by:'lorem ipsum',
      inv_description:'lorem ipsum',
      gen_eng_description:'lorem ipsum',
      gen_esp_description:'lorem ipsum',
      early_triggers:'lorem ipsum',
      legal_authority:'lorem ipsum',
      la_link:'lorem ipsum',
      other_link:'lorem ipsum',
      comments:'Esta es nuestra bd!',
      confidence:'lorem ipsum',
      image_url:'test.jpg'
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:htscdts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create htscdt" do
    assert_difference('Htscdt.count') do
      post :create, htscdt: @update
    end

    assert_redirected_to htscdt_path(assigns(:htscdt))
  end

  test "should show htscdt" do
    get :show, id: @htscdt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @htscdt
    assert_response :success
  end

  test "should update htscdt" do
    patch :update, id: @htscdt, htscdt: @update
    assert_redirected_to htscdt_path(assigns(:htscdt))
  end

  test "should destroy htscdt" do
    assert_difference('Htscdt.count', -1) do
      delete :destroy, id: @htscdt
    end

    assert_redirected_to htscdts_path
  end
end
