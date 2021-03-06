class CreateUfDays < ActiveRecord::Migration[5.2]
  def change
    create_table :uf_days do |t|
      t.float :value

      t.timestamps
    end
  end
end
