class AddDoiToManifestation < ActiveRecord::Migration[5.0]
  def change
    add_column :manifestations, :doi, :string
    add_index :manifestations, :doi
  end
end
