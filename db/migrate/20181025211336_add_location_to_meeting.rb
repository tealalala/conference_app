class AddLocationToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :location, :boolean, default: false
  end
end
