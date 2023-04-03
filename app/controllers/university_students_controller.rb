class UniversityStudentsController < ApplicationController
  before_action :set_university_student, only: %i[ show edit update destroy ]

  # GET /university_students or /university_students.json
  def index
    @university_students = UniversityStudent.all
  end

  # GET /university_students/1 or /university_students/1.json
  def show
  end

  # GET /university_students/new
  def new
    @university_student = UniversityStudent.new
  end

  # GET /university_students/1/edit
  def edit
  end

  # POST /university_students or /university_students.json
  def create
    @university_student = UniversityStudent.new(university_student_params)

    respond_to do |format|
      if @university_student.save
        format.html { redirect_to university_student_url(@university_student), notice: "University student was successfully created." }
        format.json { render :show, status: :created, location: @university_student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @university_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /university_students/1 or /university_students/1.json
  def update
    respond_to do |format|
      if @university_student.update(university_student_params)
        format.html { redirect_to university_student_url(@university_student), notice: "University student was successfully updated." }
        format.json { render :show, status: :ok, location: @university_student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @university_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /university_students/1 or /university_students/1.json
  def destroy
    @university_student.destroy

    respond_to do |format|
      format.html { redirect_to university_students_url, notice: "University student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university_student
      @university_student = UniversityStudent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def university_student_params
      params.require(:university_student).permit(:name, :faculty, :grade)
    end
end
