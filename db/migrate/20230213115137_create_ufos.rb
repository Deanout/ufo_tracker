class CreateUfos < ActiveRecord::Migration[7.0]
  def change
    create_table :ufos do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
