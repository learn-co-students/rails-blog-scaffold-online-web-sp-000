class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :address
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
