class ImportedFilesUser < ActiveRecord::Base
belongs_to :imported_files
validates :user_id, :id_func_temp, uniqueness: true
end
