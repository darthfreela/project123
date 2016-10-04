class CreateTrainees < ActiveRecord::Migration
  def change
    create_table :trainees do |t|
      t.string :name
      t.string :cpf
      t.string :gender
      t.date :birth
      t.integer :semester
      t.integer :city_id
      t.string :email
      t.string :bank_agency_wallet
      t.integer :worked_days
      t.integer :user_id_last_change
      t.integer :transport_voucher
      t.integer :contract_term
      t.integer :worked_hours
      t.string :neighborhood
      t.string :zip_code
      t.boolean :actived

      t.timestamps null: false
    end
  end
end
