require 'test_helper'

class JobseekarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobseekar = jobseekars(:one)
  end

  test "should get index" do
    get jobseekars_url
    assert_response :success
  end

  test "should get new" do
    get new_jobseekar_url
    assert_response :success
  end

  test "should create jobseekar" do
    assert_difference('Jobseekar.count') do
      post jobseekars_url, params: { jobseekar: { dob: @jobseekar.dob, gender: @jobseekar.gender, user_id: @jobseekar.user_id } }
    end

    assert_redirected_to jobseekar_url(Jobseekar.last)
  end

  test "should show jobseekar" do
    get jobseekar_url(@jobseekar)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobseekar_url(@jobseekar)
    assert_response :success
  end

  test "should update jobseekar" do
    patch jobseekar_url(@jobseekar), params: { jobseekar: { dob: @jobseekar.dob, gender: @jobseekar.gender, user_id: @jobseekar.user_id } }
    assert_redirected_to jobseekar_url(@jobseekar)
  end

  test "should destroy jobseekar" do
    assert_difference('Jobseekar.count', -1) do
      delete jobseekar_url(@jobseekar)
    end

    assert_redirected_to jobseekars_url
  end
end
