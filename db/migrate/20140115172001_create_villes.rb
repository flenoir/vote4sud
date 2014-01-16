class CreateVilles < ActiveRecord::Migration
  def change
    create_table :villes do |t|
      t.string :nom
      t.string :departement

      t.timestamps
    end
  end
end
