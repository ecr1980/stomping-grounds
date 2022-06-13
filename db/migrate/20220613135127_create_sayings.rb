class CreateSayings < ActiveRecord::Migration[7.0]
  def change
    create_table :sayings do |t|

      t.timestamps
    end
  end
end
