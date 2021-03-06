class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :festival_bases do |t|
      t.string :name, limit: 100, null: false
      t.string :imgSrc
      t.datetime :startDate, null: false
      t.datetime :endDate, null: false
      t.string :stage

      t.timestamps
    end

    create_table :days do |t|
      t.belongs_to :festival_base
      t.datetime :date

      t.timestamps
    end

    create_table :shows do |t|
      t.belongs_to :day
      t.string :performer, limit: 100
      t.string :time, limit: 6
      t.datetime :date

      t.timestamps
    end
  end
end
