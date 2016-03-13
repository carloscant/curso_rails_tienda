class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|

      t.timestamps
    end
  end
end
