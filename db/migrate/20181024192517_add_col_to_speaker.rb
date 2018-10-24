class AddColToSpeaker < ActiveRecord::Migration[5.2]
  def change
    add_column :speakers, :age, :integer
    add_column :speakers, :gender, :string
  end
end
