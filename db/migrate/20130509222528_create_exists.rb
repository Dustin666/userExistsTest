class CreateExists < ActiveRecord::Migration
  def change
    create_table :exists do |t|

      t.timestamps
    end
  end
end
