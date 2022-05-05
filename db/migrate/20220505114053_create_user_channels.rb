class CreateUserChannels < ActiveRecord::Migration[6.1]
  def change
    create_table :user_channels do |t|
      t.references :user
      t.references :channel

      t.timestamps
    end
  end
end
