class AddTrailerToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :trailer, :string
  end
end
