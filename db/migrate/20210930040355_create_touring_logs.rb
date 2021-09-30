class CreateTouringLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :touring_logs do |t|
      
      t.string :name
      t.string :address
      t.string :phone
      t.string :access
      t.string :url
      t.string :image_uplord
      t.text :description
      t.string :created_at


      t.timestamps
    end
  end
end
