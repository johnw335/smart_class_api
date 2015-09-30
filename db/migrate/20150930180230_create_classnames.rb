class CreateClassnames < ActiveRecord::Migration
  def change
    create_table :classnames do |t|
      t.belongs_to :teacher
      t.string :name
    end
  end
end
