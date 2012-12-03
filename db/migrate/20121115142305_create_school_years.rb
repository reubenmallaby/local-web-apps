class CreateSchoolYears < ActiveRecord::Migration
  def change
    create_table :school_years do |t|
      t.integer :value
      t.integer :semestre, :default => 1

      t.timestamps
    end
  end
end
