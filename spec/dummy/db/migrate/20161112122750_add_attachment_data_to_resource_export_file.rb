class AddAttachmentDataToResourceExportFile < ActiveRecord::Migration[5.0]
  def change
    add_column :resource_export_files, :attachment_data, :jsonb
  end
end
