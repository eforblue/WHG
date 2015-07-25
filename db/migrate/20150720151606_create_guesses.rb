class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
        t.integer :height
        t.integer :weight_female_min
        t.integer :weight_male_min
        t.integer :weight_female_max
        t.integer :weight_male_max
        t.integer :scale_female_dominant, :defalut => 1000
        t.integer :scale_male_nondominant, :defalut => 0
        t.integer :scale_female_even, :defalut => 1000
        t.integer :scale_male_even, :defalut => 1000
        t.integer :scale_female_nondominant, :defalut => 0
        t.integer :scale_male_dominant, :defalut => 1000

      t.timestamps null: false
    end
  end
end
