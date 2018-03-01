class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :protocol
      t.boolean :drm_encripted
      t.string :username
      t.string :password
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
