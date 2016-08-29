class CreateSiglas < ActiveRecord::Migration
  def change
<<<<<<< HEAD

=======
    
>>>>>>> 660605ea3a4b9d436da860d99e7eb86fdf789be4
    create_table :siglas do |t|
      t.string :sigla
      t.string :nome

      t.timestamps null: false
    end
  end
end
