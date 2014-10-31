class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    	t.string :title
    	t.string :start
    	t.string :end
    	t.references :client
    	t.references :professional

      t.timestamps
    end
  end
end
