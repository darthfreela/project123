class CreateImportNewsletters < ActiveRecord::Migration
  def change
    create_table :import_newsletters do |t|
      t.string :id_user
      t.string :nome
      t.string :posto

      t.timestamps null: false
    end
  end
end
