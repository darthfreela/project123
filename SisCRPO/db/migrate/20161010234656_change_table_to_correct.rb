class ChangeTableToCorrect < ActiveRecord::Migration
  def change
    change_table :functions do |t|
      t.rename :manager_funcion_id, :manager_function_id
    end
  end
end
