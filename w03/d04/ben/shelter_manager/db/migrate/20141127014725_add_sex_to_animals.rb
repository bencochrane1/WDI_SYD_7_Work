class AddSexToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :sex, :string
  end
end
