class RenameLearningCourseImage < ActiveRecord::Migration[5.2]
  def change
    rename_column :learning_courses, :learning_image_id, :image_id
  end
end
