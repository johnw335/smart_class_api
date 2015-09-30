class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.belongs_to :teacher
      t.belongs_to :attendance
      t.timestamps
    end
  end
end
