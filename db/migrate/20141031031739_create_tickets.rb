class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
    	t.references :user
    	t.references :proficiency
    	t.references :profession
    	t.string :hangout_url

      t.timestamps
    end
  end
end
