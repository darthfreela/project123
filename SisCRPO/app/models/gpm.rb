class Gpm < ActiveRecord::Base
    validates :idOpm, presence: true
    validates :sigla, presence: true
    validates :nome, presence: true
    validates :cidade, presence: true
    validates :ativo, presence: true
end
