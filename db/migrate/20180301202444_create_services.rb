class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name,         :limit=>100
      t.boolean :active,      :default=>true
      t.integer :service_type,:limit=>1
      t.string :logo,         :limit=>100

      t.timestamps
    end
  end
end
