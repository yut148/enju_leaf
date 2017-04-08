class AddUserIdToLibraryGroup < ActiveRecord::Migration[5.0]
  def change
    add_reference :library_groups, :user, index: true, foreign_key: true
  end
end
