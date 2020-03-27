class CreateFestivalBases < ActiveRecord::Migration[6.0]
  def change
    create_table :festival_bases do |t|
      t.string :name, limit: 100
      t.string :imgSrc, limit: 100
      t.string :startDate, limit: 20
      t.string :endDate, limit: 20

      t.timestamps
    end
  end
end

