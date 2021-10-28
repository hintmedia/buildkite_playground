class CreateTables < ActiveRecord::Migration[6.1]
  def change
    %i[arms cats dogs legs muskrats posts rocks].each do |table|
      create_table table do |t|
        t.string :name
        t.text :description

        t.timestamps
      end
    end
  end
end
