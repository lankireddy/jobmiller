require 'test_helper'

class EducationalDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @educational_detail = educational_details(:one)
  end

  test "should get index" do
    get educational_details_url
    assert_response :success
  end

  test "should get new" do
    get new_educational_detail_url
    assert_response :success
  end

  test "should create educational_detail" do
    assert_difference('EducationalDetail.count') do
      post educational_details_url, params: { educational_detail: { basic_qualification: @educational_detail.basic_qualification, percentage: @educational_detail.percentage, percentage_BQ: @educational_detail.percentage_BQ, post_graduation: @educational_detail.post_graduation, university: @educational_detail.university, university_BQ: @educational_detail.university_BQ, user_id: @educational_detail.user_id, year_of_passing: @educational_detail.year_of_passing, year_of_passing_BQ: @educational_detail.year_of_passing_BQ } }
    end

    assert_redirected_to educational_detail_url(EducationalDetail.last)
  end

  test "should show educational_detail" do
    get educational_detail_url(@educational_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_educational_detail_url(@educational_detail)
    assert_response :success
  end

  test "should update educational_detail" do
    patch educational_detail_url(@educational_detail), params: { educational_detail: { basic_qualification: @educational_detail.basic_qualification, percentage: @educational_detail.percentage, percentage_BQ: @educational_detail.percentage_BQ, post_graduation: @educational_detail.post_graduation, university: @educational_detail.university, university_BQ: @educational_detail.university_BQ, user_id: @educational_detail.user_id, year_of_passing: @educational_detail.year_of_passing, year_of_passing_BQ: @educational_detail.year_of_passing_BQ } }
    assert_redirected_to educational_detail_url(@educational_detail)
  end

  test "should destroy educational_detail" do
    assert_difference('EducationalDetail.count', -1) do
      delete educational_detail_url(@educational_detail)
    end

    assert_redirected_to educational_details_url
  end
end
