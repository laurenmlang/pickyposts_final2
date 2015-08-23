class CreateAuthhashes < ActiveRecord::Migration
  def change
    create_table :authhashes do |t|
      t.string :provider

      t.timestamps

    end
  end
end
