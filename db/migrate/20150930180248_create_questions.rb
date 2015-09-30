class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.belongs_to :teacher
      t.timestamps
    end
  end
end
