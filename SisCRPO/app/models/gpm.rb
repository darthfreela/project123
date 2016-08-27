class Gpm < ActiveRecord::Base
    validates id, presence: true
    validates id_opm, presence: true
    validates sigla, presence: true, lenght: {minimum:3, maximum: 6}
    validates nome, presence: true, lenght: {maximum: 50}
    validates id_endereco, presence: true
    validates data_ultima_alteracao, presence: true
    validates ativo, presence: true
end
