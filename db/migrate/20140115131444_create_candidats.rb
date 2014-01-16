class CreateCandidats < ActiveRecord::Migration
  def change
    create_table :candidats do |t|
      t.string :nom
      t.string :prenom
      t.string :parti
      t.float :voix
      t.boolean :elu

      t.timestamps
    end
  end
end
