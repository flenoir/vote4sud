class AddVilleIdToCandidats < ActiveRecord::Migration
  def change
    add_column :candidats, :ville_id, :integer
  end
end
