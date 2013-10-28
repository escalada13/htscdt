require 'test_helper'

class HtscdtsControllerTest < ActionController::TestCase
  setup do
    @htscdt = htscdts(:one)
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
      post :create, htscdt: { author: @htscdt.author, comments: @htscdt.comments, confidence: @htscdt.confidence, date: @htscdt.date, early_triggers: @htscdt.early_triggers, gen_eng_description: @htscdt.gen_eng_description, gen_esp_description: @htscdt.gen_esp_description, htsus: @htscdt.htsus, image_url: @htscdt.image_url, inv_description: @htscdt.inv_description, legal_authority: @htscdt.legal_authority, verified_by: @htscdt.verified_by }
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
    patch :update, id: @htscdt, htscdt: { author: @htscdt.author, comments: @htscdt.comments, confidence: @htscdt.confidence, date: @htscdt.date, early_triggers: @htscdt.early_triggers, gen_eng_description: @htscdt.gen_eng_description, gen_esp_description: @htscdt.gen_esp_description, htsus: @htscdt.htsus, image_url: @htscdt.image_url, inv_description: @htscdt.inv_description, legal_authority: @htscdt.legal_authority, verified_by: @htscdt.verified_by }
    assert_redirected_to htscdt_path(assigns(:htscdt))
  end

  test "should destroy htscdt" do
    assert_difference('Htscdt.count', -1) do
      delete :destroy, id: @htscdt
    end

    assert_redirected_to htscdts_path
  end
end
