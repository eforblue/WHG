class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
        t.integer :height
        t.integer :weight_female_min
        t.integer :weight_male_min
        t.integer :weight_female_max
        t.integer :weight_male_max
        t.integer :scale_female_dominant, :default => 1000
        t.integer :scale_male_nondominant, :default => 0
        t.integer :scale_female_even, :default => 1000
        t.integer :scale_male_even, :default => 1000
        t.integer :scale_female_nondominant, :default => 0
        t.integer :scale_male_dominant, :default => 1000

      t.timestamps null: false
    end
  end
end
