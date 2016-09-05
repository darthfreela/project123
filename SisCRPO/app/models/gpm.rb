class Gpm < ActiveRecord::Base
<<<<<<< HEAD

validates :sigla, :nome, :cidade, presence: true


=======
validates :sigla, :nome, :cidade, presence: true


    belongs_to :opm
    validates :opm_id, presence: true
    validates :sigla, presence: true
    validates :nome, presence: true
    validates :ativo, presence: true
>>>>>>> 48c060408b230fa27e3c9035a6aad272d7dc1787
end
