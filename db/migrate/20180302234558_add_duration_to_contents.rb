class AddDurationToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :duration, :string
  end
end
