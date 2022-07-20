class CreateParticipations < ActiveRecord::Migration[7.0]
  def change
    create_table :participations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :code_retreat_session, null: false, foreign_key: true
      t.references :primary_technology, null: false, foreign_key: {to_table: :technologies}
      t.references :secondary_technology, null: true, foreign_key: {to_table: :technologies}

      t.timestamps
    end
  end
end
