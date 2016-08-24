class Gpm < ActiveRecord::Base
    validates :id, presence: true
    validates :id_opm, presence: true
    validates :sigla, presence: true
    validates :nome, presence: true
    validates :id_endereco, presence: true
    validates :data_ultima_alteracao, presence: true
    validates :ativo, presence: true
end
