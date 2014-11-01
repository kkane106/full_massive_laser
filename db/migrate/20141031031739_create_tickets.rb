class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
    	t.references :user
    	t.references :professional
    	t.references :profession
      t.boolean :closed, default: false
    	t.string :title
    	t.text :body
    	t.string :hangout_url

      t.timestamps
    end
  end
end
