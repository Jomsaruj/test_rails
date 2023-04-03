require "test_helper"

class UniversityStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @university_student = university_students(:one)
  end

  test "should get index" do
    get university_students_url
    assert_response :success
  end

  test "should get new" do
    get new_university_student_url
    assert_response :success
  end

  test "should create university_student" do
    assert_difference("UniversityStudent.count") do
      post university_students_url, params: { university_student: { faculty: @university_student.faculty, grade: @university_student.grade, name: @university_student.name } }
    end

    assert_redirected_to university_student_url(UniversityStudent.last)
  end

  test "should show university_student" do
    get university_student_url(@university_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_university_student_url(@university_student)
    assert_response :success
  end

  test "should update university_student" do
    patch university_student_url(@university_student), params: { university_student: { faculty: @university_student.faculty, grade: @university_student.grade, name: @university_student.name } }
    assert_redirected_to university_student_url(@university_student)
  end

  test "should destroy university_student" do
    assert_difference("UniversityStudent.count", -1) do
      delete university_student_url(@university_student)
    end

    assert_redirected_to university_students_url
  end
end
