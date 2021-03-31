class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :color
      t.date :found_on
      t.boolean :injured, default: false
      t.string :species

      t.timestamps
    end
  end
end
