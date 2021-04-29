class LearningCoursesController < ApplicationController

  def new
    @learning_course = LearningCourse.new
  end

  def create
    @learning_course = LearningCourse.new(learning_course_params)
    @learning_course.user_id = current_user.id
    @learning_course.save
    redirect_to learning_courses_path
  end

  def index
    @learning_courses = LearningCourse.all
  end

  def show
  end

  def destroy
  end

  private

  def learning_course_params
    params.require(:learning_course).permit(:learning_name, :learning_detail, :learning_post_date, :learning_image)
  end

end
