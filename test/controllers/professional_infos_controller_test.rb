require 'test_helper'

class ProfessionalInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professional_info = professional_infos(:one)
  end

  test "should get index" do
    get professional_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_professional_info_url
    assert_response :success
  end

  test "should create professional_info" do
    assert_difference('ProfessionalInfo.count') do
      post professional_infos_url, params: { professional_info: { annual_salary: @professional_info.annual_salary, company_name: @professional_info.company_name, functional_area: @professional_info.functional_area, key_skills: @professional_info.key_skills, resume_title: @professional_info.resume_title, text_resume: @professional_info.text_resume, total_exp: @professional_info.total_exp, user_id: @professional_info.user_id } }
    end

    assert_redirected_to professional_info_url(ProfessionalInfo.last)
  end

  test "should show professional_info" do
    get professional_info_url(@professional_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_professional_info_url(@professional_info)
    assert_response :success
  end

  test "should update professional_info" do
    patch professional_info_url(@professional_info), params: { professional_info: { annual_salary: @professional_info.annual_salary, company_name: @professional_info.company_name, functional_area: @professional_info.functional_area, key_skills: @professional_info.key_skills, resume_title: @professional_info.resume_title, text_resume: @professional_info.text_resume, total_exp: @professional_info.total_exp, user_id: @professional_info.user_id } }
    assert_redirected_to professional_info_url(@professional_info)
  end

  test "should destroy professional_info" do
    assert_difference('ProfessionalInfo.count', -1) do
      delete professional_info_url(@professional_info)
    end

    assert_redirected_to professional_infos_url
  end
end
