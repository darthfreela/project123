class Gpm < ActiveRecord::Base

validates :sigla, :nome, :cidade, presence: true


end
