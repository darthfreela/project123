class Gpm < ActiveRecord::Base
    belongs_to :opm
    validates :sigla, presence: true
    validates :nome, presence: true
    validates :cidade, presence: true
    validates :ativo, presence: true
end
