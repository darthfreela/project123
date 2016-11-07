class ChangeColumnToTemporaryReplacements < ActiveRecord::Migration
  def change
    change_table :temporary_replacements do |t|
      t.rename :exemption_clearence_id, :solicitation_id
     end
  end
end
