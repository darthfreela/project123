class Gpm < ActiveRecord::Base
validates :sigla, :nome, :cidade, presence: true


    belongs_to :opm
    validates :opm_id, presence: true
    validates :sigla, presence: true
    validates :nome, presence: true
    validates :ativo, presence: true
end
