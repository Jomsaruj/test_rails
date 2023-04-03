require "application_system_test_case"

class UniversityStudentsTest < ApplicationSystemTestCase
  setup do
    @university_student = university_students(:one)
  end

  test "visiting the index" do
    visit university_students_url
    assert_selector "h1", text: "University students"
  end

  test "should create university student" do
    visit university_students_url
    click_on "New university student"

    fill_in "Faculty", with: @university_student.faculty
    fill_in "Grade", with: @university_student.grade
    fill_in "Name", with: @university_student.name
    click_on "Create University student"

    assert_text "University student was successfully created"
    click_on "Back"
  end

  test "should update University student" do
    visit university_student_url(@university_student)
    click_on "Edit this university student", match: :first

    fill_in "Faculty", with: @university_student.faculty
    fill_in "Grade", with: @university_student.grade
    fill_in "Name", with: @university_student.name
    click_on "Update University student"

    assert_text "University student was successfully updated"
    click_on "Back"
  end

  test "should destroy University student" do
    visit university_student_url(@university_student)
    click_on "Destroy this university student", match: :first

    assert_text "University student was successfully destroyed"
  end
end
