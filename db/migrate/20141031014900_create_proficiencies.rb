class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
    	t.references :user
    	t.references :profession
    	t.integer :years_of_exp
    	t.text :bio

      t.timestamps
    end
  end
end
