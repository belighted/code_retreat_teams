class CreateCodeRetreatSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :code_retreat_sessions do |t|
      t.date :performed_on
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
