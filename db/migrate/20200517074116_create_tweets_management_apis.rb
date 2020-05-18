class CreateTweetsManagementApis < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets_management_apis do |t|
      t.string :description

      t.timestamps
    end
  end
end
