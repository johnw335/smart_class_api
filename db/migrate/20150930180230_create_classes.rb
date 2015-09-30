class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.belongs_to :teacher
    end
  end
end
