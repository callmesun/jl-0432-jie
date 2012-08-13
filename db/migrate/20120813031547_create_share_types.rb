class CreateShareTypes < ActiveRecord::Migration
  def change
    create_table :share_types do |t|

      t.timestamps
    end
  end
end
