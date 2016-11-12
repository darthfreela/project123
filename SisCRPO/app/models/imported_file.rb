class ImportedFile < ActiveRecord::Base
    has_many :imported_files_users
end
