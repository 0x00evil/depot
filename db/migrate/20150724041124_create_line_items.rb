class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.reference :product
      t.belongs_to :cart, index: true

      t.timestamps
    end
  end
end
