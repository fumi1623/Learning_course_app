class CreateLearningCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :learning_courses do |t|
      t.string :learning_name
      t.string :learning_id
      t.text :learning_detail
      t.date :learning_post_date
      t.date :learning_upgrade_date
      t.string :learning_image_id
      t.string :user_id

      t.timestamps
    end
  end
end
