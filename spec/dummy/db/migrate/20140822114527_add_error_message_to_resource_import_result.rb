class AddErrorMessageToResourceImportResult < ActiveRecord::Migration[5.0]
  def change
    add_column :resource_import_results, :error_message, :text
  end
end
