class AddShelfIdToCheckout < ActiveRecord::Migration[5.0]
  def change
    add_reference :checkouts, :shelf, foreign_key: true, null: false, type: :uuid
  end
end
